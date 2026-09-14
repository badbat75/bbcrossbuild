# shellcheck shell=bash
# shellcheck disable=SC2154
# libopenaptx_0.2.1: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

    sed -i 's/CFLAGS = /CFLAGS ?= /g' Makefile
    sed -i 's/LDFLAGS = /LDFLAGS ?= /g' Makefile
    sed -i 's/PREFIX = /PREFIX ?= /g' Makefile
    sed -i 's/BINDIR = /BINDIR ?= /g' Makefile
    sed -i 's/LIBDIR = /LIBDIR ?= /g' Makefile
