#!/usr/bin/env bats
# prefixes.bats: set_target_prefixes (build.functions), the install prefixes of the three
# build targets and the multiarch library suffix of the platform
# The tests set variables the sourced framework reads and read the ones it sets:
# shellcheck disable=SC1091,SC2016,SC2030,SC2031,SC2034,SC2154

load test_helper

@test "native installs into the global toolchain and never records a status" {
	load_framework
	PKG_FULLNAME=zlib_1.3
	unset NOSAVESTATUS
	set_target_prefixes native
	assert_equal "${PKG_TARGET_ENV}" "native"
	assert_equal "${PKG_PKGPATH}" ""
	assert_equal "${NOSAVESTATUS}" "1"
	assert_equal "${INSTALL_PREFIX}" "${GLOBAL_TOOLCHAIN_PATH}"
	assert_equal "${INSTALL_LIBDIR}" "${GLOBAL_TOOLCHAIN_PATH}/lib"
	assert_equal "${INSTALL_LIBSUFFIX}" ""
	assert_equal "${INSTALL_SYSCONFDIR}" "${GLOBAL_TOOLCHAIN_PATH}/etc"
}

@test "cross installs into the platform toolchain" {
	load_framework
	PKG_FULLNAME=zlib_1.3
	unset NOSAVESTATUS
	set_target_prefixes cross
	assert_equal "${PKG_TARGET_ENV}" "cross"
	assert_equal "${PKG_PKGPATH}" ""
	[ -z "${NOSAVESTATUS:-}" ]
	assert_equal "${INSTALL_PREFIX}" "${TOOLCHAIN_PATH}"
	assert_equal "${INSTALL_INCLUDEDIR}" "${TOOLCHAIN_PATH}/include"
	assert_equal "${INSTALL_LIBSUFFIX}" ""
}

@test "the default target installs into the sysroot through a staging directory" {
	load_framework
	PKG_FULLNAME=zlib_1.3
	set_target_prefixes ""
	assert_equal "${PKG_TARGET_ENV}" "target"
	assert_equal "${PKG_PKGPATH}" "${PACKAGES_PATH}/zlib_1.3"
	assert_equal "${INSTALL_PREFIX}" "/usr"
	assert_equal "${INSTALL_SYSCONFDIR}" "/etc"
	assert_equal "${INSTALL_LOCALSTATEDIR}" "/var"
	assert_equal "${INSTALL_SHAREDIR}" "/usr/share"
}

@test "a named target gets its own staging directory" {
	load_framework
	PKG_FULLNAME=glibc_2.40
	set_target_prefixes stage1
	assert_equal "${PKG_TARGET_ENV}" "target"
	assert_equal "${PKG_PKGPATH}" "${PACKAGES_PATH}/glibc_2.40-stage1"
	assert_equal "${INSTALL_PREFIX}" "/usr"
}

@test "generic-x64 sets HARCH_LIB=64: lib64 and no multiarch suffix" {
	load_framework
	assert_equal "${HARCH}" "x86_64-linux-gnu"
	PKG_FULLNAME=zlib_1.3
	set_target_prefixes ""
	assert_equal "${INSTALL_LIBDIR}" "/usr/lib64"
	assert_equal "${INSTALL_LIBSUFFIX}" ""
}

@test "rpi3-aarch64 leaves HARCH_LIB empty: lib plus the Debian multiarch suffix" {
	PLATFORM_NAME=rpi3-aarch64
	load_framework
	assert_equal "${HARCH}" "aarch64-linux-gnu"
	PKG_FULLNAME=zlib_1.3
	set_target_prefixes ""
	assert_equal "${INSTALL_LIBDIR}" "/usr/lib"
	assert_equal "${INSTALL_LIBSUFFIX}" "/aarch64-linux-gnu"
}

@test "MULTIARCH=0 disables the multiarch suffix" {
	PLATFORM_NAME=rpi3-aarch64
	MULTIARCH=0
	load_framework
	PKG_FULLNAME=zlib_1.3
	set_target_prefixes ""
	assert_equal "${INSTALL_LIBSUFFIX}" ""
}

@test "native and cross builds get the RUNPATH of the toolchains as one -Wl,-rpath, argument" {
	### meson keeps at install time only the rpaths of LDFLAGS written -Wl,-rpath,<dirs> (or =): the
	### two arguments -Wl,-rpath -Wl,<dirs> it drops when a dependency lives in the same directory
	load_framework
	setbuildenv --target native
	[[ " ${COMMON_LDFLAGS} " == *" -Wl,-rpath,${GLOBAL_TOOLCHAIN_PATH}/lib "* ]]
	[[ " ${COMMON_LDFLAGS} " != *" -Wl,-rpath "* ]]
	setbuildenv --target cross
	[[ " ${COMMON_LDFLAGS} " == *" -Wl,-rpath,${TOOLCHAIN_PATH}/lib:${GLOBAL_TOOLCHAIN_PATH}/lib "* ]]
	[[ " ${COMMON_LDFLAGS} " != *" -Wl,-rpath "* ]]
}
