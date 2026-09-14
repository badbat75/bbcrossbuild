# shellcheck shell=bash
# shellcheck disable=SC2154
# squeezelite_master: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -m 0755 -d ${PKG_PKGPATH}${INSTALL_EXECPREFIX}/bin
install -m 0755 squeezelite ${PKG_PKGPATH}${INSTALL_EXECPREFIX}/bin/squeezelite
install -d ${PKG_PKGPATH}/usr/local/bin
ln -fs /usr/bin/squeezelite ${PKG_PKGPATH}/usr/local/bin/squeezelite
