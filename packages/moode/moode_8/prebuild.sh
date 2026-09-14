# shellcheck shell=bash
# shellcheck disable=SC2154
# moode_8: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

mkdir -pv ${PKG_BLDPATH}
	cp -v package.json package-lock.json gulpfile.js ${PKG_BLDPATH}
	cp -rv www ${PKG_BLDPATH}/www
