#!/usr/bin/env bats
# emulator.bats: bbxb emulator cmdgen and run (emulator_cmdgen, emulator_run of emulator.functions)
# on a project directory in the temporary directory, with stubs of fdtoverlay, qemu and sudo:
# nothing is emulated. The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2034,SC2154,SC2329

load test_helper

setup () {
	# shellcheck source=seterr
	source "${BB_HOME}/seterr"
	# shellcheck source=core.functions
	source "${BB_HOME}/core.functions"
	# shellcheck source=emulator.functions
	source "${BB_HOME}/emulator.functions"
	unset WSL_DISTRO_NAME QEMU_EXE_PREFIX
	### A generic-aarch64 build of lfs: the image, the kernel of system_config
	PROJECT_NAME=lfs
	PLATFORM_NAME=generic-aarch64
	PLATFORM_PATH=${BATS_TEST_TMPDIR}/data/lfs/${PLATFORM_NAME}
	BIN_PATH=${PLATFORM_PATH}/binaries
	STATUS_PATH=${PLATFORM_PATH}/status
	GLOBAL_TOOLCHAIN_PATH=${BATS_TEST_TMPDIR}/data/toolchain
	HM=aarch64
	KERNEL_VER=0.0
	KERNEL_NAME=
	QEMU_MACHINE=virt
	QEMU_CPU=cortex-a53
	QEMU_SMP=2
	QEMU_RAM=2048
	QEMU_STORAGE=virtio-blk-pci
	QEMU_NETWORK=virtio-net-pci
	QEMU_GRAPHIC=
	QEMU_INPUT=
	QEMU_CONSOLE=ttyAMA0
	QEMU_DTB=
	QEMU_DTBO=
	QEMU_OTHERDEVICES=virtio-rng-pci
	QEMU_KERNCONFIG=net.ifnames=0
	put "${PLATFORM_PATH}/lfs.img"
	put "${STATUS_PATH}/system_config" "KERNEL_VER=6.12.1
KERNEL_RELEASE=6.12.1-v8"
}

@test "the linux command line names the image, the kernel of system_config and the root" {
	emulator_cmdline linux "" "" ""
	assert_equal "${EMULATOR_CMDLINE}" "\"\${QEMU_EXE_PREFIX}qemu-system-aarch64\" -machine virt -cpu cortex-a53 -smp 2 -m 2048 -device virtio-blk-pci,drive=disk0 -drive file=\"\${SYSTEM_PREFIX}${PLATFORM_PATH}/lfs.img\",if=none,format=raw,id=disk0 -device virtio-net-pci,netdev=eth0 -netdev user,id=eth0,hostfwd=tcp::5022-:22 -nographic  -device virtio-rng-pci -kernel \"\${SYSTEM_PREFIX}${BIN_PATH}/boot/vmlinuz-6.12.1-v8\" -initrd \"\${SYSTEM_PREFIX}${BIN_PATH}/boot/initramfs-6.12.1-v8.img\" -append \"console=ttyAMA0 root=/dev/vda2 rootfstype=ext4 rootwait cgroup_enable=memory systemd.gpt_auto=no net.ifnames=0\""
	assert_equal "${EMULATOR_KERNEL_VER}" 6.12.1
	### The KERNEL_VER of the build stays
	assert_equal "${KERNEL_VER}" 0.0
}

@test "QEMU_GRAPHIC: a device with the console also on tty1, machine the display of the machine, none -nographic" {
	QEMU_GRAPHIC=virtio-gpu-pci
	emulator_cmdline linux "" "" ""
	[[ ${EMULATOR_CMDLINE} == *" -vga none -device virtio-gpu-pci "* ]]
	[[ ${EMULATOR_CMDLINE} == *'-append "console=ttyAMA0 console=tty1 root='* ]]
	QEMU_GRAPHIC=machine
	emulator_cmdline linux "" "" ""
	[[ ${EMULATOR_CMDLINE} != *"-nographic"* && ${EMULATOR_CMDLINE} != *"-vga"* && ${EMULATOR_CMDLINE} != *"-device machine"* ]]
	[[ ${EMULATOR_CMDLINE} == *'-append "console=ttyAMA0 console=tty1 root='* ]]
}

