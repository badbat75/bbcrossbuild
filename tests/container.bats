#!/usr/bin/env bats
# container.bats: the pure logic of container.functions (the name of the image, the variables of
# the environment that travel to the container) and the commands of "bbxb container" over a docker
# stub (docker_stub). Nothing here talks to docker.
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154,SC2329

load test_helper

### No load_framework here: it sources setenv, which exports paths of its own, and what the
### environment carried before that is exactly what these tests are about
setup () {
	# shellcheck source=seterr
	source "${BB_HOME}/seterr"
	# shellcheck source=core.functions
	source "${BB_HOME}/core.functions"
	# shellcheck source=container.functions
	source "${BB_HOME}/container.functions"
}

@test "the image is named after the branch of the checkout" {
	container_name
	[[ ${CONTAINER_NAME} == bbcrossbuild-* ]]
}

@test "container_name keeps a name already set" {
	CONTAINER_NAME=bbcrossbuild-fixture
	container_name
	assert_equal "${CONTAINER_NAME}" "bbcrossbuild-fixture"
}

@test "container_env_names passes the framework overrides of the environment and nothing else" {
	### The order of bbxb: container.functions remembers the environment, then the platform file
	### and setenv are sourced, and they export paths of their own that are no overrides
	run bash -c 'export TOOLCHAIN=llvm PRJ_PATH=/fixture/projects HMCPU=fixture-cpu
		export DATA_PATH=/fixture/data SESSION_TOKEN=secret
		source "${BB_HOME}/core.functions"
		source "${BB_HOME}/container.functions"
		PLATFORM="${BB_HOME}/platforms/generic-x64.conf"
		source "${PLATFORM}"
		source "${BB_HOME}/setenv"
		container_env_names'
	assert_output_lines HMCPU PRJ_PATH TOOLCHAIN
}

@test "container_env_names leaves out a variable the environment did not carry" {
	run bash -c 'source "${BB_HOME}/core.functions"
		source "${BB_HOME}/container.functions"
		export TOOLCHAIN=llvm
		container_env_names'
	assert_output_lines
}

### docker_stub: a docker function in place of the real one. It records every call in
### ${BATS_TEST_TMPDIR}/docker.calls and answers from variables: DOCKER_PS the lines of docker ps
### (<name>|<image>|<project>|<platform>|<running for>, | standing for the separator of
### container_running), DOCKER_PS_Q the ids of docker ps -q/-aq, DOCKER_IMAGES the lines of docker
### image ls (<image>|<id>|<created>|<size>), DOCKER_IMAGE_ID the id of docker image inspect (none:
### no such image)
function docker_stub () {
	DOCKER_CALLS=${BATS_TEST_TMPDIR}/docker.calls
	: > "${DOCKER_CALLS}"
	function docker () {
		echo "docker ${*}" >> "${DOCKER_CALLS}"
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
			"ps "*)
				if [ -n "${DOCKER_PS_Q}" ]
				then
					echo "${DOCKER_PS_Q}"
				fi
				;;
			"image ls")
				if [ -n "${DOCKER_IMAGES}" ]
				then
					printf '%s\n' "${DOCKER_IMAGES}" | tr '|' '\t'
				fi
				;;
			"image inspect")
				[ -n "${DOCKER_IMAGE_ID}" ] && echo "${DOCKER_IMAGE_ID}"
				;;
		esac
	}
}

@test "container_running lists the builds in a container of bbxb, labelled or started before the labels" {
	docker_stub
	DOCKER_PS="bbxb-lfs-rpi3-aarch64|bbcrossbuild-devel|lfs|rpi3-aarch64|2 hours ago
recursing_shtern|bbcrossbuild-devel|||30 minutes ago
bbxb-moode-rpi|3f2a1b|moode|rpi|5 minutes ago
postgres|postgres:16|||3 days ago"
	run container_running
	assert_output_lines \
		"bbxb-lfs-rpi3-aarch64	bbcrossbuild-devel	lfs	rpi3-aarch64	2 hours ago" \
		"recursing_shtern	bbcrossbuild-devel	-	-	30 minutes ago" \
		"bbxb-moode-rpi	3f2a1b	moode	rpi	5 minutes ago"
}

@test "container_is_image knows the images of bbxb, local and tagged for a registry" {
	container_is_image bbcrossbuild-devel
	container_is_image bbcrossbuild-devel:latest
	container_is_image ghcr.io/badbat75/bbcrossbuild-latest:latest
	run ! container_is_image ubuntu:24.04
	run ! container_is_image bbcrossbuild-devel/other
	run ! container_is_image my-bbcrossbuild-devel
}

@test "container_stop interrupts every process of the container of the project and the platform" {
	docker_stub
	DOCKER_PS="bbxb-lfs-rpi3-aarch64|bbcrossbuild-devel|lfs|rpi3-aarch64|2 hours ago"
	run container_stop lfs rpi3-aarch64
	[ "${status}" -eq 0 ]
	grep -qxF "docker exec bbxb-lfs-rpi3-aarch64 bash -c kill -INT -1 2> /dev/null; kill -INT 1" "${DOCKER_CALLS}"
	run ! grep -q "^docker \(stop\|kill\)" "${DOCKER_CALLS}"
}

