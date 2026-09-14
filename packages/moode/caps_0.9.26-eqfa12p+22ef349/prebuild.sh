# shellcheck shell=bash
# shellcheck disable=SC2154
# caps_0.9.26-eqfa12p+22ef349: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i '/^CC =/ s/=/?=/' Makefile
sed -i '/^STRIP =/ s/=/?=/' Makefile