@test "the root is the device given, or the partition given of the disk of QEMU_STORAGE" {
	emulator_cmdline linux PARTUUID=1234-02 btrfs ""
	[[ ${EMULATOR_CMDLINE} == *'-append "console=ttyAMA0 root=PARTUUID=1234-02 rootfstype=btrfs rootwait '* ]]
	QEMU_STORAGE=sd-card
	emulator_cmdline linux "" "" 3
	[[ ${EMULATOR_CMDLINE} == *" root=/dev/mmcblk0p3 rootfstype=ext4 "* ]]
}

### image_table <label> <partitions>: a partition table on the image, written by sfdisk on the file;
### blkid answers TYPE=<fs> for the partition that starts at sector 4096 (the root of the tables
### below), nothing elsewhere
function image_table () {
	truncate -s 8M "${PLATFORM_PATH}/lfs.img"
	printf '%s\n' "${@}" | sfdisk -q "${PLATFORM_PATH}/lfs.img"
	function blkid () {
		if [[ " ${*} " == *" --offset $((4096 * 512)) "* ]]
		then
			echo "TYPE=${BLKID_TYPE}"
		fi
	}
}

@test "the root of an MBR image is the PARTUUID and the file system of its partition 2" {
	image_table "label: dos" "label-id: 0xEB4AE0EE" "start=2048, size=2048, type=c" "start=4096, type=83"
	BLKID_TYPE=btrfs
	run emulator_image_root "${PLATFORM_PATH}/lfs.img" 2
	assert_equal "${output}" "PARTUUID=eb4ae0ee-02|btrfs"
	emulator_cmdline linux "" "" ""
	[[ ${EMULATOR_CMDLINE} == *" root=PARTUUID=eb4ae0ee-02 rootfstype=btrfs rootwait "* ]]
	### What the command line gives wins, the rest still comes from the image
	emulator_cmdline linux /dev/vda2 "" ""
	[[ ${EMULATOR_CMDLINE} == *" root=/dev/vda2 rootfstype=btrfs rootwait "* ]]
	emulator_cmdline linux "" xfs ""
	[[ ${EMULATOR_CMDLINE} == *" root=PARTUUID=eb4ae0ee-02 rootfstype=xfs rootwait "* ]]
}

@test "the root of a GPT image is the uuid of the partition, --rootpart chooses it" {
	image_table "label: gpt" "start=2048, size=2048, uuid=0A1B2C3D-0000-4000-8000-000000000001" \
		"start=4096, size=4096, uuid=0A1B2C3D-0000-4000-8000-00000000000A" "start=8192"
	BLKID_TYPE=ext4
	emulator_cmdline linux "" "" ""
	[[ ${EMULATOR_CMDLINE} == *" root=PARTUUID=0a1b2c3d-0000-4000-8000-00000000000a rootfstype=ext4 rootwait "* ]]
	### Partition 1: its uuid, no file system blkid knows there, ext4
	BLKID_TYPE=vfat
	emulator_cmdline linux "" "" 1
	[[ ${EMULATOR_CMDLINE} == *" root=PARTUUID=0a1b2c3d-0000-4000-8000-000000000001 rootfstype=ext4 rootwait "* ]]
	### No partition 5: the device of QEMU_STORAGE
	run emulator_image_root "${PLATFORM_PATH}/lfs.img" 5
	assert_equal "${output}" "|"
	emulator_cmdline linux "" "" 5
	[[ ${EMULATOR_CMDLINE} == *" root=/dev/vda5 rootfstype=ext4 rootwait "* ]]
}

