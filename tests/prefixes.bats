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

@test "cross-<name> and native-<name> are of the cross and native class" {
	load_framework
	PKG_FULLNAME=gcc_16.2.0
	unset NOSAVESTATUS
	set_target_prefixes cross-stage1
	assert_equal "${PKG_TARGET_ENV}" "cross"
	assert_equal "${PKG_PKGPATH}" ""
	[ -z "${NOSAVESTATUS:-}" ]
	assert_equal "${INSTALL_PREFIX}" "${TOOLCHAIN_PATH}"
	set_target_prefixes native-stage1
	assert_equal "${PKG_TARGET_ENV}" "native"
	assert_equal "${NOSAVESTATUS}" "1"
	assert_equal "${INSTALL_PREFIX}" "${GLOBAL_TOOLCHAIN_PATH}"
	### Only the prefix with its dash: a name that merely starts with cross is a sysroot one
	set_target_prefixes crossenv
	assert_equal "${PKG_TARGET_ENV}" "target"
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

@test "the environment of a native build reads the pc files of the global toolchain only, a cross one the platform toolchain first; the flags of the build machine" {
	load_framework
	PKG_FULLNAME=zlib_1.3
	PKG_BLDPATH="${BATS_TEST_TMPDIR}/build"
	OPTCOMP_FLAGS="-fno-semantic-interposition"
	### pkgtools.functions stubs create_environment_source out: the real one here
	eval "$( source "${BB_HOME}/build.functions" > /dev/null; declare -f create_environment_source )"
	run_cmd () { eval "${1}" > /dev/null; }
	setbuildenv --target native
	create_environment_source --target native
	run grep '^export PKG_CONFIG_LIBDIR=' "${PKG_BLDPATH}/environment.source"
	assert_equal "${output}" "export PKG_CONFIG_LIBDIR='${GLOBAL_TOOLCHAIN_PATH}/lib/pkgconfig:${GLOBAL_TOOLCHAIN_PATH}/share/pkgconfig'"
	setbuildenv --target cross
	create_environment_source --target cross
	run grep '^export PKG_CONFIG_LIBDIR=' "${PKG_BLDPATH}/environment.source"
	assert_equal "${output}" "export PKG_CONFIG_LIBDIR='${TOOLCHAIN_PATH}/lib/pkgconfig:${TOOLCHAIN_PATH}/share/pkgconfig:${GLOBAL_TOOLCHAIN_PATH}/lib/pkgconfig:${GLOBAL_TOOLCHAIN_PATH}/share/pkgconfig'"
	### The flags of the build machine keep -march=native apart from the OPTCOMP_FLAGS of the configuration
	run bash -c "source '${PKG_BLDPATH}/environment.source'; echo \"\${CFLAGS_FOR_BUILD}\""
	[[ " ${output} " == " -march=native -fno-semantic-interposition "* ]]
	### MOLD_JOBS travels to the builds only when it is set
	run grep -c '^export MOLD_JOBS=' "${PKG_BLDPATH}/environment.source"
	assert_equal "${output}" 0
	MOLD_JOBS=1 create_environment_source --target cross
	run grep '^export MOLD_JOBS=' "${PKG_BLDPATH}/environment.source"
	assert_equal "${output}" "export MOLD_JOBS='1'"
}

@test "cargo_target: the Rust target of the platform, or of the build machine" {
	load_framework
	assert_equal "$(cargo_target)" "x86_64-unknown-linux-gnu"
	BM=aarch64 BOS=linux BLIBC=gnu
	assert_equal "$(cargo_target build)" "aarch64-unknown-linux-gnu"
	HM=arm HLIBC=gnueabihf
	assert_equal "$(cargo_target)" "arm-unknown-linux-gnueabihf"
}

@test "settcenv keeps OPTCOMP_FLAGS and OPTLINK_FLAGS of the configuration and adds the -O of OPTLEVEL to both" {
	load_framework
	OPTCOMP_FLAGS="-fno-semantic-interposition" OPTLINK_FLAGS="-Wl,-O1" OPTLEVEL=3 LTOENABLE=thin
	settcenv --target target
	[[ " ${OPTCOMP_FLAGS} " == " -fno-semantic-interposition "*" -O3 " ]]
	[[ " ${OPTLINK_FLAGS} " == " -Wl,-O1 "*" -O3 " ]]
	### A second call starts again from the configuration: nothing piles up
	local FIRST_COMP=${OPTCOMP_FLAGS} FIRST_LINK=${OPTLINK_FLAGS}
	settcenv --target target
	assert_equal "${OPTCOMP_FLAGS}" "${FIRST_COMP}"
	assert_equal "${OPTLINK_FLAGS}" "${FIRST_LINK}"
	### and a debug build has -g apart from the flags of the configuration, at level 2
	PKG_DEBUG=1 settcenv --target target
	[[ " ${OPTCOMP_FLAGS} " == *" -g "* ]]
	[[ " ${OPTCOMP_FLAGS} " == *" -O2 " ]]
}

@test "the threads of one mold are LINKPROCS, for the target and for the build machine" {
	load_framework
	assert_equal "${LINKPROCS}" "$(( $(nproc) / 2 > 0 ? $(nproc) / 2 : 1 ))"
	LINKPROCS=5
	PATH="${BATS_TEST_TMPDIR}/bin:${PATH}"
	mkdir -p "${BATS_TEST_TMPDIR}/bin"
	ln -s /bin/true "${BATS_TEST_TMPDIR}/bin/ld.mold"
	### the cross gcc the target branch of settcenv looks for
	ln -s /bin/true "${BATS_TEST_TMPDIR}/bin/${HARCH}-gcc"
	TOOLCHAIN=gnu GCC_DEFAULT_LD=mold settcenv --target target
	[[ " ${TOOLCHAIN_LINKERFLAGS} " == *" -fuse-ld=mold "*" -Wl,--thread-count=5 "* ]]
	[[ " ${TOOLCHAIN_LINKERFLAGS_FOR_BUILD} " == *" -Wl,--thread-count=5 "* ]]
}
