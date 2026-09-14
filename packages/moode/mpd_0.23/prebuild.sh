# shellcheck shell=bash
# shellcheck disable=SC2154
# mpd_0.23: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# The mpd.service EnvironmentFile patch is in patches/ (PATCHES in package.env).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

patch -p1 < ${SRC_PATH}/moode-pkgbuild_8/packages/mpd/mpd_0.23.xx_selective_resample_mode.patch
