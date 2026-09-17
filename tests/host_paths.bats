#!/usr/bin/env bats
# host_paths.bats: strip_host_paths of build.functions, the rewrite of the files a target build
# installs to record how it was built (compiler wrapper, toolchain programs, sysroot flags and paths)
# The tests set variables the sourced framework reads:
# shellcheck disable=SC1091,SC2016,SC2034

load test_helper

setup () {
	load_framework
	### pkgtools.functions stubs run_cmd out: the sed has to run
	# shellcheck disable=SC2329
	function run_cmd () { eval "${*}"; }
	PKG_TARGET_ENV=target
	BIN_PATH=/data/lfs/rpi/binaries
	SYSROOT=${BIN_PATH}
	TOOLCHAIN_PATH=/data/lfs/rpi/toolchain
	GLOBAL_TOOLCHAIN_PATH=/data/toolchain
	CCWRAPPER=${GLOBAL_TOOLCHAIN_PATH}/bin/sccache
	TARGET_INCLUDEDIR=/usr/include
	TARGET_LIBDIR=/usr/lib
	TARGET_LIBSUFFIX=/aarch64-linux-gnu
	RECORD="${BATS_TEST_TMPDIR}/record"
}

@test "strip_host_paths drops the compiler wrapper and the directory of the toolchain programs" {
	cat > "${RECORD}" <<-'EOF'
		CC="/data/toolchain/bin/sccache /data/lfs/rpi/toolchain/bin/aarch64-linux-gnu-gcc"
		AR=/data/lfs/rpi/toolchain/bin/aarch64-linux-gnu-gcc-ar
		'CC': '/data/toolchain/bin/sccache /data/toolchain/llvm-23.1.1/bin/clang --target=aarch64-linux-gnu',
		PYTHON_FOR_FREEZE=/data/toolchain/python-3.14.7/bin/python3 /data/toolchain/lib/tool.py
	EOF
	strip_host_paths "${RECORD}"
	run cat "${RECORD}"
	assert_output_lines 'CC="aarch64-linux-gnu-gcc"' \
		'AR=aarch64-linux-gnu-gcc-ar' \
		"'CC': 'clang --target=aarch64-linux-gnu'," \
		'PYTHON_FOR_FREEZE=python3 /data/toolchain/lib/tool.py'
}

@test "strip_host_paths drops the flags into the sysroot and the toolchains, also one after the other" {
	cat > "${RECORD}" <<-'EOF'
		LDFLAGS='--sysroot=/data/lfs/rpi/binaries -fuse-ld=bfd -Wl,--sysroot=/data/lfs/rpi/binaries -Wl,-rpath-link,/data/lfs/rpi/binaries/usr/lib/aarch64-linux-gnu -L/data/lfs/rpi/toolchain/lib/gcc/aarch64-linux-gnu/lib64 -fuse-linker-plugin'
		cflags="-I/data/lfs/rpi/binaries/usr/include -I/data/lfs/rpi/binaries/usr/include/libxml2 -I/data/toolchain/include"
		libs="-L/data/lfs/rpi/binaries/usr/lib/aarch64-linux-gnu/ -lxslt -L/data/lfs/rpi/binaries/usr/lib/aarch64-linux-gnu/private -lxml2"
		config_args='--with-sysroot=/data/lfs/rpi/binaries --prefix=/usr'
	EOF
	strip_host_paths "${RECORD}"
	run tr -s ' ' < "${RECORD}"
	assert_output_lines "LDFLAGS=' -fuse-ld=bfd -fuse-linker-plugin'" \
		'cflags=" -I/usr/include/libxml2 "' \
		'libs=" -lxslt -L/usr/lib/aarch64-linux-gnu/private -lxml2"' \
		"config_args='--with-sysroot= --prefix=/usr'"
}

@test "strip_host_paths removes the sysroot in front of a path, CMAKE_SYSROOT takes its place with --cmake" {
	cat > "${RECORD}" <<-'EOF'
		sysroot='/data/lfs/rpi/binaries'
		INTERFACE_LINK_LIBRARIES "/data/lfs/rpi/binaries/usr/lib/aarch64-linux-gnu/libX11.so;m"
		OTHER=/data/lfs/rpi/binaries2/usr/lib
	EOF
	cp "${RECORD}" "${RECORD}.cmake"
	strip_host_paths "${RECORD}"
	run cat "${RECORD}"
	assert_output_lines "sysroot=''" \
		'INTERFACE_LINK_LIBRARIES "/usr/lib/aarch64-linux-gnu/libX11.so;m"' \
		'OTHER=/data/lfs/rpi/binaries2/usr/lib'
	strip_host_paths --cmake "${RECORD}.cmake"
	run cat "${RECORD}.cmake"
	assert_output_lines "sysroot='\${CMAKE_SYSROOT}'" \
		'INTERFACE_LINK_LIBRARIES "${CMAKE_SYSROOT}/usr/lib/aarch64-linux-gnu/libX11.so;m"' \
		'OTHER=/data/lfs/rpi/binaries2/usr/lib'
}

@test "strip_host_paths leaves the files of native and cross builds alone" {
	put "${RECORD}" 'CC="/data/toolchain/bin/sccache /data/lfs/rpi/toolchain/bin/gcc --sysroot=/data/lfs/rpi/binaries"'
	cp "${RECORD}" "${RECORD}.orig"
	for PKG_TARGET_ENV in native cross
	do
		strip_host_paths "${RECORD}"
		cmp "${RECORD}" "${RECORD}.orig"
	done
}
