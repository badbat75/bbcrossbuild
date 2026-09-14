# shellcheck shell=bash
# shellcheck disable=SC2154
# crda_4.15: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -v -D -m755 ${PKG_RECIPEPATH}/files/setregdomain.sh ${PKG_PKGPATH}/lib/crda/setregdomain
