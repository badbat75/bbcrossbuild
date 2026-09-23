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

## Packages

1. **NetworkManager manages the network of the lfs image.** Today `projects/lfs.prj` configures
   systemd-networkd: a `.network` file with DHCP for the wired interface and one for
   `LFS_WLANDEV`, `wpa_supplicant@<dev>` enabled with a configuration generated at build time
   (`wpa_passphrase`, mode 600), the `--any` drop-in of `systemd-networkd-wait-online`, and
   systemd-resolved for DNS. The goal is NetworkManager for wired and WiFi. Known steps:
   - new recipes: `lfs/NetworkManager` (meson) and its required `lfs/libndp`; check the
     dependency list against the current BLFS page. Already there: polkit, curl, libpsl, gnutls
     and nss (one crypto backend), gobject-introspection, iptables, libnl, bluez, and
     wpa_supplicant with its D-Bus interface (`CONFIG_CTRL_IFACE_DBUS_NEW`, the one NetworkManager
     drives). Missing, to add or leave out: newt and slang (`nmtui`), nftables (the firewall
     backend NetworkManager prefers to iptables), ModemManager with libmbim and libqmi, ppp, vala;
   - `lfs.prj`: the WiFi network becomes a keyfile profile in
     `/etc/NetworkManager/system-connections/` (mode 600, root; the secret never printed, as for
     the wpa_supplicant configuration today), the wired interface keeps the automatic DHCP
     connection of NetworkManager. `systemd-networkd`, its `.network` files, its wait-online
     drop-in and `wpa_supplicant@<dev>` go; `NetworkManager` and `NetworkManager-wait-online`
     get enabled, with wpa_supplicant started over D-Bus. DNS stays with systemd-resolved
     (`dns=systemd-resolved`), Avahi and nss-mdns stay as they are;
   - hostapd is built but disabled: an access point, if wanted, becomes a hotspot profile of
     NetworkManager;
   - validation: a full build, the QEMU boot check, then the board: wired and WiFi up after a
     reboot, `lfs.local` resolved, `nmcli` working, no failed units.
