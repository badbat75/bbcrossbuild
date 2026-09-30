#!/usr/bin/env bats
# data.bats: bbxb purge (data_purge of data.functions) over a data directory in the temporary
# directory of the test, with stubs of docker, findmnt and losetup: nothing of the host is removed,
# nothing talks to docker.
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2034,SC2154,SC2329

load test_helper

setup () {
	# shellcheck source=seterr
	source "${BB_HOME}/seterr"
	# shellcheck source=core.functions
	source "${BB_HOME}/core.functions"
	# shellcheck source=container.functions
	source "${BB_HOME}/container.functions"
	# shellcheck source=data.functions
	source "${BB_HOME}/data.functions"
	unset DOWNLOAD_DIR CACHE_DIR USERDATA_DIR
	DATA_PATH=${BATS_TEST_TMPDIR}/datadir
	### A data directory after builds of two projects: the downloads, the cache of sccache, the
	### global toolchain and its logs, lfs with its data, two platforms and its sources, moode
	### without data
	mkdir -p "${DATA_PATH}"/{downloads,cache/sccache,toolchain/bin,logs,sources,builds} \
		"${DATA_PATH}"/lfs/{data/pki,sources,rpi,rpi3-aarch64/binaries} "${DATA_PATH}"/moode/rpi
	touch "${DATA_PATH}/downloads/url2file.map" "${DATA_PATH}/lfs/data/pki/key.pem"
	### Nothing mounted, no build in a container
	MOUNTS=
	DOCKER_PS=
	function findmnt () {
		if [ -n "${MOUNTS}" ]
		then
			echo "${MOUNTS}"
		fi
	}
	function losetup () {
		:
	}
	function docker () {
		case "${1} ${2}" in
			"version "*)
				return 0
				;;
			"ps --format")
				if [ -n "${DOCKER_PS}" ]
				then
					printf '%s\n' "${DOCKER_PS}" | tr '|' $'\x1f'
				fi
				;;
		esac
	}
}

### left: what is left of the data directory, one relative path per line, sorted
function left () {
	(cd "${DATA_PATH}" && find . -mindepth 1 | sed 's|^\./||' | sort)
}

@test "purge without a project keeps the downloads, the sccache cache and the data of every project" {
	run data_purge --yes
	[ "${status}" -eq 0 ]
	run left
	assert_output_lines cache cache/sccache downloads downloads/url2file.map lfs lfs/data lfs/data/pki lfs/data/pki/key.pem
}

@test "purge of a project removes its platforms and sources, not its data nor the global toolchain" {
	run data_purge --yes lfs
	[ "${status}" -eq 0 ]
	[ -e "${DATA_PATH}/lfs/data/pki/key.pem" ]
	[ ! -e "${DATA_PATH}/lfs/rpi" ] && [ ! -e "${DATA_PATH}/lfs/rpi3-aarch64" ] && [ ! -e "${DATA_PATH}/lfs/sources" ]
	[ -d "${DATA_PATH}/toolchain/bin" ] && [ -d "${DATA_PATH}/moode/rpi" ]
}

@test "purge of a platform removes that platform only" {
	run data_purge --yes lfs rpi
	[ "${status}" -eq 0 ]
	[ ! -e "${DATA_PATH}/lfs/rpi" ]
	[ -d "${DATA_PATH}/lfs/rpi3-aarch64/binaries" ] && [ -d "${DATA_PATH}/lfs/sources" ] && [ -d "${DATA_PATH}/moode/rpi" ]
	run data_purge --yes lfs rpi
	[ "${status}" -eq 0 ]
	[ "${output}" == "Nothing to remove." ]
}

@test "purge refuses while an image is mounted there or a build runs, and without a confirmation" {
	local BEFORE
	BEFORE=$(left)
	MOUNTS="${DATA_PATH}/lfs/rpi3-aarch64/lfs"
	run data_purge --yes
	[ "${status}" -eq "${ERROR_GENERIC}" ]
	[[ ${output} == *"${DATA_PATH}/lfs/rpi3-aarch64/lfs"* ]]
	### A mount elsewhere is not in the way of a purge of the other platform
	run data_purge --yes lfs rpi
	[ "${status}" -eq 0 ]
	MOUNTS=
	DOCKER_PS="bbxb-lfs-rpi3-aarch64|bbcrossbuild-devel|lfs|rpi3-aarch64|2 hours ago"
	run data_purge --yes lfs rpi3-aarch64
	[ "${status}" -eq "${ERROR_GENERIC}" ]
	DOCKER_PS=
	run data_purge lfs rpi3-aarch64 < /dev/null
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[ -d "${DATA_PATH}/lfs/rpi3-aarch64/binaries" ]
	[ "$(left)" == "$(echo "${BEFORE}" | grep -v '^lfs/rpi$')" ]
}

@test "purge takes names, not paths, and at most a project and a platform" {
	run data_purge --yes ../other
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	run data_purge --yes lfs .
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	run data_purge --yes lfs rpi extra
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	DATA_PATH=/
	run data_purge --yes
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	DATA_PATH=${BATS_TEST_TMPDIR}/datadir
	[ -d "${DATA_PATH}/lfs/rpi" ] && [ -d "${DATA_PATH}/toolchain" ]
}
