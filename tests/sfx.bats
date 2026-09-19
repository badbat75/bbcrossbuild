#!/usr/bin/env bats
# sfx.bats: the self-extracting installer of create_sfx_package (project.functions) on a fixture
# package with a program, a header, a configuration file and post install scripts. The run on
# / is faked with a realpath that answers / ahead in PATH: the files go to the destination, the
# scripts run where they would on the running system.
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2030,SC2031,SC2034,SC2154

load test_helper

setup () {
	load_framework
	### pkgtools.functions stubs run_cmd and create_sfx_package out: the real ones here
	eval "$( source "${BB_HOME}/core.functions" > /dev/null; declare -f run_cmd )"
	source "${BB_HOME}/project.functions"
	mkdir -p "${LOG_PATH}"
	PKG="${BATS_TEST_TMPDIR}/pkg/fixture_1.0"
	DEST="${BATS_TEST_TMPDIR}/dest"
	RAN="${BATS_TEST_TMPDIR}/ran"
	mkdir -p "${DEST}" "${BATS_TEST_TMPDIR}/tmp"
	put "${PKG}${TARGET_PREFIX}/bin/fixture" "fixture"
	put "${PKG}${TARGET_INCLUDEDIR}/fixture.h" "fixture header"
	put "${PKG}${TARGET_SYSCONFDIR}/fixture.conf" "fixture configuration"
	put "${PKG}/postinst_scripts/50_fixture_1.0" "echo 50 >> ${RAN}"
	put "${PKG}/postinst_scripts/49_fixture_modules" "echo 49 >> ${RAN}"
}

function make_sfx () {
	### make_sfx: pack the fixture package into ${PKG}.sfx
	create_sfx_package "${PKG}" > /dev/null
	[ -x "${PKG}.sfx" ]
}

function fake_root () {
	### fake_root: a realpath that answers / for every path, ahead of the real one in PATH
	mkdir -p "${BATS_TEST_TMPDIR}/fakebin"
	printf '#!/bin/sh\necho /\n' > "${BATS_TEST_TMPDIR}/fakebin/realpath"
	chmod +x "${BATS_TEST_TMPDIR}/fakebin/realpath"
	PATH="${BATS_TEST_TMPDIR}/fakebin:${PATH}"
}

@test "sfx: the directories of the destination keep their mode" {
	### the archive has 755 directories, an existing directory does not take their mode
	mkdir -p "${DEST}${TARGET_PREFIX}"
	chmod 700 "${DEST}"
	chmod 750 "${DEST}${TARGET_PREFIX}"
	make_sfx
	run "${PKG}.sfx" --dest "${DEST}"
	[ "${status}" -eq 0 ]
	[ -f "${DEST}${TARGET_PREFIX}/bin/fixture" ]
	assert_equal "$(stat -c %a "${DEST}")" 700
	assert_equal "$(stat -c %a "${DEST}${TARGET_PREFIX}")" 750
}

@test "sfx in another destination: the scripts stay in postinst_scripts, none runs" {
	make_sfx
	run "${PKG}.sfx" --dest "${DEST}"
	[ "${status}" -eq 0 ]
	[ -f "${DEST}${TARGET_PREFIX}/bin/fixture" ]
	[ ! -e "${DEST}${TARGET_INCLUDEDIR}/fixture.h" ]
	[ ! -e "${DEST}${TARGET_SYSCONFDIR}/fixture.conf" ]
	[ -f "${DEST}/postinst_scripts/50_fixture_1.0" ]
	[ -f "${DEST}/postinst_scripts/49_fixture_modules" ]
	[ ! -e "${RAN}" ]
}

@test "sfx on /: the scripts run in numeric order and none is left" {
	make_sfx
	fake_root
	TMPDIR="${BATS_TEST_TMPDIR}/tmp" run "${PKG}.sfx" --dest "${DEST}"
	[ "${status}" -eq 0 ]
	[ -f "${DEST}${TARGET_PREFIX}/bin/fixture" ]
	[ ! -e "${DEST}/postinst_scripts" ]
	assert_equal "$(cat "${RAN}")" "$(printf '49\n50')"
	assert_equal "$(ls -A "${BATS_TEST_TMPDIR}/tmp")" ""
}

@test "sfx on /: a failing script does not stop the next one, the status tells" {
	put "${PKG}/postinst_scripts/49_fixture_modules" "echo 49 >> ${RAN}; false"
	make_sfx
	fake_root
	TMPDIR="${BATS_TEST_TMPDIR}/tmp" run "${PKG}.sfx" --dest "${DEST}"
	[ "${status}" -eq 1 ]
	assert_equal "$(cat "${RAN}")" "$(printf '49\n50')"
	[[ "${output}" == *"Post install script 49_fixture_modules failed"* ]]
	assert_equal "$(ls -A "${BATS_TEST_TMPDIR}/tmp")" ""
}

@test "sfx --no-postinst: the scripts are neither extracted nor run" {
	make_sfx
	run "${PKG}.sfx" --no-postinst --dest "${DEST}"
	[ "${status}" -eq 0 ]
	[ -f "${DEST}${TARGET_PREFIX}/bin/fixture" ]
	[ ! -e "${DEST}/postinst_scripts" ]
	fake_root
	run "${PKG}.sfx" --no-postinst --dest "${DEST}"
	[ "${status}" -eq 0 ]
	[ ! -e "${DEST}/postinst_scripts" ]
	[ ! -e "${RAN}" ]
}

@test "sfx --test on /: nothing is extracted, no script runs" {
	make_sfx
	fake_root
	run "${PKG}.sfx" --test --dest "${DEST}"
	[ "${status}" -eq 0 ]
	assert_equal "$(ls -A "${DEST}")" ""
	[ ! -e "${RAN}" ]
}

@test "sfx with --with-dev --with-conf: headers and configuration are extracted too" {
	make_sfx
	run "${PKG}.sfx" --with-dev --with-conf --dest "${DEST}"
	[ "${status}" -eq 0 ]
	[ -f "${DEST}${TARGET_INCLUDEDIR}/fixture.h" ]
	[ -f "${DEST}${TARGET_SYSCONFDIR}/fixture.conf" ]
}

@test "sfx of a package without post install scripts on /: nothing to run" {
	rm -r "${PKG}/postinst_scripts"
	make_sfx
	fake_root
	run "${PKG}.sfx" --dest "${DEST}"
	[ "${status}" -eq 0 ]
	[ -f "${DEST}${TARGET_PREFIX}/bin/fixture" ]
	[[ "${output}" != *"post install script"* ]]
}
