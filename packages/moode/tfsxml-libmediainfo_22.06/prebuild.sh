# shellcheck shell=bash
# shellcheck disable=SC2154
# tfsxml-libmediainfo_22.06: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -v -m644 ${PKG_RECIPEPATH}/files/tfsxml.mk Source/ThirdParty/tfsxml/Makefile
