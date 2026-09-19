#!/usr/bin/env bats
# build.bats: the order of build (build.functions) on fixture recipes that build nothing
# (BUILD_PROCESS=none, cross target: no staging directory, no root): the dependencies walked
# for a package already built too, and the list of the packages checked in a run
# (BUILD_CHECKED_FILE, one per bbxb run)
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154

load test_helper

setup () {
	load_framework
	### pkgtools.functions stubs build and run_cmd out: the real ones here, every build step
	### they call stays a stub
	eval "$( source "${BB_HOME}/core.functions" > /dev/null; declare -f run_cmd )"
	eval "$( source "${BB_HOME}/build.functions" > /dev/null; declare -f build )"
	mkdir -p "${LOG_PATH}"
	BUILD_CHECKED_FILE="${BATS_TEST_TMPDIR}/checked"
	make_recipe fix/lib <<-'EOF'
		PKG_VER=1.0
		BUILD_PROCESS=none
	EOF
	make_recipe fix/app <<-'EOF'
		PKG_VER=2.0
		PKG_DEPS="fix/lib"
		BUILD_PROCESS=none
	EOF
}

function new_run () {
	### new_run: what a new bbxb run starts from, an empty list of checked packages
	rm -f "${BUILD_CHECKED_FILE}"
}

@test "checked_package_key: the package, the first target and the status suffix" {
	assert_equal "$(checked_package_key lfs/zlib)" "lfs/zlib:"
	assert_equal "$(checked_package_key lfs/glibc:stage1)" "lfs/glibc:stage1"
	assert_equal "$(checked_package_key lfs/bison:native:native .tmp)" "lfs/bison:native.tmp"
}

@test "a package and its dependency are built, then found built with nothing else printed" {
	run build fix/app:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package app_2.0:cross" \
		"   Requires fix/lib" \
		"   Package lib_1.0:cross" \
		"   Done." \
		"" \
		"Done."
	assert_equal "$(cat "${STATUS_PATH}/lib_1.0-cross")" "$(recipe_checksum "${PKG_PATH}/fix/lib")"
	assert_equal "$(cat "${STATUS_PATH}/app_2.0-cross")" "$(recipe_checksum "${PKG_PATH}/fix/app")"

	new_run
	run build fix/app:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package app_2.0:cross already built."
}

@test "a changed dependency of a package already built is rebuilt, the package is not" {
	local APP_STATUS
	build fix/app:cross > /dev/null
	APP_STATUS=$(cat "${STATUS_PATH}/app_2.0-cross")
	echo "# changed" >> "${PKG_PATH}/fix/lib/${RECIPE_FILENAME}"

	new_run
	run build fix/app:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package app_2.0:cross already built." \
		"" \
		"   Package lib_1.0:cross, required by app_2.0:cross" \
		"   Done."
	assert_equal "$(cat "${STATUS_PATH}/lib_1.0-cross")" "$(recipe_checksum "${PKG_PATH}/fix/lib")"
	assert_equal "$(cat "${STATUS_PATH}/app_2.0-cross")" "${APP_STATUS}"
}

@test "a package reached through several dependents is checked once in a run" {
	make_recipe fix/base <<-'EOF'
		PKG_VER=1.0
		BUILD_PROCESS=none
		echo sourced >> "${BATS_TEST_TMPDIR}/base.sourced"
	EOF
	put "${PKG_PATH}/fix/lib/${RECIPE_FILENAME}" 'PKG_VER=1.0 PKG_DEPS="fix/base" BUILD_PROCESS=none'
	put "${PKG_PATH}/fix/app/${RECIPE_FILENAME}" 'PKG_VER=2.0 PKG_DEPS="fix/lib fix/base" BUILD_PROCESS=none'

	run build fix/app:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package app_2.0:cross" \
		"   Requires fix/lib" \
		"   Package lib_1.0:cross" \
		"      Requires fix/base" \
		"      Package base_1.0:cross" \
		"      Done." \
		"" \
		"   Done." \
		"" \
		"   Requires fix/base" \
		"   Package base_1.0:cross already built." \
		"" \
		"Done."
	assert_equal "$(wc -l < "${BATS_TEST_TMPDIR}/base.sourced")" 1

	new_run
	run build fix/app:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package app_2.0:cross already built."
	assert_equal "$(wc -l < "${BATS_TEST_TMPDIR}/base.sourced")" 2
}

@test "build --force builds a package this run has already checked" {
	build fix/lib:cross > /dev/null
	run build --force fix/lib:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package lib_1.0:cross" "Done."
}

@test "the dependencies of a package its probe (PKG_CHECK) finds are left alone" {
	make_recipe fix/tool <<-'EOF'
		PKG_VER=1.0
		PKG_DEPS="fix/lib"
		PKG_CHECK="true"
		BUILD_PROCESS=none
	EOF
	run build fix/tool:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package tool_1.0:cross already built."
	[ ! -e "${STATUS_PATH}/lib_1.0-cross" ]
}