@test "an image with an EFI system partition boots with OVMF, --firmware chooses" {
	HM=x86_64
	QEMU_MACHINE=q35
	image_table "label: dos" "start=2048, size=2048, type=ef" "start=4096, type=83"
	run emulator_image_firmware "${PLATFORM_PATH}/lfs.img"
	assert_equal "${output}" efi
	emulator_cmdline linux "" "" ""
	assert_equal "${EMULATOR_FIRMWARE}" efi
	assert_equal "${EMULATOR_EFIVARS}" "${PLATFORM_PATH}/lfs.efivars.fd"
	# shellcheck disable=SC2016 # the variables the script sets
	[[ ${EMULATOR_CMDLINE} == *' -m 2048 -drive if=pflash,format=raw,unit=0,readonly=on,file="${OVMF_CODE}" -drive if=pflash,format=raw,unit=1,file="${EFIVARS}" -device virtio-blk-pci,'* ]]
	### The boot loader of the image chooses the kernel and the root
	[[ ${EMULATOR_CMDLINE} != *" -kernel "* ]]
	[[ ${EMULATOR_CMDLINE} != *" -append "* ]]
	emulator_cmdline linux "" "" "" bios
	[[ ${EMULATOR_CMDLINE} != *"pflash"* ]]
	[[ ${EMULATOR_CMDLINE} == *" -kernel "* ]]
	### GPT: the type of the EFI system partition; a FAT partition is not one
	image_table "label: gpt" "start=2048, size=2048, type=C12A7328-F81F-11D2-BA4B-00A0C93EC93B" "start=4096"
	run emulator_image_firmware "${PLATFORM_PATH}/lfs.img"
	assert_equal "${output}" efi
	image_table "label: dos" "start=2048, size=2048, type=c" "start=4096, type=83"
	run emulator_image_firmware "${PLATFORM_PATH}/lfs.img"
	assert_equal "${output}" bios
	run emulator_cmdline linux "" "" "" uboot
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"Unknown firmware uboot"* ]]
	### The UEFI firmware of the ARM machines (AAVMF), none for another one
	HM=aarch64
	QEMU_MACHINE=virt
	emulator_cmdline linux "" "" "" efi
	# shellcheck disable=SC2016 # the variables the script sets
	[[ ${EMULATOR_CMDLINE} == *' -drive if=pflash,format=raw,unit=0,readonly=on,file="${OVMF_CODE}" '* ]]
	[[ $(emulator_efi_pairs) == /usr/share/edk2/aarch64/QEMU_EFI-pflash.raw:* ]]
	HM=arm
	[[ $(emulator_efi_pairs) == *" /usr/share/qemu/edk2-arm-code.fd:/usr/share/qemu/edk2-arm-vars.fd" ]]
	HM=riscv64
	run emulator_cmdline linux "" "" "" efi
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"No UEFI firmware for riscv64"* ]]
}

@test "the efi scripts find OVMF and copy the variables of the image the first time" {
	HM=x86_64
	WSL_DISTRO_NAME=Fedora
	run emulator_cmdgen --quiet --batchtype all --firmware efi
	[ "${status}" -eq 0 ]
	### linux: the OVMF of the environment, the variables copied next to the image, then QEMU
	put "${BATS_TEST_TMPDIR}/ovmf/code.fd" code
	put "${BATS_TEST_TMPDIR}/ovmf/vars.fd" vars
	put "${BATS_TEST_TMPDIR}/qemu/qemu-system-x86_64" "#!/bin/sh
printf '%s\\n' \"\${@}\" > \"${BATS_TEST_TMPDIR}/qemu.args\""
	chmod +x "${BATS_TEST_TMPDIR}/qemu/qemu-system-x86_64"
	OVMF_CODE=${BATS_TEST_TMPDIR}/ovmf/code.fd OVMF_VARS=${BATS_TEST_TMPDIR}/ovmf/vars.fd \
		QEMU_EXE_PREFIX=${BATS_TEST_TMPDIR}/qemu/ SYSTEM_PREFIX='' sh "${PLATFORM_PATH}/lfs.qemu"
	assert_equal "$(cat "${PLATFORM_PATH}/lfs.efivars.fd")" vars
	grep -qx "if=pflash,format=raw,unit=0,readonly=on,file=${BATS_TEST_TMPDIR}/ovmf/code.fd" "${BATS_TEST_TMPDIR}/qemu.args"
	grep -qx "if=pflash,format=raw,unit=1,file=${PLATFORM_PATH}/lfs.efivars.fd" "${BATS_TEST_TMPDIR}/qemu.args"
	### No OVMF: the script stops before QEMU
	rm "${BATS_TEST_TMPDIR}/qemu.args"
	EMULATOR_OVMF_PAIRS=/nonexistent/code.fd:/nonexistent/vars.fd emulator_cmdgen --quiet --firmware efi --savecmd "${BATS_TEST_TMPDIR}/none.sh"
	run env -u OVMF_CODE -u OVMF_VARS QEMU_EXE_PREFIX="${BATS_TEST_TMPDIR}/qemu/" sh "${BATS_TEST_TMPDIR}/none.sh"
	[ "${status}" -eq 1 ]
	[[ ${output} == "No UEFI firmware for x86_64: "* ]]
	[ ! -f "${BATS_TEST_TMPDIR}/qemu.args" ]
	### win: the firmware of the QEMU installer, the variables next to the snapshot, both deleted
	grep -qxF $'if not defined OVMF_CODE set "OVMF_CODE=%QEMU_EXE_PREFIX%share\\edk2-x86_64-code.fd"\r' "${PLATFORM_PATH}/lfs.qemu.bat"
	grep -q '^set EFIVARS=%SystemRoot%\\TEMP\\lfs-generic-aarch64-[0-9]*\.efivars\.fd'$'\r$' "${PLATFORM_PATH}/lfs.qemu.bat"
	grep -q '^"%QEMU_EXE_PREFIX%qemu-system-x86_64.exe" .* -drive if=pflash,format=raw,unit=1,file="%EFIVARS%" ' "${PLATFORM_PATH}/lfs.qemu.bat"
	grep -qx $'powershell -NoProfile -Command "Remove-Item -LiteralPath $env:SNAPSHOT, $env:EFIVARS"\r' "${PLATFORM_PATH}/lfs.qemu.bat"
	### The firmware of the installer for the machine of the platform
	HM=aarch64
	emulator_cmdgen --quiet --batchtype win --firmware efi --savecmd "${BATS_TEST_TMPDIR}/arm64"
	grep -qxF $'if not defined OVMF_CODE set "OVMF_CODE=%QEMU_EXE_PREFIX%share\\edk2-aarch64-code.fd"\r' "${BATS_TEST_TMPDIR}/arm64.bat"
	grep -qxF $'if not defined OVMF_VARS set "OVMF_VARS=%QEMU_EXE_PREFIX%share\\edk2-arm-vars.fd"\r' "${BATS_TEST_TMPDIR}/arm64.bat"
}

