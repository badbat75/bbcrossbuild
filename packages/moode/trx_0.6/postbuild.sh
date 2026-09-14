# shellcheck shell=bash
# shellcheck disable=SC2154
# trx_0.6: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

mv ${PKG_PKGPATH}${INSTALL_PREFIX}/bin/rx ${PKG_PKGPATH}${INSTALL_PREFIX}/bin/trx-rx
	mv ${PKG_PKGPATH}${INSTALL_PREFIX}/bin/tx ${PKG_PKGPATH}${INSTALL_PREFIX}/bin/trx-tx
