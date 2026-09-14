# shellcheck shell=bash
# shellcheck disable=SC2154
# upmpdcli_1.5: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

mkdir -p ${PKG_PKGPATH}/lib/systemd/system
	cp ${PKG_SRCPATH}/systemd/upmpdcli.service ${PKG_PKGPATH}/lib/systemd/system/
	mkdir -pv ${PKG_PKGPATH}/var/cache/upmpdcli/ohcreds
	openssl genrsa -out ${PKG_PKGPATH}/var/cache/upmpdcli/ohcreds/credkey.pem 4096
	chmod 600 ${PKG_PKGPATH}/var/cache/upmpdcli/ohcreds/credkey.pem
