# TODO

## Rust built from its sources

`lfs/rust` installs the standalone installers of static.rust-lang.org: the binaries of the Rust project,
for the build machine (`:native`, `:native-std`) and for the image (the default target). The Rust of the
image could be built from the sources instead (`x.py`, with the LLVM of `lfs/llvm` through
`llvm-config`, no `download-ci-llvm`, and the platform toolchain), linked against the LLVM and the glibc
of the image: a cross build, first the compiler of the build machine, then the one of the target, with
cargo, rustfmt and clippy (about an hour, 10-20 GB). The stage 0 compiler of `x.py` stays a binary, and
the Rust of the build machine too: `setup_rust` runs before sccache and LLVM.
