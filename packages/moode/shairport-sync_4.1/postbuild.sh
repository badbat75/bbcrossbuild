# shellcheck shell=bash
# shellcheck disable=SC2154
# shairport-sync_4.1: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -d ${PKG_PKGPATH}/usr/local/bin
		install -d ${PKG_PKGPATH}/usr/local/etc
		ln -fs /usr/bin/shairport-sync ${PKG_PKGPATH}/usr/local/bin/shairport-sync
		ln -fs /etc/shairport-sync.conf ${PKG_PKGPATH}/usr/local/etc/shairport-sync.conf
