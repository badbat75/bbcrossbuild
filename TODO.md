# TODO

## toolchain.functions as an orchestrator only

`toolchain.functions` still builds by hand what other code builds through `build`: the cross binutils
and gcc stages, the glibc headers and stage1 for the sysroot, the global LLVM (`setup_llvm`: download,
cmake, ninja, the `LLVMConfig.cmake` fix-up, the compiler-rt profile runtime), the native and cross
Python, Rust and the autotools. Each of them should become a recipe (`packages/lfs/<name>`, with its
`:native`/`:cross` variants, `PKG_CHECK`, `PKG_DEPS`, `prebuild.sh`/`postbuild.sh`) built by the normal
build process, and `setup_full_toolchain` should only call `build` in the right order and set the
environment (PATH, `CCWRAPPER`, the specs and clang configuration of the platform toolchain).

1. **LLVM first.** The global LLVM as a recipe; `lfs/llvm` already holds the target builds and a
   `:native` variant that installs only `llvm-tblgen`, so the target name and the install prefix
   (`${GLOBAL_TOOLCHAIN_PATH}/llvm-${LLVM_VER}`, which `setup_clang_config`, `lfs/libclc` and
   `lfs/Vulkan-SPIRV-LLVM-Translator` name) have to be decided. Its libraries become plain
   `PKG_DEPS` (`lfs/zstd:native`, `lfs/libxml2:native`, `lfs/libedit:native`...), and with a recipe the
   lua and python of lldb (off today: the native Python is built after LLVM, by clang with
   `TOOLCHAIN=llvm`) can be an option of the recipe.
2. The native and cross Python (`setup_python`), Rust (`setup_rust`), the autotools.
3. binutils, gcc and glibc, whose stages are interleaved: the hardest, last.
