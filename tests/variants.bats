#!/usr/bin/env bats
# variants.bats: recipe_variants and apply_recipe_variants (build.functions), the selection
# and application order of the variants/<axis>/<value> directories of a recipe
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154

load test_helper

setup () {
	load_framework
	make_recipe lfs/fixture <<-'EOF'
		PKG_VER=1.0
	EOF
	### Every axis, matching and non matching values, comma lists, conjunctions in the
	### canonical order and one out of order (arch before target) that must be ignored
	local DIR
	for DIR in \
		target/sysroot target/default target/native target/cross target/bootstrap target/native,cross \
		toolchain/gnu toolchain/llvm \
		arch/x86_64 arch/aarch64 arch/arm,aarch64 \
		platform/generic-x64 platform/rpi3-aarch64 \
		version/1.0 version/2.0 \
		option/docs option/backend option/backend=alsa option/backend=jack \
		target/default/arch/x86_64 target/default/arch/x86_64/option/docs \
		arch/x86_64/option/docs target/native/arch/x86_64 arch/x86_64/target/default
	do
		mkdir -p "${RECIPE}/variants/${DIR}"
	done
	PKG_VER=1.0
	unset PKG_TOOLCHAIN _param_toolchain WITH_DOCS WITH_BACKEND
}

@test "no variants directory selects nothing" {
	make_recipe lfs/plain <<-'EOF'
		PKG_VER=1.0
	EOF
	select_target ""
	run recipe_variants
	[ "${status}" -eq 0 ]
	assert_output_lines
}

@test "the default target selects the axes in canonical order, then the conjunctions by depth" {
	select_target ""
	WITH_DOCS=1
	WITH_BACKEND=alsa
	run recipe_variants
	assert_output_lines \
		target/sysroot target/default toolchain/gnu arch/x86_64 platform/generic-x64 version/1.0 \
		option/backend option/backend=alsa option/docs \
		target/default/arch/x86_64 arch/x86_64/option/docs \
		target/default/arch/x86_64/option/docs
}

@test "a named target selects sysroot and its own directory, not default" {
	select_target bootstrap
	run recipe_variants
	assert_output_lines target/sysroot target/bootstrap toolchain/gnu arch/x86_64 platform/generic-x64 version/1.0
}

@test "native selects the native class first and every comma list holding it" {
	select_target native
	run recipe_variants
	assert_output_lines \
		target/native target/native,cross toolchain/gnu arch/x86_64 platform/generic-x64 version/1.0 \
		target/native/arch/x86_64
}

@test "cross selects the cross class, never sysroot or default" {
	select_target cross
	run recipe_variants
	assert_output_lines target/cross target/native,cross toolchain/gnu arch/x86_64 platform/generic-x64 version/1.0
}

@test "arch and platform come from the platform configuration" {
	PLATFORM_NAME=rpi3-aarch64
	load_framework
	PKG_RECIPEPATH=${RECIPE}
	select_target ""
	run recipe_variants
	assert_output_lines target/sysroot target/default toolchain/gnu arch/aarch64 arch/arm,aarch64 platform/rpi3-aarch64 version/1.0
}

@test "version follows PKG_VER" {
	select_target ""
	PKG_VER=2.0
	run recipe_variants
	assert_output_lines target/sysroot target/default toolchain/gnu arch/x86_64 platform/generic-x64 version/2.0 target/default/arch/x86_64
}

@test "toolchain reads build --toolchain, then PKG_TOOLCHAIN, then TOOLCHAIN" {
	select_target ""
	PKG_VER=
	run recipe_variants
	[[ ${output} == *"toolchain/gnu"* ]]
	PKG_TOOLCHAIN=llvm
	run recipe_variants
	[[ ${output} == *"toolchain/llvm"* ]]
	[[ ${output} != *"toolchain/gnu"* ]]
	_param_toolchain=gnu
	run recipe_variants
	[[ ${output} == *"toolchain/gnu"* ]]
	[[ ${output} != *"toolchain/llvm"* ]]
}

@test "option/<name> is selected by WITH_<NAME> set to anything but 0, no, false, off" {
	select_target ""
	PKG_VER=
	local VALUE
	for VALUE in 0 no false off
	do
		WITH_DOCS=${VALUE}
		run recipe_variants
		[[ ${output} != *"option/docs"* ]]
	done
	unset WITH_DOCS
	run recipe_variants
	[[ ${output} != *"option/docs"* ]]
	for VALUE in 1 yes on anything
	do
		WITH_DOCS=${VALUE}
		run recipe_variants
		[[ ${output} == *"option/docs"* ]]
	done
}

