# libopenaptx_0.2.1
PKG_URL="https://github.com/pali/libopenaptx/releases/download/0.2.1/libopenaptx-0.2.1.tar.gz"
#PATCHES=
BUILD_PROCESS=simplemake
#INST_CMD=install
PKG_DEPS=
PKG_MAKEVARS="PREFIX=${INSTALL_PREFIX} LIBDIR=lib${INSTALL_LIBSUFFIX}"
PKG_LDFLAGS="-s"
PKG_PREBUILD="
    sed -i 's/CFLAGS = /CFLAGS ?= /g' Makefile
    sed -i 's/LDFLAGS = /LDFLAGS ?= /g' Makefile
    sed -i 's/PREFIX = /PREFIX ?= /g' Makefile
    sed -i 's/BINDIR = /BINDIR ?= /g' Makefile
    sed -i 's/LIBDIR = /LIBDIR ?= /g' Makefile"
