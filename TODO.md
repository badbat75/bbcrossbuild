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
   - m4: the flex, bison and autotools of the toolchain run the one of the host, whose path their
     configure recorded (`/usr/bin/m4`); an `lfs/m4:native` built first, and those rebuilt with it
     (their `PKG_CHECK` is the version only, so it does not happen by itself);
   - go through the remaining lines one by one (docbook-utils, docbook2X, asciidoc, texinfo,
     gtk-doc, help2man, swig, gperf, pandoc, intltool, the `*-devel` packages) and either
     give the tool a native recipe or drop the feature that needs it.

   Done: the dracut of the kernel recipes (`dracut-sysroot`) takes every program from native packages (`lfs/dracut:native`
   and its dependencies; only `ldconfig -r` is the static one of the target, through qemu-user,
   because glibc builds ldconfig only for its own machine); flex and doxygen left the `Dockerfile`
   (`setup_binutils` and `setup_gcc` build `lfs/flex:native` and `lfs/doxygen:native` before any
   package, first in the `PATH`).

2. **Validate this round on ARM before 4.0.** rpi and rpi3-aarch64 rebuilt with what the generic-x64
   build changed: the dumper of introspection, `mesa_clc`, the `try_run` of CMake through
   `<HARCH>-run` (`target_runner_script`, qemu across machines), `cmakebuild` as a cross build for CMake
   (`CMAKE_SYSTEM_NAME`: LLVM then takes its tablegen from `LLVM_NATIVE_TOOL_DIR`),
   `build.pkg_config_path`, `needs_exe_wrapper`, `lt_sysroot`, the check of the NEEDED of every package
   (`unresolved_needed`), no `LD_LIBRARY_PATH` in GLib, Avahi, Poppler and gobject-introspection, the
   gallium drivers of lfs/Mesa in `MESA_GALLIUM_DRIVERS`; rpi3-aarch64 also with the preprocessor cache
   of sccache on. With the binfmt entry of qemu disabled during the package builds (`echo 0 >
   /proc/sys/fs/binfmt_misc/qemu-aarch64`; the image steps chroot through it), every program of the
   target still run behind the back of `<HARCH>-run` fails (candidates: the GLib tools of the
   `${pc_sysrootdir}` pc variables).

3. **generic-aarch64 and generic-armv7: build and boot.** `lfs.prj` gives them GRUB `arm64-efi` and
   `arm-efi` in the EFI system partition (`LFS_EFI=1`, `grub.cfg` with the console on `ttyAMA0` and the
   one of the UEFI firmware, no gfxterm), `platforms/generic-armv7.conf` builds `zImage`, and `bbxb
   emulator` boots them with the UEFI firmware of QEMU for ARM (edk2-aarch64 / AAVMF, `edk2-arm-*.fd`
   of QEMU for armv7: Fedora packages none for arm). None of it has run yet: GRUB built for arm, the
   EFI stub of `multi_v7_defconfig`, `grub-install --target=arm-efi` in the chroot.
