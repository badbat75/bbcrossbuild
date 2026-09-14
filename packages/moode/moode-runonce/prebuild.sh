# shellcheck shell=bash
# shellcheck disable=SC2154
# moode-runonce: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

mkdir -p ${PKG_PKGPATH}/usr/local/bin
	cp ${SRC_PATH}/moode-pkgbuild_8/packages/runonce/runonce ${PKG_PKGPATH}/usr/local/bin/
	mkdir -p ${PKG_PKGPATH}/lib/systemd/system
	cp ${SRC_PATH}/moode-pkgbuild_8/packages/runonce/run_once.service ${PKG_PKGPATH}/lib/systemd/system
	mkdir -p ${PKG_PKGPATH}/etc/runonce.d/ran
