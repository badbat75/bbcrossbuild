# shellcheck shell=bash
# shellcheck disable=SC2154
# libmad_0.15.1b: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed 's@AM_CONFIG_HEADER@AC_CONFIG_HEADERS@g' -i configure.ac
    touch NEWS AUTHORS ChangeLog
    rm -f ltmain.sh
