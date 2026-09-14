# shellcheck shell=bash
# shellcheck disable=SC2154
# unifont: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -vDdm755 ${PKG_PKGPATH}${INSTALL_SHAREDIR}/fonts/unifont
    gunzip -c ${PKG_SRCPATH}/unifont-${PKG_VER}.pcf.gz > ${PKG_PKGPATH}${INSTALL_SHAREDIR}/fonts/unifont/unifont.pcf
