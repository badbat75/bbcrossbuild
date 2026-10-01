#!/usr/bin/env bats
# toolchain.bats: the pure helpers of toolchain.functions
# The tests set variables the sourced framework reads:
# shellcheck disable=SC2034

load test_helper

function setup () {
	load_framework
	### Sourcing toolchain.functions sets up the compilers of the host: the function alone
	eval "$( sed -n '/^function llvm_config_current () {$/,/^}$/p' "${BB_HOME}/toolchain.functions" )"
	CONFIG="${BATS_TEST_TMPDIR}/LLVMConfig.cmake"
	### The parts of LLVMConfig.cmake llvm_config_current reads, as build_llvm leaves them
	cat > "${CONFIG}" <<-EOF
		set(LLVM_ENABLE_FFI OFF)
		set(LLVM_ENABLE_LIBEDIT 1)
		if(LLVM_ENABLE_LIBEDIT)
		  set(LibEdit_ROOT ${GLOBAL_TOOLCHAIN_PATH})
		  find_package(LibEdit)
		endif()
		set(LLVM_ENABLE_ZLIB 1)
		if(LLVM_ENABLE_ZLIB)
		  set(ZLIB_ROOT ${GLOBAL_TOOLCHAIN_PATH})
		  find_package(ZLIB)
		endif()
		set(LLVM_ENABLE_ZSTD TRUE)
		if(LLVM_ENABLE_ZSTD)
		  set(zstd_ROOT ${GLOBAL_TOOLCHAIN_PATH})
		  find_package(zstd)
		endif()
		set(LLVM_ENABLE_LIBXML2 1)
		if(LLVM_ENABLE_LIBXML2)
		  set(LibXml2_ROOT ${GLOBAL_TOOLCHAIN_PATH})
		  find_package(LibXml2)
		endif()
	EOF
}

@test "llvm_config_current: the LLVM setup_llvm builds, its libraries in the global toolchain" {
	llvm_config_current "${CONFIG}"
}

@test "llvm_config_current: an LLVM with FFI is built again" {
	sed -i 's/^set(LLVM_ENABLE_FFI OFF)$/set(LLVM_ENABLE_FFI TRUE)/' "${CONFIG}"
	run llvm_config_current "${CONFIG}"
	[ "${status}" -eq 1 ]
}

@test "llvm_config_current: an LLVM without zstd or libedit is built again" {
	sed -i 's/^set(LLVM_ENABLE_ZSTD TRUE)$/set(LLVM_ENABLE_ZSTD OFF)/' "${CONFIG}"
	run llvm_config_current "${CONFIG}"
	[ "${status}" -eq 1 ]
	setup
	sed -i 's/^set(LLVM_ENABLE_LIBEDIT 1)$/set(LLVM_ENABLE_LIBEDIT 0)/' "${CONFIG}"
	run llvm_config_current "${CONFIG}"
	[ "${status}" -eq 1 ]
}

@test "llvm_config_current: an LLVMConfig.cmake that finds a library elsewhere is built again" {
	sed -i '/set(LibXml2_ROOT/d' "${CONFIG}"
	run llvm_config_current "${CONFIG}"
	[ "${status}" -eq 1 ]
	setup
	sed -i "s#set(zstd_ROOT .*)#set(zstd_ROOT /usr)#" "${CONFIG}"
	run llvm_config_current "${CONFIG}"
	[ "${status}" -eq 1 ]
}
