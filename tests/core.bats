#!/usr/bin/env bats
# core.bats: the pure helpers of core.functions (test_version, pathadd, pathremove,
# param2value, trow_error) and its logging and error handling (log_buffer, run_cmd, on_error)
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

@test "param_list prints the positional parameters of the last param2value call" {
	OPTS="" OPTS_WITH_VALUE="--tag" param2value --tag lfs systemd-networkd systemd-resolved
	run param_list
	assert_output_lines "systemd-networkd" "systemd-resolved"
	run param_list 2
	assert_output_lines "systemd-resolved"
	run param_list 3
	assert_output_lines
	OPTS="" OPTS_WITH_VALUE="" param2value
	run param_list
	assert_output_lines
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

### The logging and error handling functions are tested in a fresh shell: pkgtools.functions
### stubs run_cmd, and bats has its own ERR trap.

@test "log_buffer prefixes every line, keeps the indentation and an unterminated last line" {
	run bash -c 'source "${BB_HOME}/core.functions"; cd /tmp; printf "one\n  two\nlast" | log_buffer error'
	[ "${#lines[@]}" -eq 3 ]
	[[ ${lines[0]} =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}\ [0-9:]{8}\ -\ \[tmp\]!\ one$ ]]
	[[ ${lines[1]} == *"]!   two" ]]
	[[ ${lines[2]} == *"]! last" ]]
}

@test "log_buffer writes to the stdout it inherits, never reopening /dev/stdout" {
	### The pipe or the terminal a container gives the build belongs to root, and the build
	### does not: here the same refusal comes from a file the test takes the rights of once
	### the shell has it open
	export RUN_LOG="${BATS_TEST_TMPDIR}/closed.log"
	: > "${RUN_LOG}"
	run bash -c 'source "${BB_HOME}/core.functions"
		exec 3>&1 > "${RUN_LOG}"
		chmod 000 "${RUN_LOG}"
		echo line | log_buffer log
		STATUS=${?}
		chmod 644 "${RUN_LOG}"
		exec 1>&3
		echo "status=${STATUS} log=$(cat "${RUN_LOG}")"'
	[[ ${output} == "status=0 log="*"]- line" ]]
}

@test "run_cmd returns the status of the command once its whole output is in the log" {
	export RUN_LOG="${BATS_TEST_TMPDIR}/run.log"
	run bash -c 'source "${BB_HOME}/seterr"; source "${BB_HOME}/core.functions"
		run_cmd "seq 1 2000; echo the-error >&2; (exit 3)" > "${RUN_LOG}"
		echo "status=${?} lines=$(wc -l < "${RUN_LOG}") errors=$(grep -c "]! the-error" "${RUN_LOG}")"'
	assert_output_lines "status=3 lines=2002 errors=1"
}

@test "a command run by run_cmd does not inherit the console descriptor of bbxb" {
	run bash -c 'source "${BB_HOME}/seterr"; source "${BB_HOME}/core.functions"
		exec {BBXB_CONSOLE_FD}>&2
		run_cmd "[ ! -e /proc/self/fd/${BBXB_CONSOLE_FD} ]" > /dev/null; echo "closed=${?}"
		[ -e "/proc/self/fd/${BBXB_CONSOLE_FD}" ]; echo "open=${?}"'
	assert_output_lines "closed=0" "open=0"
}

@test "run_cmd repeats a failing command MAX_RETRIES times" {
	export RUN_LOG="${BATS_TEST_TMPDIR}/run.log"
	run bash -c 'source "${BB_HOME}/seterr"; source "${BB_HOME}/core.functions"
		function sleep () { :; }
		MAX_RETRIES=3 run_cmd "echo attempt; false" > "${RUN_LOG}"
		echo "status=${?} attempts=$(grep -c "]- attempt" "${RUN_LOG}")"'
	assert_output_lines "status=1 attempts=3"
}

@test "on_error reports a failure of nested subshells once, with the log, and cleans up in the main shell" {
	export RUN_LOG="${BATS_TEST_TMPDIR}/run.log"
	cat > "${BATS_TEST_TMPDIR}/nested.sh" <<-'EOF'
		source "${BB_HOME}/seterr"
		source "${BB_HOME}/core.functions"
		exec {BBXB_CONSOLE_FD}>&2
		trap 'on_error ${?}' ERR
		set -E -o pipefail
		function unmount_tag () { echo "images unmounted"; }
		function step () { run_cmd "echo the-error >&2; (exit 3)"; }
		function inner () { ( step >> "${RUN_LOG}" 2>&1 ); }
		function outer () { ( inner ); }
		outer
		echo "not reached"
	EOF
	run bash "${BATS_TEST_TMPDIR}/nested.sh"
	[ "${status}" -eq 3 ]
	[ "$(grep -c "^ERROR: " <<< "${output}")" -eq 1 ]
	[ "$(grep -c "images unmounted" <<< "${output}")" -eq 1 ]
	[[ ${output} == *"ERROR: command failed [status 3]"* ]]
	[[ ${output} == *"Stack:   step inner outer main"* ]]
	[[ ${output} == *"Log:     ${RUN_LOG}"* ]]
	[[ ${output} == *"]! the-error"* ]]
	[[ ${output} == *"Build stopped [status 3]."* ]]
	[[ ${output} != *"not reached"* ]]
	grep -q "]! ERROR: command failed \[status 3\]" "${RUN_LOG}"
}

@test "on_error reports the message of trow_error, once" {
	cat > "${BATS_TEST_TMPDIR}/trow.sh" <<-'EOF'
		source "${BB_HOME}/seterr"
		source "${BB_HOME}/core.functions"
		trap 'on_error ${?}' ERR
		set -E -o pipefail
		function check () { ( trow_error "${ERROR_FILE_NOT_FOUND}" "Platform does not exist." ); }
		check
	EOF
	run bash "${BATS_TEST_TMPDIR}/trow.sh"
	[ "${status}" -eq 10 ]
	[ "$(grep -c "Platform does not exist." <<< "${output}")" -eq 1 ]
	[[ ${output} == *"ERROR: Platform does not exist. [status 10]"* ]]
}
