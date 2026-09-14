# shellcheck shell=bash
# shellcheck disable=SC2154
# alsacap: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -d ${PKG_PKGPATH}${INSTALL_PREFIX}/bin &&
install -d ${PKG_PKGPATH}${INSTALL_PREFIX}/share/man/man1 &&
install -D -m 755 -s --strip-program=${HARCH:+${HARCH}-}strip alsacap ${PKG_PKGPATH}${INSTALL_PREFIX}/bin &&
install -D -m 644 alsacap.1 ${PKG_PKGPATH}${INSTALL_PREFIX}/share/man/man1/alsacap.1
install -d ${PKG_PKGPATH}/usr/local/bin &&
ln -fs /usr/bin/alsacap ${PKG_PKGPATH}/usr/local/bin/alsacap
