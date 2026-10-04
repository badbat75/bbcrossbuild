# shellcheck shell=bash
# shellcheck disable=SC2154
# template: custom build script, sourced by runmake.sh in the build directory (bash -ex).
# Only used when BUILD_PROCESS=custom; the toolchain environment (CC, CFLAGS, SYSROOT...) and
# every ALL_CAPS variable visible to package.env are available as ${VAR}.

./configure --prefix=${INSTALL_PREFIX} --host=${HARCH} --build=${BARCH}
make V=${MAKEVERBOSE:-0}
make DESTDIR=${PKG_PKGPATH} install
