# shellcheck shell=bash
# shellcheck disable=SC2154
# allo-piano-firmware-master: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -d -m0755 ${PKG_PKGPATH}/lib/firmware/allo/piano/2.1 &&
install -d -m0755 ${PKG_PKGPATH}/lib/firmware/allo/piano/2.2 &&
install -m 0644 -D lib/firmware/allo/piano/2.1/* ${PKG_PKGPATH}/lib/firmware/allo/piano/2.1/ &&
install -m 0644 -D lib/firmware/allo/piano/2.2/* ${PKG_PKGPATH}/lib/firmware/allo/piano/2.2/
