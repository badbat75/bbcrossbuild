# TODO

Deferred work found while moving every `lfs` recipe to the latest upstream versions (September 2026,
gcc 16.2, glibc 2.44, binutils 2.47, OpenSSL 4) and validating the result with a clean container build
of `lfs rpi3-aarch64`. Each item names the workaround the recipes carry today, so that removing the
workaround is part of closing the item.

## Framework

1. **Empty the bootstrap scripts: build the host tools in place.** The goal is to remove almost
   every line of `utilities/bootstrap.*` and of the `dnf install` list of `Dockerfile`, leaving the
   host a compiler, a shell and little else: every other tool a build runs becomes a `:native`
   (or `:cross`) package the framework builds, as `lfs/perl5:native`, `lfs/Tcl:native`,
   `lfs/mdbook:native` and `lfs/libical:cross` already are. Known steps:
   - the wayland documentation still runs `dot` (graphviz), `xsltproc` and the docbook XSL style
     sheets of the host, and the `ical-glib-src-generator` of `lfs/libical:cross` links the host
     libxml2 (`graphviz`, `libxslt`, `docbook-style-xsl`, `libxml2-devel` in the lists):
     candidates for `lfs/graphviz:native`, native libxslt and docbook-xsl, an `lfs/libxml2:cross`
     variant;
   - the native perl lives outside the `PATH` of the builds (`${GLOBAL_TOOLCHAIN_PATH}/perl5`,
     only `lfs/openssl` uses it): serving every build with it, built before the autotools, lets
     the `perl-*` host packages go once it also carries the non core modules the builds use
     (`XML::Parser` for intltool);
   - the native Python of `setup_python` links the host `openssl-devel`, `libffi-devel`,
     `libuuid-devel`, `tcl-devel`, `tk-devel`: native builds of those libraries (openssl and Tcl
     already have one);
   - go through the remaining lines one by one (docbook-utils, docbook2X, asciidoc, texinfo,
     gtk-doc, help2man, swig, gperf, flex, pandoc, intltool, the `*-devel` packages) and either
     give the tool a native recipe or drop the feature that needs it.

2. **mold as the default linker of every build.** Today `setbuildenv` (`build.functions`) links
   with `GCC_DEFAULT_LD` (`bfd`) for gnu and `LLVM_DEFAULT_LD` (`lld`) for llvm, and a recipe
   changes it with `PKG_OVERRIDELD`. The goal is `mold` for the native, cross and target builds
   of both toolchains, built by the framework rather than taken from the host. Known steps:
   - an `lfs/mold:native` recipe (CMake, C++20) in `setup_full_toolchain`, right after
     `lfs/cmake:native`: the native builds before it (sccache, make, the autotools, pkgconf,
     bison, cmake) keep linking with bfd. One mold binary links every target architecture, so
     the platform toolchain only needs the `${HARCH}-ld.mold` name that `TOOLCHAIN_LINKER_EXE`
     already gives for gnu;
   - `setbuildenv`: the defaults become `mold`, and the `case ${TOOLCHAIN_LINKER}` gets a `mold`
     branch (thread count, and `-Wl,--sysroot` as for bfd when the compiler has no
     `CC_HOST_PATH_CONFIG`). The native linker of the llvm branch reads `GCC_DEFAULT_LD` instead
     of `LLVM_DEFAULT_LD`: fix it on the way. Update the defaults in `configurations/bbxb.conf`
     and the `PKG_OVERRIDELD` entry of the README;
   - LTO: gcc hands mold its linker plugin as it does for bfd. clang links through `LLVMgold.so`
     (`setup_llvm` already builds it) instead of the LTO built into lld, so the
     `--thinlto-jobs` of the lld branch becomes a plugin option, and ThinLTO needs a check;
   - the linkers chosen outside `setbuildenv`: `LDFLAGS_FOR_BUILD` of the gcc bootstrap
     (`-fuse-ld=bfd` in `toolchain.functions`), `LLVM_USE_LINKER` of `setup_llvm`, the
     `LDFLAGS` of the native Python in `setup_python`, and the Rust link arguments of
     `lfs/dracut/build.sh`;
   - the recipes that force `PKG_OVERRIDELD=bfd` stay on bfd until each one is tried: glibc,
     binutils, GRUB, GRUB-EFI and efivar, plus the kernels, systemd and lvm2 with gnu. The Linux
     build accepts only GNU ld and lld;
   - validation: full `lfs rpi3-aarch64` builds with gnu and llvm from an empty data directory;
     `readelf -p .comment` shows which binaries mold linked.

3. **`build` does not visit the dependencies of a package already built.** When the checksum of
   a recipe matches its status file (or its `PKG_CHECK` succeeds), `build` returns "already
   built" before the `PKG_DEPS` loop (`build.functions`). A recipe the project reaches only as a
   dependency of packages already built is therefore never checked again: in September 2026 the
   edits of `lfs/libaudit` and `raspberrypi/raspberrypi-sys-mods` were not rebuilt on an existing
   data directory until a throwaway project called `build` on them directly. The status is the
   checksum of the recipe alone, so a rebuilt dependency does not rebuild its dependents either.
   Today the workaround is an empty `<project>` data directory, or deleting the status file of
   the changed recipe. Known steps:
   - walk `PKG_DEPS` before the early return too, so that a changed dependency is rebuilt; it
     costs one "already built" console line and one recipe sourcing per dependency visited, on
     every run;
   - decide whether a rebuilt dependency invalidates its dependents (a status that also records
     the checksums of the dependencies), or whether that stays a manual `--force`;
   - a bats test in `tests/` for the order: a changed dependency of an unchanged package is
     rebuilt.
