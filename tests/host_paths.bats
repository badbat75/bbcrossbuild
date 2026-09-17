#!/usr/bin/env bats
# host_paths.bats: strip_host_paths of build.functions, the rewrite of the files a target build
# installs to record how it was built (compiler wrapper, toolchain programs, sysroot flags and paths),
# host_path_maps, the source path maps of the compilers of a target build, gcc_host_path_specs, what
# the specs file of the cross gcc adds, and find_host_paths, the files of a package naming the host
# The tests set variables the sourced framework reads:
# shellcheck disable=SC1091,SC2016,SC2034

load test_helper

setup () {
	load_framework
	### pkgtools.functions stubs run_cmd out: the sed has to run
	# shellcheck disable=SC2329
	function run_cmd () { eval "${*}"; }
	PKG_TARGET_ENV=target
	DATA_PATH=/data
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
		U_CC="sccache aarch64-linux-gnu-gcc" U_CXX='sccache aarch64-linux-gnu-g++'
		LAUNCHER=mysccache gcc
	EOF
	strip_host_paths "${RECORD}"
	run cat "${RECORD}"
	assert_output_lines 'CC="aarch64-linux-gnu-gcc"' \
		'AR=aarch64-linux-gnu-gcc-ar' \
		"'CC': 'clang --target=aarch64-linux-gnu'," \
		'PYTHON_FOR_FREEZE=python3 /data/toolchain/lib/tool.py' \
		"U_CC=\"aarch64-linux-gnu-gcc\" U_CXX='aarch64-linux-gnu-g++'" \
		'LAUNCHER=mysccache gcc'
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

@test "strip_host_paths drops the source path maps of the compilers" {
	cat > "${RECORD}" <<-'EOF'
		CFLAGS='--sysroot=/data/lfs/rpi/binaries -O2 -ffile-prefix-map=/data=/usr/src/bbxb -ffile-prefix-map=/data/lfs/rpi/binaries= -g'
		'CONFIG_ARGS': "CFLAGS=-fmacro-prefix-map=/data/lfs/sources/python3=/usr/lib/python3.14/config -fdebug-prefix-map=/x=/y -Wall",
		RUSTFLAGS="-C linker=aarch64-linux-gnu-gcc --remap-path-scope=object --remap-path-prefix=/data=/usr/src/bbxb"
	EOF
	strip_host_paths "${RECORD}"
	run tr -s ' ' < "${RECORD}"
	assert_output_lines "CFLAGS=' -O2 -g'" \
		"'CONFIG_ARGS': \"CFLAGS= -Wall\"," \
		'RUSTFLAGS="-C linker=aarch64-linux-gnu-gcc "'
}

@test "host_path_maps maps the data directory, then every sysroot to the image" {
	run host_path_maps
	assert_output_lines '/data=/usr/src/bbxb' \
		'/data/lfs/rpi/binaries='
	SYSROOT=/data/lfs/rpi/distos
	run host_path_maps
	assert_output_lines '/data=/usr/src/bbxb' \
		'/data/lfs/rpi/binaries=' \
		'/data/lfs/rpi/distos='
}

@test "gcc_host_path_specs gives the maps to the compilers and the assembler, the library directories to the linker" {
	run gcc_host_path_specs /data/lfs/rpi/toolchain/lib/gcc/aarch64-linux-gnu/lib64
	assert_output_lines '*cc1:' \
		'+ -ffile-prefix-map=/data=/usr/src/bbxb -ffile-prefix-map=/data/lfs/rpi/binaries=' \
		'' \
		'*asm:' \
		'+ --debug-prefix-map /data=/usr/src/bbxb --debug-prefix-map /data/lfs/rpi/binaries=' \
		'' \
		'*link:' \
		'+ -rpath-link %R/usr/lib/aarch64-linux-gnu -L/data/lfs/rpi/toolchain/lib/gcc/aarch64-linux-gnu/lib64'
	run gcc_host_path_specs
	assert_equal "$(tail -n 1 <<< "${output}")" '+ -rpath-link %R/usr/lib/aarch64-linux-gnu'
}

@test "find_host_paths lists the files naming the data directory or the checkout, and the links into them" {
	local STAGE="${BATS_TEST_TMPDIR}/stage"
	put "${STAGE}/usr/lib/pkgconfig/foo.pc" 'prefix=/usr'
	printf 'ELF\0/data/lfs/sources/foo_1.0/foo.c\0' > "${STAGE}/usr/lib/libfoo.so.1"
	put "${STAGE}/etc/foo.conf" "include ${BB_HOME}/packages/lfs/foo/files/foo.conf"
	ln -s /data/lfs/rpi/binaries/usr/lib/libfoo.so.1 "${STAGE}/usr/lib/libfoo.so"
	ln -s libfoo.so.1 "${STAGE}/usr/lib/libfoo.so.1.0"
	### A FIFO is skipped, not read
	mkfifo "${STAGE}/usr/lib/fifo"
	run find_host_paths "${STAGE}/"
	assert_output_lines 'etc/foo.conf' \
		'usr/lib/libfoo.so' \
		'usr/lib/libfoo.so.1'
	rm -f "${STAGE}/etc/foo.conf" "${STAGE}/usr/lib/libfoo.so" "${STAGE}/usr/lib/libfoo.so.1"
	run find_host_paths "${STAGE}"
	assert_output_lines
	run find_host_paths "${BATS_TEST_TMPDIR}/missing"
	assert_output_lines
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
