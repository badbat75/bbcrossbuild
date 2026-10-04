#!/usr/bin/env bats
# recipe_files.bats: patch_list, recipe_patches and recipe_script (build.functions), the
# files a build takes from the recipe directory and from the selected variants
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154

load test_helper

setup () {
	load_framework
	make_recipe lfs/fixture <<-'EOF'
		PKG_VER=1.0
	EOF
}

@test "patch_list takes *.patch and *.diff files in the byte order of their names" {
	put "${RECIPE}/patches/10-second.patch" "b"
	put "${RECIPE}/patches/00-first.diff" "a"
	put "${RECIPE}/patches/2-tenth.patch" "c"
	put "${RECIPE}/patches/README.md" "not a patch"
	put "${RECIPE}/patches/notes.txt" "not a patch"
	put "${RECIPE}/patches/sub/nested.patch" "not at the top"
	run patch_list "${RECIPE}"
	[ "${status}" -eq 0 ]
	assert_output_lines "${RECIPE}/patches/00-first.diff" "${RECIPE}/patches/10-second.patch" "${RECIPE}/patches/2-tenth.patch"
}

@test "patch_list is empty without a patches directory" {
	run patch_list "${RECIPE}"
	[ "${status}" -eq 0 ]
	assert_output_lines
}

@test "a later directory replaces a patch of the same name, an empty file cancels it" {
	put "${RECIPE}/patches/00-a.patch" "recipe a"
	put "${RECIPE}/patches/10-b.patch" "recipe b"
	put "${RECIPE}/patches/20-c.patch" "recipe c"
	put "${RECIPE}/variants/arch/x86_64/patches/10-b.patch" "variant b"
	put "${RECIPE}/variants/arch/x86_64/patches/20-c.patch"
	put "${RECIPE}/variants/arch/x86_64/patches/05-d.patch" "variant d"
	run patch_list "${RECIPE}" "${RECIPE}/variants/arch/x86_64"
	assert_output_lines \
		"${RECIPE}/patches/00-a.patch" \
		"${RECIPE}/variants/arch/x86_64/patches/05-d.patch" \
		"${RECIPE}/variants/arch/x86_64/patches/10-b.patch"
}

@test "recipe_patches walks the recipe and the selected variants in application order" {
	put "${RECIPE}/patches/00-a.patch" "recipe a"
	put "${RECIPE}/variants/arch/x86_64/patches/00-a.patch" "arch a"
	put "${RECIPE}/variants/version/1.0/patches/10-b.patch" "version b"
	put "${RECIPE}/variants/option/docs/patches/00-a.patch" "not selected"
	PKG_VARIANTS="arch/x86_64 version/1.0"
	run recipe_patches
	assert_output_lines \
		"${RECIPE}/variants/arch/x86_64/patches/00-a.patch" \
		"${RECIPE}/variants/version/1.0/patches/10-b.patch"
}

@test "recipe_script prefers the last selected variant that carries the script" {
	put "${RECIPE}/prebuild.sh" "recipe"
	put "${RECIPE}/variants/toolchain/llvm/prebuild.sh" "llvm"
	put "${RECIPE}/variants/arch/x86_64/prebuild.sh" "x86_64"
	put "${RECIPE}/variants/version/1.0/postbuild.sh" "post"
	PKG_VARIANTS="toolchain/llvm arch/x86_64 version/1.0"
	run recipe_script prebuild.sh
	assert_output_lines "${RECIPE}/variants/arch/x86_64/prebuild.sh"
	run recipe_script postbuild.sh
	assert_output_lines "${RECIPE}/variants/version/1.0/postbuild.sh"
}

@test "recipe_script falls back to the recipe script and prints nothing without one" {
	put "${RECIPE}/postbuild.sh" "recipe"
	mkdir -p "${RECIPE}/variants/arch/x86_64"
	PKG_VARIANTS="arch/x86_64"
	run recipe_script postbuild.sh
	assert_output_lines "${RECIPE}/postbuild.sh"
	run recipe_script build.sh
	[ "${status}" -eq 0 ]
	assert_output_lines
}
