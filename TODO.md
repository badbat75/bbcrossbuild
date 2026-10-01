# TODO

## toolchain.functions as an orchestrator only

`toolchain.functions` still builds by hand what other code builds through `build`: the cross binutils
and gcc stages, the glibc headers and stage1 for the sysroot, Rust. Each of them should become a
recipe (`packages/lfs/<name>`, with its `:native`/`:cross` variants, `PKG_CHECK`,
`PKG_DEPS`, `prebuild.sh`/`postbuild.sh`) built by the normal build process, and `setup_full_toolchain`
should only call `build` in the right order and set the environment (PATH, `CCWRAPPER`, the specs and
clang configuration of the platform toolchain). Done in October 2026: the global LLVM
(`lfs/llvm:native`, `setup_llvm`), the Python (`lfs/python3:native` and `:crossenv`, `setup_python`)
and the autotools (`lfs/{libtool,autoconf,automake,gettext}:native`, `setup_autotools` is gone).

1. Rust (`setup_rust`).
2. binutils, gcc and glibc, whose stages are interleaved: the hardest, last.

## lldb with lua and python

Off in every target of `lfs/llvm`: `lfs/python3:native` is built after `lfs/llvm:native` (by its clang
with `TOOLCHAIN=llvm`), and there is no lua for the build machine. An option of `lfs/llvm` once the
order allows it.