@test "option/<name>=<value> is selected by a word of WITH_<NAME>" {
	select_target ""
	PKG_VER=
	WITH_BACKEND="alsa jack"
	run recipe_variants
	assert_output_lines target/sysroot target/default toolchain/gnu arch/x86_64 platform/generic-x64 \
		option/backend option/backend=alsa option/backend=jack target/default/arch/x86_64
	WITH_BACKEND=pulse
	run recipe_variants
	assert_output_lines target/sysroot target/default toolchain/gnu arch/x86_64 platform/generic-x64 \
		option/backend target/default/arch/x86_64
}

@test "a dash in an option name maps to an underscore in WITH_<NAME>" {
	make_recipe lfs/dashed <<-'EOF'
		PKG_VER=
	EOF
	mkdir -p "${RECIPE}/variants/option/with-tests"
	select_target ""
	PKG_VER=
	WITH_WITH_TESTS=1
	run recipe_variants
	assert_output_lines option/with-tests
}

@test "apply_recipe_variants sources the selected package.env files and records them" {
	make_recipe lfs/applied <<-'EOF'
		PKG_VER=1.0
		PKG_DEPS="lfs/a"
		CONF_FLAGS="--base"
	EOF
	put "${RECIPE}/variants/arch/x86_64/package.env" 'PKG_DEPS+=" lfs/c"'
	put "${RECIPE}/variants/version/1.0/package.env" 'CONF_FLAGS+=" --v1"'
	put "${RECIPE}/variants/version/2.0/package.env" 'CONF_FLAGS+=" --v2"'
	put "${RECIPE}/variants/toolchain/llvm/package.env" 'CONF_FLAGS+=" --llvm"'
	put "${RECIPE}/variants/target/stage1/package.env" $'PKG_VER=2.0\nPKG_DEPS="lfs/b"'
	put "${RECIPE}/variants/target/clang/package.env" 'PKG_TOOLCHAIN=llvm'
	mkdir -p "${RECIPE}/variants/option/docs"
	WITH_DOCS=1

	select_target ""
	source "${RECIPE}/package.env"
	apply_recipe_variants
	assert_equal "${PKG_VARIANTS}" "arch/x86_64 version/1.0 option/docs"
	assert_equal "${PKG_DEPS}" "lfs/a lfs/c"
	assert_equal "${CONF_FLAGS}" "--base --v1"
}

@test "a target variant may change PKG_VER: the version variant follows it" {
	make_recipe lfs/applied <<-'EOF'
		PKG_VER=1.0
		PKG_DEPS="lfs/a"
		CONF_FLAGS="--base"
	EOF
	put "${RECIPE}/variants/arch/x86_64/package.env" 'PKG_DEPS+=" lfs/c"'
	put "${RECIPE}/variants/version/1.0/package.env" 'CONF_FLAGS+=" --v1"'
	put "${RECIPE}/variants/version/2.0/package.env" 'CONF_FLAGS+=" --v2"'
	put "${RECIPE}/variants/target/stage1/package.env" $'PKG_VER=2.0\nPKG_DEPS="lfs/b"'

	select_target stage1
	source "${RECIPE}/package.env"
	apply_recipe_variants
	assert_equal "${PKG_VARIANTS}" "target/stage1 arch/x86_64 version/2.0"
	assert_equal "${PKG_VER}" "2.0"
	assert_equal "${PKG_DEPS}" "lfs/b lfs/c"
	assert_equal "${CONF_FLAGS}" "--base --v2"
}

@test "a target variant may set PKG_TOOLCHAIN: the toolchain variant follows it" {
	make_recipe lfs/applied <<-'EOF'
		PKG_VER=1.0
		CONF_FLAGS="--base"
	EOF
	put "${RECIPE}/variants/version/1.0/package.env" 'CONF_FLAGS+=" --v1"'
	put "${RECIPE}/variants/toolchain/llvm/package.env" 'CONF_FLAGS+=" --llvm"'
	put "${RECIPE}/variants/target/clang/package.env" 'PKG_TOOLCHAIN=llvm'

	select_target clang
	source "${RECIPE}/package.env"
	apply_recipe_variants
	assert_equal "${PKG_VARIANTS}" "target/clang toolchain/llvm version/1.0"
	assert_equal "${CONF_FLAGS}" "--base --llvm --v1"
}

@test "a conjunction is applied after the single directories it refines" {
	make_recipe lfs/applied <<-'EOF'
		PKG_VER=1.0
		ORDER=recipe
	EOF
	put "${RECIPE}/variants/target/default/arch/x86_64/package.env" 'ORDER+=" default+x86_64"'
	put "${RECIPE}/variants/target/default/package.env" 'ORDER+=" default"'
	put "${RECIPE}/variants/arch/x86_64/package.env" 'ORDER+=" x86_64"'

	select_target ""
	source "${RECIPE}/package.env"
	apply_recipe_variants
	assert_equal "${PKG_VARIANTS}" "target/default arch/x86_64 target/default/arch/x86_64"
	assert_equal "${ORDER}" "recipe default x86_64 default+x86_64"
}
