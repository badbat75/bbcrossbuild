# shellcheck shell=bash
# shellcheck disable=SC2154
# wireless-regdb: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -v -d -m755 ${PKG_PKGPATH}/lib/firmware
	install -v -m644 regulatory.db regulatory.db.p7s ${PKG_PKGPATH}/lib/firmware
