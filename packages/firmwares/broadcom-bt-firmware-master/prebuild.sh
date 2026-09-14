# shellcheck shell=bash
# shellcheck disable=SC2154
# broadcom-bt-firmware-master: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -d -m0755 ${PKG_PKGPATH}/lib/firmware/brcm &&
install -m 0644 -D brcm/* ${PKG_PKGPATH}/lib/firmware/brcm/
