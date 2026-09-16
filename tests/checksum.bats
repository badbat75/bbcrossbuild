#!/usr/bin/env bats
# checksum.bats: recipe_checksum (build.functions), the md5 of a whole recipe directory that
# build stores as the package status
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154

load test_helper

setup () {
	load_framework
	make_recipe lfs/fixture <<-'EOF'
		PKG_VER=1.0
	EOF
	put "${RECIPE}/prebuild.sh" "sed -i s/a/b/ configure"
	put "${RECIPE}/files/etc/fixture.conf" "key=value"
	put "${RECIPE}/patches/00-fix.patch" "--- a\n+++ b"
	put "${RECIPE}/variants/arch/x86_64/package.env" 'CONF_FLAGS+=" --x86"'
}

@test "the checksum is a stable md5 that depends only on the directory content" {
	local FIRST SECOND
	FIRST=$(recipe_checksum "${RECIPE}")
	SECOND=$(recipe_checksum "${RECIPE}")
	[[ ${FIRST} =~ ^[0-9a-f]{32}$ ]]
	assert_equal "${SECOND}" "${FIRST}"
	cp -a "${RECIPE}" "${PKG_PATH}/lfs/copy"
	assert_equal "$(recipe_checksum "${PKG_PATH}/lfs/copy")" "${FIRST}"
}

@test "editing the recipe, a script, a static file, a patch or a variant changes it" {
	local BASE
	BASE=$(recipe_checksum "${RECIPE}")
	put "${RECIPE}/package.env" "PKG_VER=1.1"
	[ "$(recipe_checksum "${RECIPE}")" != "${BASE}" ]
	put "${RECIPE}/package.env" "PKG_VER=1.0"
	assert_equal "$(recipe_checksum "${RECIPE}")" "${BASE}"

	put "${RECIPE}/prebuild.sh" "sed -i s/a/c/ configure"
	[ "$(recipe_checksum "${RECIPE}")" != "${BASE}" ]
	put "${RECIPE}/prebuild.sh" "sed -i s/a/b/ configure"
	assert_equal "$(recipe_checksum "${RECIPE}")" "${BASE}"

	put "${RECIPE}/files/etc/fixture.conf" "key=other"
	[ "$(recipe_checksum "${RECIPE}")" != "${BASE}" ]
	put "${RECIPE}/files/etc/fixture.conf" "key=value"
	assert_equal "$(recipe_checksum "${RECIPE}")" "${BASE}"

	put "${RECIPE}/patches/00-fix.patch" "--- a\n+++ c"
	[ "$(recipe_checksum "${RECIPE}")" != "${BASE}" ]
	put "${RECIPE}/patches/00-fix.patch" "--- a\n+++ b"
	assert_equal "$(recipe_checksum "${RECIPE}")" "${BASE}"

	put "${RECIPE}/variants/arch/x86_64/package.env" 'CONF_FLAGS+=" --amd64"'
	[ "$(recipe_checksum "${RECIPE}")" != "${BASE}" ]
}

@test "renaming, adding or removing an entry changes it" {
	local BASE
	BASE=$(recipe_checksum "${RECIPE}")
	mv "${RECIPE}/patches/00-fix.patch" "${RECIPE}/patches/10-fix.patch"
	[ "$(recipe_checksum "${RECIPE}")" != "${BASE}" ]
	mv "${RECIPE}/patches/10-fix.patch" "${RECIPE}/patches/00-fix.patch"
	assert_equal "$(recipe_checksum "${RECIPE}")" "${BASE}"

	mkdir -p "${RECIPE}/variants/option/docs"
	[ "$(recipe_checksum "${RECIPE}")" != "${BASE}" ]
	rm -r "${RECIPE}/variants/option"
	assert_equal "$(recipe_checksum "${RECIPE}")" "${BASE}"

	rm "${RECIPE}/prebuild.sh"
	[ "$(recipe_checksum "${RECIPE}")" != "${BASE}" ]
}

@test "editor and patch leftovers are ignored" {
	local BASE
	BASE=$(recipe_checksum "${RECIPE}")
	put "${RECIPE}/package.env.bak" "old"
	put "${RECIPE}/patches/00-fix.patch.orig" "old"
	put "${RECIPE}/patches/00-fix.patch.rej" "old"
	put "${RECIPE}/prebuild.sh~" "old"
	put "${RECIPE}/.prebuild.sh.swp" "old"
	assert_equal "$(recipe_checksum "${RECIPE}")" "${BASE}"
}

@test "a symlink is hashed by its target name, never followed" {
	local BASE
	put "${BATS_TEST_TMPDIR}/outside" "one"
	ln -s "${BATS_TEST_TMPDIR}/outside" "${RECIPE}/files/link"
	BASE=$(recipe_checksum "${RECIPE}")
	put "${BATS_TEST_TMPDIR}/outside" "two"
	assert_equal "$(recipe_checksum "${RECIPE}")" "${BASE}"
	rm "${BATS_TEST_TMPDIR}/outside"
	assert_equal "$(recipe_checksum "${RECIPE}")" "${BASE}"
	ln -sfn "${BATS_TEST_TMPDIR}/elsewhere" "${RECIPE}/files/link"
	[ "$(recipe_checksum "${RECIPE}")" != "${BASE}" ]
}
