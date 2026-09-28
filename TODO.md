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
   - the dracut of the image, run on the host by `kernelbuild`, takes every program from the
     native packages (`lfs/dracut:native` and its dependencies) except `ldconfig -r`: the static
     one of the target, through qemu-user, because glibc builds ldconfig only for the machine it
     runs on (the one of the host skips the libraries of another architecture);
   - go through the remaining lines one by one (docbook-utils, docbook2X, asciidoc, texinfo,
     gtk-doc, help2man, swig, gperf, flex, pandoc, intltool, the `*-devel` packages) and either
     give the tool a native recipe or drop the feature that needs it.

2. **The programs of the target the build runs: one wrapper, qemu only across architectures.**
   A target program run at build time goes through `qemu-<HM>-static` with `QEMU_LD_PREFIX` and
   `QEMU_CPU=max` (`build.functions`): the `exe_wrapper` of the meson cross file (with
   `needs_exe_wrapper`, which meson otherwise drops on a host of the same architecture), the
   `--use-binary-wrapper` that `g-ir-scanner.cross` of `lfs/gobject-introspection` puts first (meson's
   `generate_gir` does not pass the wrapper on), the `CMAKE_CROSSCOMPILING_EMULATOR` of `lfs/cmake`.
   On a host of the architecture of the target (generic-x64) the same wrapper could run the program
   natively through the dynamic loader of the sysroot (`<sysroot>/lib64/ld-linux-x86-64.so.2
   --library-path ...`): one script for the three places. Then a build of an ARM platform with the
   binfmt entry of qemu disabled finds every target program still run through binfmt behind the
   back of the framework (the ones generic-x64 found: `wayland-scanner`, `mesa_clc`, the
   introspection dumper, `bin/cmake`, `ical-glib-src-generator`; candidates: the GLib tools of
   `${pc_sysrootdir}` pc variables).

3. **`cmakebuild`: a cross build for CMake.** `-DCMAKE_CROSSCOMPILING=ON` does not last: CMake
   declares a cross build only for a `CMAKE_SYSTEM_NAME` given, so on generic-x64 every target build
   is native to CMake (`if(CMAKE_CROSSCOMPILING)` branches not taken, `try_run` natively).
   `lfs/libical` and `lfs/cmake` pass `CMAKE_SYSTEM_NAME`, `CMAKE_SYSTEM_PROCESSOR` and (cmake)
   `CMAKE_CROSSCOMPILING_EMULATOR` themselves; moving the three into `cmakebuild` fixes every package
   at once, but changes the ARM builds too: LLVM in cross mode builds its own native tablegen.

## Images and recipes found by the generic-x64 build

4. **Target files linked to libraries of the build host.** The generic-x64 sysroot has programs
   whose NEEDED are libraries of the Fedora container, not of the sysroot (checked with
   `readelf -d` against the sysroot): `lfs/gettext` (`libxml2.so.2`, `libncurses.so.6`,
   `libtinfo.so.6`: built after the `lt_sysroot` fix of `configmake`, so a lookup of its own,
   probably the gnulib `AC_LIB_LINKFLAGS` search of the prefix), `lfs/openldap` client and bootstrap
   (`libssl.so.3`, `libcrypto.so.3`: built before the fix, `-L/usr/lib64` in the relink), `lfs/gdb`
   (`libbfd-2.45.50.so`, `libopcodes-2.45.50.so` of the host binutils). On the ARM platforms the
   linker skips the libraries of the host, so the same bugs stay hidden there. A check after
   packaging (every NEEDED resolved inside the sysroot) would stop the build at the package.

5. **The GRUB font.** `unicode.pf2` is not built ("Without unifont (no build-time grub-mkfont)"):
   configure looks for unifont among the fonts of the host and needs a FreeType of the build machine
   for its build-time `grub-mkfont`. Needs an `lfs/FreeType:cross`, `BUILD_PKG_CONFIG` pointing at the
   toolchain and `--with-unifont=` the `unifont.pcf` of the sysroot. Without it GRUB shows the text
   menu (`loadfont` fails, harmless).

6. **Mesa for x86.** The gallium list of `lfs/Mesa` is the one of the ARM boards (v3d, vc4,
   freedreno, etnaviv, lima, panfrost...): generic-x64 gets llvmpipe, virgl, svga, zink and none of
   iris, crocus, radeonsi, r600, anv, radv. A `variants/arch/x86_64`.

7. **wireless-regdb.** cfg80211 finds no `regulatory.db` at boot: a recipe installing it under
   `/usr/lib/firmware` (with its signature) for the images with WiFi.

8. **Boot parameters.** `KERNEL_BOOTPARAMS` of `lfs.prj` carries `cgroup_enable=memory` on every
   platform: only the Raspberry Pi kernel knows it (cgroup v1 memory controller), the others print
   "Unknown kernel command line parameters" and hand it to user space.

9. **The version of the system.** `lfs/create-base-config` writes `20230217-systemd` into
   `/etc/os-release` and `/etc/lsb-release` (the banner of the login prompt): the version of the
   project or of bbxb instead.

10. **The ACLs of the journal.** The install of `lfs/systemd` runs `setfacl -nm g:adm:rx,...` on
    `/var/log/journal` and the build host has no `setfacl` (`|| :`): the image has no ACLs there, a
    post install command of the package would set them.

11. **generic-armv7 and generic-aarch64.** `platforms/generic-armv7.conf` has `KERNEL_IMAGE=bzImage`
    (an x86 name: `zImage`), and `lfs.prj` has no boot configuration for either: they boot only in
    QEMU with `-kernel`.

12. **Validate the round of fixes on ARM before 4.0.** rpi and rpi3-aarch64 rebuilt after the
    generic-x64 fixes (the dumper through `--use-binary-wrapper`, `build.pkg_config_path`,
    `needs_exe_wrapper`, `lt_sysroot`, no `LD_LIBRARY_PATH` in GLib, Avahi, Poppler and
    gobject-introspection); rpi3-aarch64 was also built with the preprocessor cache of sccache on.
