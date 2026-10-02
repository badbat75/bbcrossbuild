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

## The link options of Rust out of the sccache key

`settcenv` (`build.functions`) turns every link flag (`TOOLCHAIN_LINKERFLAGS`, `OPTLINK_FLAGS`,
`COMMON_LDFLAGS`, `PLATFORM_LDFLAGS`, `PKG_LDFLAGS`) into a `-C link-arg=` of `RUSTFLAGS`, and sccache
(`RUSTC_WRAPPER`) keys a crate on the command line of rustc, which leaves out only `-L`, `--extern`,
`--check-cfg`, `--out-dir` and `--diagnostic-width` (`src/compiler/rust.rs` of sccache 0.18.0, step 3
of the hash): a change of the linker or of its threads (`-fuse-ld=mold`,
`-Wl,--thread-count=${LINKPROCS}`) misses the cache for every crate, even the ones that link nothing.
Seen on rpi3-aarch64, October 2026: 212 Rust misses, no hit, after the move to mold and the change of
`LINKPROCS`. A `CARGO_TARGET_<TRIPLE>_RUSTFLAGS` would not help, it reaches the same command line.

Firefox does it with a linker wrapper (`build/cargo-linker` of mozilla-central, the linker of cargo
through `CARGO_TARGET_<TRIPLE>_LINKER`): the compiler and the link options travel in the environment
(`MOZ_CARGO_WRAP_LD`, `MOZ_CARGO_WRAP_LDFLAGS`) and the script runs one with the others. sccache hashes
only the `CARGO_*` variables of the environment and the ones the crate reads (`env!`, listed in its
dep-info; step 8), so the options stay out of the key. Here the
same would be a script of the platform toolchain as `-C linker=`, which runs `${TOOLCHAIN_CC}` with
the link flags of `environment.source` read from a variable that does not start with `CARGO_`; the
`-C link-arg=` of `RUSTFLAGS` go away.
