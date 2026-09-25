#!/usr/bin/env bats
# images.bats: bbxb mount, umount and mount list (image_mount, image_umount, image_mount_list of
# images.functions) over stubs of losetup, lsblk, findmnt and sudo: nothing is attached or mounted.
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2032,SC2034,SC2154,SC2329

load test_helper

setup () {
	# shellcheck source=seterr
	source "${BB_HOME}/seterr"
	# shellcheck source=core.functions
	source "${BB_HOME}/core.functions"
	# shellcheck source=images.functions
	source "${BB_HOME}/images.functions"
}

### loop_stub: two images attached, as losetup and lsblk see them. /dev/loop0 holds a system
### mounted on /data/lfs.mnt (its boot partition on /data/lfs.mnt/boot, lsblk -r writes the
### blank of a path as \x20), /dev/loop1 an image without one, read-only, on /data/vendor.mnt/p1
### and p2, /dev/loop2 an image attached and not mounted. sudo records the commands in
### ${BATS_TEST_TMPDIR}/sudo.calls instead of running them.
function loop_stub () {
	SUDO_CALLS=${BATS_TEST_TMPDIR}/sudo.calls
	: > "${SUDO_CALLS}"
	function losetup () {
		case "${*}" in
			"-l -n --raw -O NAME,RO,BACK-FILE")
				printf '%s\n' "/dev/loop0 0 /data/lfs.img" "/dev/loop1 1 /data/my\x20vendor.img" "/dev/loop2 0 /data/spare.img"
				;;
			"-nO NAME -j /data/lfs.img")
				echo /dev/loop0
				;;
		esac
	}
	function lsblk () {
		case "${*}" in
			"-rno MOUNTPOINT /dev/loop0")
				printf '%s\n' "" "/data/lfs.mnt/boot" "/data/lfs.mnt"
				;;
			"-rno MOUNTPOINT /dev/loop1")
				printf '%s\n' "" "/data/vendor.mnt/p1" "/data/vendor.mnt/p2"
				;;
			"-rno MOUNTPOINT /dev/loop2")
				echo ""
				;;
			"-ndo PKNAME /dev/loop0p"*)
				echo loop0
				;;
		esac
	}
	function findmnt () {
		printf '%s\n' "/dev/sda1 /" "/dev/loop0p2 /data/lfs.mnt" "/dev/loop0p1 /data/lfs.mnt/boot"
	}
	function sudo () {
		echo "${*}" >> "${SUDO_CALLS}"
	}
	function realpath () {
		echo "${@: -1}"
	}
}

@test "the directory of an image is next to it, .img replaced by .mnt" {
	assert_equal "$(image_mount_dir /data/lfs/rpi3-aarch64/lfs.img)" "/data/lfs/rpi3-aarch64/lfs.mnt"
	assert_equal "$(image_mount_dir /data/vendor.raw)" "/data/vendor.raw.mnt"
}

@test "image_fstab_mounts gives the partitions of the fstab other than the root, in its order" {
	put "${BATS_TEST_TMPDIR}/fstab" "# /etc/fstab
proc                 /proc proc defaults 0 0
PARTUUID=12345678-02 /     ext4 defaults 0 1
PARTUUID=12345678-01 /boot vfat defaults 0 2
LABEL=data           /srv/data   ext4 defaults 0 2
UUID=0a1b-2c3d       none  swap sw 0 0
/dev/mmcblk0p3       /mnt  ext4 defaults 0 2
tmpfs                /tmp  tmpfs defaults 0 0"
	run image_fstab_mounts "${BATS_TEST_TMPDIR}/fstab"
	assert_output_lines "PARTUUID=12345678-01 /boot" "LABEL=data /srv/data"
}

@test "mount list shows every image attached, where its root is and whether it is read-only" {
	loop_stub
	run image_mount_list
	[ "${status}" -eq 0 ]
	assert_output_lines \
		"IMAGE                LOOP        DIRECTORY         MODE" \
		"/data/lfs.img        /dev/loop0  /data/lfs.mnt     rw" \
		"/data/my vendor.img  /dev/loop1  /data/vendor.mnt  ro" \
		"/data/spare.img      /dev/loop2  (not mounted)     rw"
}

@test "mount list says when no image is attached" {
	function losetup () {
		return 0
	}
	run image_mount_list
	assert_output_lines "No image is mounted."
}

@test "image_umount unmounts the deepest mount point first, then detaches the loop device" {
	loop_stub
	mkdir -p "${BATS_TEST_TMPDIR}/data"
	touch "${BATS_TEST_TMPDIR}/data/lfs.img"
	function realpath () {
		echo /data/lfs.img
	}
	run image_umount "${BATS_TEST_TMPDIR}/data/lfs.img"
	[ "${status}" -eq 0 ]
	assert_equal "$(cat "${SUDO_CALLS}")" 'umount /data/lfs.mnt/boot
umount /data/lfs.mnt
losetup -d /dev/loop0'
}

@test "image_umount of a directory finds the image mounted in it, and refuses one with none" {
	loop_stub
	unset -f realpath
	local DIR=${BATS_TEST_TMPDIR}/lfs.mnt
	mkdir -p "${DIR}" "${BATS_TEST_TMPDIR}/other"
	function findmnt () {
		printf '%s\n' "/dev/sda1 /" "/dev/loop0p2 ${DIR}" "/dev/loop0p1 ${DIR}/boot" "/dev/loop3p1 ${DIR}2"
	}
	run image_umount "${DIR}"
	[ "${status}" -eq 0 ]
	grep -qxF "losetup -d /dev/loop0" "${SUDO_CALLS}"
	run ! grep -q "loop3" "${SUDO_CALLS}"
	: > "${SUDO_CALLS}"
	run image_umount "${BATS_TEST_TMPDIR}/other"
	[ "${status}" -eq "${ERROR_GENERIC}" ]
	[ ! -s "${SUDO_CALLS}" ]
}

@test "image_mount refuses a missing image and one already attached, touching nothing" {
	loop_stub
	run image_mount "${BATS_TEST_TMPDIR}/none.img"
	[ "${status}" -eq "${ERROR_FILE_NOT_FOUND}" ]
	mkdir -p "${BATS_TEST_TMPDIR}/data"
	touch "${BATS_TEST_TMPDIR}/data/lfs.img"
	function realpath () {
		case "${1}" in
			-m)
				echo /data/lfs.mnt
				;;
			*)
				echo /data/lfs.img
				;;
		esac
	}
	run image_mount "${BATS_TEST_TMPDIR}/data/lfs.img"
	[ "${status}" -eq "${ERROR_GENERIC}" ]
	[[ ${output} == *"already attached to /dev/loop0"* ]]
	[ ! -s "${SUDO_CALLS}" ]
}
