# shellcheck shell=bash
# shellcheck disable=SC2154
# crda_4.15: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

echo '${SETREGDOMAINFILE}' >${PKG_PKGPATH}/lib/crda/setregdomain
	chmod +x ${PKG_PKGPATH}/lib/crda/setregdomain