@test "container_stop kills a container that does not stop in CONTAINER_STOP_TIMEOUT seconds" {
	docker_stub
	DOCKER_PS="bbxb-lfs-rpi3-aarch64|bbcrossbuild-devel|lfs|rpi3-aarch64|2 hours ago"
	DOCKER_PS_Q=c0ffee
	CONTAINER_STOP_TIMEOUT=1
	run container_stop lfs rpi3-aarch64
	[ "${status}" -eq 0 ]
	grep -qxF "docker kill bbxb-lfs-rpi3-aarch64" "${DOCKER_CALLS}"
}

@test "container_stop leaves alone a container that is not a build of bbxb" {
	docker_stub
	DOCKER_PS="postgres|postgres:16|||3 days ago"
	run container_stop postgres
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	run ! grep -q "^docker exec" "${DOCKER_CALLS}"
	run container_stop lfs rpi3-aarch64 extra
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	run container_stop
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
}

@test "container_remove removes an image of bbxb with its tags, not one in use or of others" {
	docker_stub
	DOCKER_IMAGE_ID=sha256:0123
	run container_remove ubuntu
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	DOCKER_PS_Q=c0ffee
	run container_remove bbcrossbuild-old
	[ "${status}" -eq "${ERROR_GENERIC}" ]
	run ! grep -q "^docker image rm" "${DOCKER_CALLS}"
	DOCKER_PS_Q=
	run container_remove bbcrossbuild-old
	[ "${status}" -eq 0 ]
	grep -qxF "docker image rm --force sha256:0123" "${DOCKER_CALLS}"
}

@test "container_purge refuses while a build runs and without a confirmation" {
	docker_stub
	CONTAINER_CACHE_PATH=${BATS_TEST_TMPDIR}/cache
	mkdir -p "${CONTAINER_CACHE_PATH}"
	DOCKER_IMAGES="bbcrossbuild-devel:latest|aaa|2 days ago|3GB"
	DOCKER_PS="bbxb-lfs-rpi3-aarch64|bbcrossbuild-devel|lfs|rpi3-aarch64|2 hours ago"
	run container_purge --yes
	[ "${status}" -eq "${ERROR_GENERIC}" ]
	DOCKER_PS=
	run container_purge < /dev/null
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	run ! grep -q "^docker \(rm\|image rm\)" "${DOCKER_CALLS}"
	[ -d "${CONTAINER_CACHE_PATH}" ]
}

@test "container_purge removes the images of bbxb, their stopped containers and the build cache, nothing else" {
	docker_stub
	CONTAINER_CACHE_PATH=${BATS_TEST_TMPDIR}/cache
	mkdir -p "${CONTAINER_CACHE_PATH}/blobs"
	DOCKER_IMAGES="bbcrossbuild-devel:latest|aaa|2 days ago|3GB
ghcr.io/badbat75/bbcrossbuild-devel:latest|aaa|2 days ago|3GB
bbcrossbuild-old:latest|bbb|3 weeks ago|3GB
postgres:16|ccc|3 days ago|400MB"
	DOCKER_PS_Q=dead01
	run container_purge --yes
	[ "${status}" -eq 0 ]
	grep -qxF "docker image rm --force aaa bbb" "${DOCKER_CALLS}"
	grep -qxF "docker rm --force dead01" "${DOCKER_CALLS}"
	[ ! -e "${CONTAINER_CACHE_PATH}" ]
}

@test "container_push pushes the image of the checkout to CONTAINER_REGISTRY, which it needs" {
	docker_stub
	function container_image () {
		return 0
	}
	CONTAINER_NAME=bbcrossbuild-devel
	unset CONTAINER_REGISTRY
	run container_push
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	CONTAINER_REGISTRY=ghcr.io/badbat75/
	run container_push
	[ "${status}" -eq 0 ]
	assert_equal "$(cat "${DOCKER_CALLS}")" "docker tag bbcrossbuild-devel ghcr.io/badbat75/bbcrossbuild-devel
docker push ghcr.io/badbat75/bbcrossbuild-devel"
}

@test "container_command checks the command and its arguments, and runs on the host only" {
	docker_stub
	CONTAINER_NAME=bbcrossbuild-fixture
	run container_command
	[ "${status}" -eq 0 ]
	[[ ${lines[0]} == "Usage: bbxb container <command>"* ]]
	run container_command stop
	[ "${status}" -eq 0 ]
	[[ ${lines[0]} == "Usage: bbxb container <command>"* ]]
	run ! grep -q "^docker exec" "${DOCKER_CALLS}"
	run container_command pull
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	run container_command ps lfs
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	run container_command ps
	[ "${status}" -eq 0 ]
	BBXB_IN_CONTAINER=1
	run container_command ps
	[ "${status}" -eq "${ERROR_GENERIC}" ]
}

@test "container_image writes the output of docker build to its log, one line on the console" {
	docker_stub
	CONTAINER_NAME=bbcrossbuild-fixture
	GLOBAL_LOG_PATH=${BATS_TEST_TMPDIR}/logs
	function docker () {
		if [ "${1}" == build ]
		then
			echo "#6 RUN dnf -y upgrade"
			echo "#6 ERROR: dnf failed" >&2
			return 1
		fi
		return 0
	}
	run container_image --force
	[ "${status}" -eq 1 ]
	assert_output_lines "Building the container image bbcrossbuild-fixture... failed, see ${GLOBAL_LOG_PATH}/container_bbcrossbuild-fixture.log."
	grep -q "#6 RUN dnf -y upgrade" "${GLOBAL_LOG_PATH}/container_bbcrossbuild-fixture.log"
	grep -q "#6 ERROR: dnf failed" "${GLOBAL_LOG_PATH}/container_bbcrossbuild-fixture.log"
}
