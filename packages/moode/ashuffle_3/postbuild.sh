# shellcheck shell=bash
# shellcheck disable=SC2154
# ashuffle_3: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -d ${PKG_PKGPATH}/usr/local/bin &&
ln -fs /usr/bin/ashuffle ${PKG_PKGPATH}/usr/local/bin/ashuffle
