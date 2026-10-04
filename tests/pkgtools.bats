#!/usr/bin/env bats
# pkgtools.bats: recipe_resolve and recipe_targets (utilities/pkgtools.functions), the
# resolution of a whole recipe the way build sees it (name, prefixes, package.env, variants)
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154

load test_helper

setup () {
	load_framework
	make_recipe lfs/foo_1 <<-'EOF'
		PKG_SUFFIX=.2
		PKG_VER=3
		PKG_DEPS="lfs/bar"
		CONF_FLAGS="--base"
	EOF
	put "${RECIPE}/variants/target/bootstrap/package.env" 'PKG_DEPS='
	put "${RECIPE}/variants/toolchain/llvm/package.env" 'CONF_FLAGS+=" --llvm"'
	put "${RECIPE}/variants/target/native,stage1/package.env" 'CONF_FLAGS+=" --host"'
	mkdir -p "${RECIPE}/variants/target/default/arch/x86_64"
}

function resolve () {
	### resolve <recipe dir> <target> [<toolchain>]: recipe_resolve in a subshell, then import
	### the variables it sets (recipe_resolve drops the ERR trap, so it never runs in the test)
	local ASSIGNMENTS
	ASSIGNMENTS=$(
		recipe_resolve "${@}" > /dev/null || exit 1
		for VAR in PKG_NAME PKG_FULLNAME PKG_PKGPATH PKG_TARGET PKG_TARGET_ENV PKG_TOOLCHAIN \
			PKG_VARIANTS PKG_VER PKG_DEPS CONF_FLAGS INSTALL_PREFIX INSTALL_LIBDIR NOSAVESTATUS
		do
			printf '%s=%q\n' "${VAR}" "${!VAR:-}"
		done
	)
	eval "${ASSIGNMENTS}"
	return 0
}

@test "the default target: full name from PKG_SUFFIX and PKG_VER, staging dir, sysroot prefixes" {
	resolve "${RECIPE}" ""
	assert_equal "${PKG_NAME}" "foo_1"
	assert_equal "${PKG_FULLNAME}" "foo_1.2_3"
	assert_equal "${PKG_TARGET_ENV}" "target"
	assert_equal "${PKG_PKGPATH}" "${PACKAGES_PATH}/foo_1.2_3"
	assert_equal "${INSTALL_PREFIX}" "/usr"
	assert_equal "${PKG_TOOLCHAIN}" ""
	assert_equal "${PKG_VARIANTS}" "target/default target/default/arch/x86_64"
	assert_equal "${PKG_DEPS}" "lfs/bar"
	assert_equal "${CONF_FLAGS}" "--base"
}

@test "a named target: its own staging dir and the target variant restating PKG_DEPS" {
	resolve "${RECIPE}" bootstrap
	assert_equal "${PKG_FULLNAME}" "foo_1.2_3"
	assert_equal "${PKG_PKGPATH}" "${PACKAGES_PATH}/foo_1.2_3-bootstrap"
	assert_equal "${PKG_VARIANTS}" "target/bootstrap"
	assert_equal "${PKG_DEPS}" ""
}

@test "native: global toolchain prefixes, no staging dir, no status, comma list matched" {
	resolve "${RECIPE}" native
	assert_equal "${PKG_TARGET_ENV}" "native"
	assert_equal "${PKG_PKGPATH}" ""
	assert_equal "${NOSAVESTATUS}" "1"
	assert_equal "${INSTALL_PREFIX}" "${GLOBAL_TOOLCHAIN_PATH}"
	assert_equal "${INSTALL_LIBDIR}" "${GLOBAL_TOOLCHAIN_PATH}/lib"
	assert_equal "${PKG_VARIANTS}" "target/native,stage1"
	assert_equal "${CONF_FLAGS}" "--base --host"
}

@test "build --toolchain selects the toolchain variant and sets PKG_TOOLCHAIN" {
	resolve "${RECIPE}" "" llvm
	assert_equal "${PKG_TOOLCHAIN}" "llvm"
	assert_equal "${PKG_VARIANTS}" "target/default toolchain/llvm target/default/arch/x86_64"
	assert_equal "${CONF_FLAGS}" "--base --llvm"
}

@test "a recipe without PKG_VER has no version in its full name" {
	make_recipe lfs/bar <<-'EOF'
		PKG_URL=https://example.org/bar.tar.gz
	EOF
	resolve "${RECIPE}" ""
	assert_equal "${PKG_FULLNAME}" "bar"
	assert_equal "${PKG_PKGPATH}" "${PACKAGES_PATH}/bar"
	assert_equal "${PKG_VARIANTS}" ""
}

@test "recipe_resolve returns 1 when package.env fails" {
	make_recipe lfs/broken <<-'EOF'
		PKG_VER=1.0
		return 1
	EOF
	run recipe_resolve "${RECIPE}" ""
	[ "${status}" -eq 1 ]
	make_recipe lfs/fine <<-'EOF'
		PKG_VER=1.0
	EOF
	run recipe_resolve "${RECIPE}" ""
	[ "${status}" -eq 0 ]
}

@test "recipe_targets lists the named targets of the variants tree, install classes excluded" {
	run recipe_targets "${RECIPE}"
	assert_output_lines bootstrap stage1
	make_recipe lfs/bar <<-'EOF'
		PKG_VER=1.0
	EOF
	run recipe_targets "${RECIPE}"
	[ "${status}" -eq 0 ]
	assert_output_lines
}
