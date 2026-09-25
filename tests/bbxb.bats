#!/usr/bin/env bats
# bbxb.bats: the command line of bbxb, up to the point where it needs a project and a platform
# (the help, the commands it does not know). Nothing here builds or talks to docker.
# shellcheck disable=SC2154

load test_helper

setup () {
	# shellcheck source=seterr
	source "${BB_HOME}/seterr"
}

@test "bbxb without arguments, help, -h and --help print the help and succeed" {
	local ARGS
	for ARGS in "" help -h --help
	do
		# shellcheck disable=SC2086
		run "${BB_HOME}/bbxb" ${ARGS}
		[ "${status}" -eq 0 ]
		[[ ${lines[0]} == "Usage: bbxb "* ]]
		[[ ${output} == *"Projects:  "*lfs* ]]
		[[ ${output} == *"Platforms: "*generic-x64* ]]
	done
}

@test "a command without project and platform prints the help, one without the platform fails" {
	run "${BB_HOME}/bbxb" logtail
	[ "${status}" -eq 0 ]
	[[ ${lines[0]} == "Usage: bbxb "* ]]
	run "${BB_HOME}/bbxb" build lfs
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"No platform name specified"* ]]
}

@test "bbxb container without a command prints its help" {
	run "${BB_HOME}/bbxb" container
	[ "${status}" -eq 0 ]
	[[ ${lines[0]} == "Usage: bbxb container <command>"* ]]
}

@test "an unknown command fails and names the help" {
	run "${BB_HOME}/bbxb" compile lfs generic-x64
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"Unknown command compile (bbxb help)"* ]]
	run "${BB_HOME}/bbxb" container pull
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
	[[ ${output} == *"Unknown container command pull (bbxb container help)"* ]]
}

@test "mount and umount without arguments print the help, --ro belongs to mount only" {
	run "${BB_HOME}/bbxb" mount
	[ "${status}" -eq 0 ]
	[[ ${lines[0]} == "Usage: bbxb "* ]]
	[[ ${output} == *"mount list"* ]]
	run "${BB_HOME}/bbxb" umount
	[ "${status}" -eq 0 ]
	run "${BB_HOME}/bbxb" build --ro lfs generic-x64
	[ "${status}" -eq "${ERROR_NOT_VALID_OPTION}" ]
}
