# TODO

## Rust built from its sources

`lfs/rust` installs the standalone installers of static.rust-lang.org: the binaries of the Rust project,
for the build machine (`:native`, `:native-std`) and for the image (the default target). The Rust of the
image could be built from the sources instead (`x.py`, with the LLVM of `lfs/llvm` through
`llvm-config`, no `download-ci-llvm`, and the platform toolchain), linked against the LLVM and the glibc
of the image: a cross build, first the compiler of the build machine, then the one of the target, with
cargo, rustfmt and clippy (about an hour, 10-20 GB). The stage 0 compiler of `x.py` stays a binary, and
the Rust of the build machine too: `setup_rust` runs before sccache and LLVM.

## gnutls with mold

`GCC_DEFAULT_LD=mold`, rpi3-aarch64, October 2026: `lfs/gnutls` 3.8.13 builds and links with mold
(`-fuse-ld=mold` in its log; `mold 2.42.1` in the `.comment` of `libgnutls.so.30`, `libgnutlsxx.so.30`,
`certtool`, `gnutls-cli`), and the symbol versions of its version script are there (`GNUTLS_3_4`,
`GNUTLS_3_7_0`, `GNUTLS_FIPS140_3_4`). Still to check in the image: a TLS connection with `gnutls-cli`,
and the programs of the two recipes that link it, `lfs/systemd` (`-Dgnutls=enabled`) and
`lfs/NetworkManager` (`-Dcrypto=gnutls`, with `LFS_ENABLENM=1`): which of them load `libgnutls.so.30`
is in their NEEDED once they are built.