@test "run with efi takes OVMF of the host and makes the variables of the image" {
	HM=x86_64
	QEMU_MACHINE=q35
	QEMU_EXE_PREFIX=${BATS_TEST_TMPDIR}/qemu/
	put "${QEMU_EXE_PREFIX}qemu-system-x86_64" "#!/bin/sh
case \"\${1}\" in
	--version) echo 'QEMU emulator version 10.1.0' ;;
	-machine) printf '%s\\n' 'Supported machines are:' 'q35                  Standard PC (Q35 + ICH9, 2009) (alias of pc-q35-10.1)' ;;
esac"
	chmod +x "${QEMU_EXE_PREFIX}qemu-system-x86_64"
	put "${BATS_TEST_TMPDIR}/ovmf/OVMF_CODE.fd" code
	put "${BATS_TEST_TMPDIR}/ovmf/OVMF_VARS.fd" vars
	EMULATOR_OVMF_PAIRS="/nonexistent/code.fd:/nonexistent/vars.fd ${BATS_TEST_TMPDIR}/ovmf/OVMF_CODE.fd:${BATS_TEST_TMPDIR}/ovmf/OVMF_VARS.fd"
	function sudo () {
		printf '%s\n' "${@}" > "${BATS_TEST_TMPDIR}/sudo.args"
	}
	run emulator_run --firmware efi
	[ "${status}" -eq 0 ]
	assert_equal "$(cat "${PLATFORM_PATH}/lfs.efivars.fd")" vars
	grep -qx "if=pflash,format=raw,unit=0,readonly=on,file=${BATS_TEST_TMPDIR}/ovmf/OVMF_CODE.fd" "${BATS_TEST_TMPDIR}/sudo.args"
	grep -qx "if=pflash,format=raw,unit=1,file=${PLATFORM_PATH}/lfs.efivars.fd" "${BATS_TEST_TMPDIR}/sudo.args"
	### The variables of the image stay from one run to the next
	echo changed > "${PLATFORM_PATH}/lfs.efivars.fd"
	run emulator_run --firmware efi
	[ "${status}" -eq 0 ]
	assert_equal "$(cat "${PLATFORM_PATH}/lfs.efivars.fd")" changed
	EMULATOR_OVMF_PAIRS=/nonexistent/code.fd:/nonexistent/vars.fd
	run emulator_run --firmware efi
	[ "${status}" -eq "${ERROR_FILE_NOT_FOUND}" ]
	[[ ${output} == *"No UEFI firmware for x86_64: "* ]]
}

