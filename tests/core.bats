#!/usr/bin/env bats
# core.bats: the pure helpers of core.functions (test_version, pathadd, pathremove,
# param2value, trow_error)
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154

load test_helper

setup () {
	load_framework
}

@test "test_version compares version numbers, not strings" {
	test_version 1.10.0 -gt 1.9.3
	test_version 1.9.3 -lt 1.10.0
	test_version 2.40 -ge 2.40
	test_version 2.40 -le 2.40
	test_version 2.40 -eq 2.40
	test_version 2.40 -ne 2.41
	run ! test_version 1.9.3 -gt 1.10.0
	run ! test_version 2.40 -gt 2.40
	run ! test_version 2.40 -lt 2.40
	run ! test_version 2.40 -ne 2.40
	run ! test_version 1.10.0 -eq 1.10
}

@test "test_version needs two versions and an operator" {
	run test_version 1.0 -gt
	[ "${status}" -eq 255 ]
}

@test "pathadd prepends a directory once and creates the variable when empty" {
	unset MYPATH
	pathadd MYPATH /a
	assert_equal "${MYPATH}" "/a"
	pathadd MYPATH /b
	assert_equal "${MYPATH}" "/b:/a"
	pathadd MYPATH /a
	assert_equal "${MYPATH}" "/b:/a"
	pathadd MYPATH ""
	assert_equal "${MYPATH}" "/b:/a"
}

@test "pathremove drops a directory wherever it is and leaves the rest alone" {
	MYPATH=/a:/b:/c
	pathremove MYPATH /b
	assert_equal "${MYPATH}" "/a:/c"
	pathremove MYPATH /a
	assert_equal "${MYPATH}" "/c"
	pathremove MYPATH /nope
	assert_equal "${MYPATH}" "/c"
	pathremove MYPATH /c
	assert_equal "${MYPATH}" ""
}

@test "param2value parses flags, valued options and positionals into _param_ variables" {
	OPTS="--force --keep_builddir" OPTS_WITH_VALUE="--toolchain" \
		param2value --force --toolchain llvm lfs/zlib:native second
	assert_equal "${_param_force}" "1"
	assert_equal "${_param_toolchain}" "llvm"
	assert_equal "${_param_1}" "lfs/zlib:native"
	assert_equal "${_param_2}" "second"
	[ -z "${_param_keep_builddir:-}" ]
}

@test "param2value forgets the _param_ variables of the previous call" {
	OPTS="--force" param2value --force lfs/zlib
	OPTS="--force" param2value lfs/bison
	assert_equal "${_param_1}" "lfs/bison"
	[ -z "${_param_force:-}" ]
}

@test "param2value reports an unknown option and a valued option without value" {
	run env OPTS="--force" OPTS_WITH_VALUE="--toolchain" bash -c '
		source "${BB_HOME}/seterr"; source "${BB_HOME}/core.functions"
		param2value --bogus 2>&1; echo "--"; param2value --toolchain 2>&1'
	[[ ${output} == *"Unrecognized option: --bogus"* ]]
	[[ ${output} == *"--toolchain unset, no assigned value."* ]]
}

@test "trow_error prints the message on stderr and returns the code" {
	run trow_error "${ERROR_FILE_NOT_FOUND}" "Platform does not exist."
	[ "${status}" -eq 10 ]
	[[ ${output} == *"Platform does not exist."* ]]
}
