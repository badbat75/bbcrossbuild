# shellcheck shell=bash
# shellcheck disable=SC2154
# camillagui-backend_1: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

mkdir -p ${PKG_PKGPATH}/opt/camillagui
    cp -frv ${PKG_SRCPATH}/* ${PKG_PKGPATH}/opt/camillagui
    cp -frv ${MOODE_CAMILLAGUI_PATH}/css-variables.css ${PKG_PKGPATH}/opt/camillagui/build/css-variables.css
    cp -frv ${MOODE_CAMILLAGUI_PATH}/camillagui.yml ${PKG_PKGPATH}/opt/camillagui/config
    cp -frv ${MOODE_CAMILLAGUI_PATH}/gui-config.yml ${PKG_PKGPATH}/opt/camillagui/config
    mkdir -p ${PKG_PKGPATH}/etc/systemd/system
    cp -frv ${MOODE_CAMILLAGUI_PATH}/camillagui.service ${PKG_PKGPATH}/etc/systemd/system