@test "the win command line runs on the snapshot, with the paths of WSL" {
	WSL_DISTRO_NAME=Fedora
	### KERNEL_NAME is the copy the firmware of a board reads: QEMU loads vmlinuz-<release>
	KERNEL_NAME=kernel8.img
	emulator_cmdline win "" "" ""
	[[ ${EMULATOR_CMDLINE} == '"%QEMU_EXE_PREFIX%qemu-system-aarch64.exe" '* ]]
	[[ ${EMULATOR_CMDLINE} == *' -drive file="%SNAPSHOT%",if=none,format=qcow2,id=disk0 '* ]]
	[[ ${EMULATOR_CMDLINE} == *" -kernel \"\\\\wsl\$\\Fedora${BIN_PATH//\//\\}\\boot\\vmlinuz-6.12.1-v8\" "* ]]
	[[ ${EMULATOR_SNAPSHOT} == "%SystemRoot%\\TEMP\\lfs-generic-aarch64-"+([0-9])".qcow2" ]]
	unset WSL_DISTRO_NAME
	emulator_cmdline win "" "" ""
	[[ ${EMULATOR_CMDLINE} == *" -initrd \"%SYSTEM_PREFIX%${BIN_PATH//\//\\}\\boot\\initramfs-6.12.1-v8.img\" "* ]]
}

@test "the overlays of QEMU_DTBO, next to QEMU_DTB, go into <project>.dtb with the fdtoverlay of the global toolchain" {
	put "${GLOBAL_TOOLCHAIN_PATH}/bin/fdtoverlay" "#!/bin/sh
echo \"\${*}\" > \"${BATS_TEST_TMPDIR}/fdtoverlay.args\""
	chmod +x "${GLOBAL_TOOLCHAIN_PATH}/bin/fdtoverlay"
	QEMU_DTB=firmware/bcm2710-rpi-3-b.dtb
	QEMU_DTBO="disable-bt miniuart-bt"
	emulator_cmdline linux "" "" ""
	[[ ${EMULATOR_CMDLINE} == *" -dtb \"\${SYSTEM_PREFIX}${PLATFORM_PATH}/lfs.dtb\" "* ]]
	assert_equal "$(cat "${BATS_TEST_TMPDIR}/fdtoverlay.args")" "-i ${BIN_PATH}/boot/firmware/bcm2710-rpi-3-b.dtb -o ${PLATFORM_PATH}/lfs.dtb ${BIN_PATH}/boot/firmware/overlays/disable-bt.dtbo ${BIN_PATH}/boot/firmware/overlays/miniuart-bt.dtbo"
	QEMU_DTBO=
	emulator_cmdline linux "" "" ""
	[[ ${EMULATOR_CMDLINE} == *" -dtb \"\${SYSTEM_PREFIX}${BIN_PATH}/boot/firmware/bcm2710-rpi-3-b.dtb\" "* ]]
}

@test "a platform without QEMU settings, a project without image or kernel fail" {
	run emulator_cmdgen
	[ "${status}" -eq 0 ]
	rm "${STATUS_PATH}/system_config"
	run emulator_cmdgen
	[ "${status}" -eq "${ERROR_FILE_NOT_FOUND}" ]
	[[ ${output} == *"system_config does not exist"* ]]
	rm "${PLATFORM_PATH}/lfs.img"
	run emulator_cmdgen
	[ "${status}" -eq "${ERROR_FILE_NOT_FOUND}" ]
	[[ ${output} == *"has no image"* ]]
	QEMU_STORAGE=
	run emulator_cmdgen
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"has no QEMU settings"* ]]
	run emulator_cmdgen --batchtype dos
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"Unknown batch type dos"* ]]
}

@test "cmdgen prints the command line, --savecmd writes the script" {
	run emulator_cmdgen --rootpart 1
	[ "${status}" -eq 0 ]
	[ "${#lines[@]}" -eq 1 ]
	[[ ${output} == *" root=/dev/vda1 "* ]]
	run emulator_cmdgen --quiet --savecmd "${BATS_TEST_TMPDIR}/run.sh"
	[ "${status}" -eq 0 ]
	assert_output_lines
	[ -x "${BATS_TEST_TMPDIR}/run.sh" ]
	assert_equal "$(sed -n 1p "${BATS_TEST_TMPDIR}/run.sh")" "#!/bin/sh"
	assert_equal "$(sed -n 3p "${BATS_TEST_TMPDIR}/run.sh")" "KERNEL_VER=6.12.1"
	[[ $(sed -n 5p "${BATS_TEST_TMPDIR}/run.sh") == "\"\${QEMU_EXE_PREFIX}qemu-system-aarch64\" -machine virt "* ]]
}

