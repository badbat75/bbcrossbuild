# shellcheck shell=bash
# shellcheck disable=SC2154
# camillagui-backend_1: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

patch -p1 < ${MOODE_CAMILLAGUI_PATH}/camillagui_backend_hide_files.patch
