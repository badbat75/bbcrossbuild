#!/usr/bin/env bats
# build.bats: the order of build (build.functions) on fixture recipes that build nothing
# (BUILD_PROCESS=none, cross target: no staging directory, no root): the dependencies walked
# for a package already built too, and the list of the packages checked in a run
# (BUILD_CHECKED_FILE, one per bbxb run)
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154,SC2329

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

@test "build --no_save_status saves no status and removes the temporary ones of its dependencies" {
	build --temporary fix/lib:cross > /dev/null
	[ -f "${STATUS_PATH}/lib_1.0-cross.tmp" ]

	new_run
	run build --no_save_status fix/app:cross
	[ "${status}" -eq 0 ]
	[ ! -e "${STATUS_PATH}/app_2.0-cross" ]
	[ ! -e "${STATUS_PATH}/lib_1.0-cross" ]
	[ ! -e "${STATUS_PATH}/lib_1.0-cross.tmp" ]
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

function keep_recipe () {
	### keep_recipe: fix/kept, a PKG_KEEPBUILDDIR recipe whose build directory has no target
	### suffix (native and cross share it, as the target flavors of lfs/llvm), with stubs that
	### count the downloads, extract nothing and write an environment.source from TEST_CFLAGS
	make_recipe fix/kept <<-'EOF'
		PKG_VER=1.0
		PKG_URL=https://example.com/kept-1.0.tar.gz
		PKG_CHECK=false
		PKG_KEEPBUILDDIR=1
		PKG_BLDPATH=${BLD_PATH}/${PKG_FULLNAME}
		BUILD_PROCESS=custom
	EOF
	KEPT_BLDPATH="${BLD_PATH}/kept_1.0"
	KEPT_SRCPATH="${SRC_PATH}/kept_1.0"
	TEST_CFLAGS=-O2
	downloadsources () { rm -rf "${PKG_SRCPATH}"; mkdir -p "${PKG_SRCPATH}"; echo dl >> "${BATS_TEST_TMPDIR}/calls"; }
	preparesources () { echo prep >> "${BATS_TEST_TMPDIR}/calls"; }
	create_environment_source () { mkdir -p "${PKG_BLDPATH}"; echo "export CFLAGS='${TEST_CFLAGS}'" > "${PKG_BLDPATH}/environment.source"; }
}

function calls () {
	### calls: the downloads and preparations so far, on one line
	tr '\n' ' ' < "${BATS_TEST_TMPDIR}/calls" 2>/dev/null || true
}

@test "PKG_KEEPBUILDDIR: the sources are prepared once and the build directory is kept, shared by two targets" {
	keep_recipe
	### the same prefixes for both targets, as the target flavors of lfs/llvm: the same key
	cat >> "${PKG_PATH}/fix/kept/${RECIPE_FILENAME}" <<-'EOF'
		INSTALL_PREFIX=/usr INSTALL_EXECPREFIX=/usr INSTALL_LIBDIR=/usr/lib INSTALL_LIBSUFFIX=
		INSTALL_INCLUDEDIR=/usr/include INSTALL_SYSCONFDIR=/etc INSTALL_LOCALSTATEDIR=/var INSTALL_SHAREDIR=/usr/share
	EOF
	run build fix/kept:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package kept_1.0:cross" \
		"Downloading kept_1.0...Done." \
		"Building kept_1.0:cross [custom]...Done." \
		""
	assert_equal "$(cat "${KEPT_SRCPATH}/.bbxb-sources")" "$(PKG_RECIPEPATH="${PKG_PATH}/fix/kept" PKG_URL=https://example.com/kept-1.0.tar.gz sources_key)"
	[ -f "${KEPT_BLDPATH}/.bbxb-environment" ]
	touch "${KEPT_BLDPATH}/object.o"

	### the native target finds the sources and the tree of the cross one
	run build fix/kept:native
	[ "${status}" -eq 0 ]
	assert_output_lines "Package kept_1.0:native" \
		"Sources of kept_1.0 already prepared." \
		"Building kept_1.0:native [custom]...Done." \
		""
	[ -f "${KEPT_BLDPATH}/object.o" ]
	assert_equal "$(calls)" "dl prep "
}

@test "PKG_KEEPBUILDDIR: a recipe change outside the sources keeps them, a patch or a new extraction prepares them again" {
	keep_recipe
	run build fix/kept:cross
	[ "${status}" -eq 0 ]

	echo "# changed" >> "${PKG_PATH}/fix/kept/${RECIPE_FILENAME}"
	run build --force fix/kept:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package kept_1.0:cross" \
		"Sources of kept_1.0 already prepared." \
		"Building kept_1.0:cross [custom]...Done." \
		""
	assert_equal "$(calls)" "dl prep "

	put "${PKG_PATH}/fix/kept/patches/fix.patch" "a patch"
	run build --force fix/kept:cross
	[ "${status}" -eq 0 ]
	assert_equal "$(calls)" "dl prep dl prep "

	### another build extracted the sources again (lfs/llvm:native): the marker went with them
	rm -rf "${KEPT_SRCPATH}"
	mkdir -p "${KEPT_SRCPATH}"
	run build --force fix/kept:cross
	[ "${status}" -eq 0 ]
	assert_equal "$(calls)" "dl prep dl prep dl prep "
}

@test "PKG_KEEPBUILDDIR: a kept build directory is emptied when the environment changes or has no stamp" {
	keep_recipe
	run build fix/kept:cross
	[ "${status}" -eq 0 ]
	touch "${KEPT_BLDPATH}/object.o"

	run build --force fix/kept:cross
	[ "${status}" -eq 0 ]
	[ -f "${KEPT_BLDPATH}/object.o" ]

	TEST_CFLAGS=-O3
	run build --force fix/kept:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package kept_1.0:cross" \
		"Sources of kept_1.0 already prepared." \
		"Build directory of kept_1.0 emptied: the build environment changed." \
		"Building kept_1.0:cross [custom]...Done." \
		""
	[ ! -e "${KEPT_BLDPATH}/object.o" ]

	### a tree without the stamp (--keep_builddir, a build before PKG_KEEPBUILDDIR) is not trusted
	touch "${KEPT_BLDPATH}/object.o"
	rm "${KEPT_BLDPATH}/.bbxb-environment"
	run build --force fix/kept:cross
	[ "${status}" -eq 0 ]
	[ ! -e "${KEPT_BLDPATH}/object.o" ]
	[ -f "${KEPT_BLDPATH}/.bbxb-environment" ]
}

@test "PKG_KEEPBUILDDIR: --clean_builddir prepares the sources again in an empty build directory" {
	keep_recipe
	run build fix/kept:cross
	[ "${status}" -eq 0 ]
	touch "${KEPT_BLDPATH}/object.o"

	run build --force --clean_builddir fix/kept:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package kept_1.0:cross" \
		"Downloading kept_1.0...Done." \
		"Building kept_1.0:cross [custom]...Done." \
		""
	[ ! -e "${KEPT_BLDPATH}/object.o" ]
	assert_equal "$(calls)" "dl prep dl prep "
}

@test "PKG_KEEPBUILDDIR: a flavor that configures nothing leaves the tree and the stamp alone" {
	keep_recipe
	run build fix/kept:cross
	[ "${status}" -eq 0 ]
	touch "${KEPT_BLDPATH}/object.o"
	STAMP=$(cat "${KEPT_BLDPATH}/.bbxb-environment")

	### lfs/llvm:sources: BUILD_PROCESS=none in the same build directory, another key
	mkdir -p "${PKG_PATH}/fix/kept/variants/target/sources"
	echo "BUILD_PROCESS=none" > "${PKG_PATH}/fix/kept/variants/target/sources/${RECIPE_FILENAME}"
	run build fix/kept:sources
	[ "${status}" -eq 0 ]
	assert_output_lines "Package kept_1.0:sources" \
		"Sources of kept_1.0 already prepared." \
		"Done." \
		""
	[ -f "${KEPT_BLDPATH}/object.o" ]
	assert_equal "$(cat "${KEPT_BLDPATH}/.bbxb-environment")" "${STAMP}"

	run build --force fix/kept:cross
	[ "${status}" -eq 0 ]
	[ -f "${KEPT_BLDPATH}/object.o" ]
}

@test "PKG_KEEPBUILDDIR: the kept trees of the other versions of the package are removed" {
	keep_recipe
	put "${BLD_PATH}/kept_0.9/.bbxb-environment" old
	put "${BLD_PATH}/kept_0.9-cross/.bbxb-environment" old
	put "${BLD_PATH}/kept_0.8/object.o"
	put "${BLD_PATH}/kept_1.0-native/.bbxb-environment" same
	put "${BLD_PATH}/kept-extra_0.9/.bbxb-environment" other

	run build fix/kept:cross
	[ "${status}" -eq 0 ]
	[ ! -e "${BLD_PATH}/kept_0.9" ]
	[ ! -e "${BLD_PATH}/kept_0.9-cross" ]
	### not kept by the mode (no stamp), the same version, another package
	[ -e "${BLD_PATH}/kept_0.8" ]
	[ -e "${BLD_PATH}/kept_1.0-native" ]
	[ -e "${BLD_PATH}/kept-extra_0.9" ]
}

@test "a build without PKG_KEEPBUILDDIR removes its build directory and leaves no marker" {
	make_recipe fix/plain <<-'EOF'
		PKG_VER=1.0
		PKG_URL=https://example.com/plain-1.0.tar.gz
		BUILD_PROCESS=none
	EOF
	downloadsources () { mkdir -p "${PKG_SRCPATH}"; }
	preparesources () { :; }

	run build fix/plain:cross
	[ "${status}" -eq 0 ]
	[ ! -d "${BLD_PATH}/plain_1.0-cross" ]
	[ ! -e "${SRC_PATH}/plain_1.0/.bbxb-sources" ]
}

@test "a nested build indents every line: the sources line, Building and Done" {
	make_recipe fix/src <<-'EOF'
		PKG_VER=1.0
		PKG_URL=https://example.com/src-1.0.tar.gz
		BUILD_PROCESS=none
	EOF
	make_recipe fix/tool <<-'EOF'
		PKG_VER=1.0
		BUILD_PROCESS=custom
	EOF
	make_recipe fix/top <<-'EOF'
		PKG_VER=1.0
		PKG_DEPS="fix/src fix/tool"
		BUILD_PROCESS=none
	EOF
	downloadsources () { mkdir -p "${PKG_SRCPATH}"; }
	preparesources () { :; }

	run build fix/top:cross
	[ "${status}" -eq 0 ]
	assert_output_lines "Package top_1.0:cross" \
		"   Requires fix/src" \
		"   Package src_1.0:cross" \
		"   Downloading src_1.0...Done." \
		"   Done." \
		"" \
		"   Requires fix/tool" \
		"   Package tool_1.0:cross" \
		"   Building tool_1.0:cross [custom]...Done." \
		"" \
		"Done."
}

@test "sources_key: the archives and the patches, not the rest of the recipe" {
	make_recipe fix/key <<-'EOF'
		PKG_VER=1.0
	EOF
	local KEY
	PKG_URL=https://example.com/a.tar.gz
	KEY=$(sources_key)
	put "${RECIPE}/prebuild.sh" "true"
	assert_equal "$(sources_key)" "${KEY}"
	put "${RECIPE}/patches/01-a.patch" "one"
	[ "$(sources_key)" != "${KEY}" ]
	KEY=$(sources_key)
	put "${RECIPE}/patches/01-a.patch" "two"
	[ "$(sources_key)" != "${KEY}" ]
	KEY=$(sources_key)
	PKG_URL=https://example.com/b.tar.gz
	[ "$(sources_key)" != "${KEY}" ]
}