@test "cmdgen --batchtype all writes <project>.qemu and <project>.qemu.bat next to the image" {
	WSL_DISTRO_NAME=Fedora
	run emulator_cmdgen --quiet --batchtype all
	[ "${status}" -eq 0 ]
	[ -x "${PLATFORM_PATH}/lfs.qemu" ]
	[ -f "${PLATFORM_PATH}/lfs.qemu.bat" ]
	### The batch has the line ends of cmd
	[ "$(grep -c $'\r$' "${PLATFORM_PATH}/lfs.qemu.bat")" -eq "$(wc -l < "${PLATFORM_PATH}/lfs.qemu.bat")" ]
	grep -qx $'set KERNEL_VER=6.12.1\r' "${PLATFORM_PATH}/lfs.qemu.bat"
	grep -qx "set IMAGE=\\\\\\\\wsl\\\$\\\\Fedora${PLATFORM_PATH//\//\\\\}\\\\lfs.img"$'\r' "${PLATFORM_PATH}/lfs.qemu.bat"
	grep -q '^"%QEMU_EXE_PREFIX%qemu-system-aarch64.exe" ' "${PLATFORM_PATH}/lfs.qemu.bat"
}

@test "run checks QEMU and runs the command line with sudo, the kernel of system_config in it" {
	QEMU_EXE_PREFIX=${BATS_TEST_TMPDIR}/qemu/
	KERNEL_NAME=kernel8.img
	put "${QEMU_EXE_PREFIX}qemu-system-aarch64" "#!/bin/sh
case \"\${1}\" in
	--version) echo 'QEMU emulator version 10.1.0' ;;
	-machine) printf '%s\\n' 'Supported machines are:' 'virt                 QEMU 10.1 ARM Virtual Machine (alias of virt-10.1)' ;;
esac"
	chmod +x "${QEMU_EXE_PREFIX}qemu-system-aarch64"
	function sudo () {
		printf '%s\n' "${@}" > "${BATS_TEST_TMPDIR}/sudo.args"
	}
	run emulator_run --rootdev PARTUUID=1234-02
	[ "${status}" -eq 0 ]
	assert_equal "$(sed -n 1p "${BATS_TEST_TMPDIR}/sudo.args")" "${QEMU_EXE_PREFIX}qemu-system-aarch64"
	grep -qx "file=${PLATFORM_PATH}/lfs.img,if=none,format=raw,id=disk0" "${BATS_TEST_TMPDIR}/sudo.args"
	grep -qx "${BIN_PATH}/boot/vmlinuz-6.12.1-v8" "${BATS_TEST_TMPDIR}/sudo.args"
	grep -qx "console=ttyAMA0 root=PARTUUID=1234-02 rootfstype=ext4 rootwait cgroup_enable=memory systemd.gpt_auto=no net.ifnames=0" "${BATS_TEST_TMPDIR}/sudo.args"
	QEMU_MACHINE=raspi3b
	run emulator_run
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"QEMU 10.1.0 does not support the machine raspi3b"* ]]
	run emulator_run --quiet
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"Unrecognized option: --quiet"* ]]
}

@test "bbxb emulator without a command, a project or a platform prints the help, an unknown command fails" {
	run "${BB_HOME}/bbxb" emulator
	[ "${status}" -eq 0 ]
	[[ ${lines[0]} == "Usage: bbxb "* ]]
	[[ ${output} == *"emulator run "* ]]
	run "${BB_HOME}/bbxb" emulator cmdgen
	[ "${status}" -eq 0 ]
	[[ ${lines[0]} == "Usage: bbxb "* ]]
	run "${BB_HOME}/bbxb" emulator boot lfs generic-x64
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"Unknown emulator command boot"* ]]
	run "${BB_HOME}/bbxb" emulator run lfs
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"No platform name specified"* ]]
	run "${BB_HOME}/bbxb" emulator run --savecmd x lfs generic-x64
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"Unrecognized option: --savecmd"* ]]
}
