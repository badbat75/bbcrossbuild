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

2. **Command lines without host paths: clang, and a clean validation.** Build systems copy the
   compiler command line into binaries (`openssl version -a`, vim `:version`, `lsof -v`, icu,
   `sudo -V`). The gnu toolchain no longer puts host paths there: programs by name, and the specs
   file of `setup_gcc_specs` gives the cross gcc the source path maps, the multiarch `-rpath-link`
   and the libgcc_s `-L`, so `settcenv` drops them and `--sysroot` (`GCC_HOST_PATH_SPECS`). Open:
   - clang has no specs file. A `<triple>-clang` symlink sets the target from its name, but a
     `<triple>.cfg` next to the symlink was not read: clang looks for configuration files in the
     directory of the real executable, which is the global llvm toolchain shared by every platform
     of a triple (two aarch64 platforms have two sysroots). To try: a hard link or a copy of clang
     in the platform toolchain (then the resource directory `lib/clang/<ver>` has to be found from
     there), `-no-canonical-prefixes` (itself a flag on the command line), a small wrapper
     program. Until then an llvm target build keeps `--target`, `--sysroot` and the maps in
     `CFLAGS` and `LDFLAGS`. The target in the name of the compiler would also fix a link that
     fails today: libtool 2.5 passes `--sysroot=*` to the compiler at link time but drops
     `--target=*`, so `lfs/sudo` does not build with llvm (`ld.lld: cannot open crti.o`, also with
     the framework before this change);
   - cmake builds: `-DCMAKE_SYSROOT` makes CMake add `--sysroot` itself and the cache holds the
     compilers by path, so their compile lines still name the host;
   - the first leaks `find_host_paths` reported: 38 of the 264 `.pyc` of `lfs/python3` record the
     staging directory as their source file, and the LTO objects of `libcrypto.a` and `libssl.a`
     record the build directory;
   - the change touches every build and was validated only by rebuilding a handful of packages in an
     existing data directory: validate it with a clean build of `lfs rpi3-aarch64` with
     `TOOLCHAIN=gnu` and with `TOOLCHAIN=llvm`, then read the `WARNING: host paths in` lines of the
     logs for what still leaks into the image.
