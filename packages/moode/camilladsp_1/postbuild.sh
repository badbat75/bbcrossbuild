# shellcheck shell=bash
# shellcheck disable=SC2154
# camilladsp_1: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

	mkdir -p ${PKG_PKGPATH}/usr/local/bin
	ln -fs /usr/bin/camilladsp ${PKG_PKGPATH}/usr/local/bin/camilladsp
