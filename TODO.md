# TODO

## toolchain.functions as an orchestrator only

`toolchain.functions` still builds by hand what other code builds through `build`: the cross binutils
and gcc stages, the glibc headers and stage1 for the sysroot, the native and cross Python, Rust and
the autotools. Each of them should become a recipe (`packages/lfs/<name>`, with its `:native`/`:cross`
variants, `PKG_CHECK`, `PKG_DEPS`, `prebuild.sh`/`postbuild.sh`) built by the normal build process (the
global LLVM is `lfs/llvm:native` since October 2026, `setup_llvm` only orchestrates it), and
`setup_full_toolchain` should only call `build` in the right order and set the environment (PATH,
`CCWRAPPER`, the specs and clang configuration of the platform toolchain).

1. The native and cross Python (`setup_python`), Rust (`setup_rust`), the autotools. With Python a
   recipe, the lua and python of lldb (off in `lfs/llvm`: the native Python is built after LLVM, by
   clang with `TOOLCHAIN=llvm`) can become an option of `lfs/llvm`.
2. binutils, gcc and glibc, whose stages are interleaved: the hardest, last.
