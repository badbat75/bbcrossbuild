#!/usr/bin/env bats
# container.bats: the pure logic of container.functions (the name of the image, the variables of
# the environment that travel to the container). Nothing here talks to docker.
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154

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
