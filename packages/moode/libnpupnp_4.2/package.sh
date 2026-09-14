# libnpupnp_4.2
PKG_SUFFIX=.1
PKG_URL="https://www.lesbonscomptes.com/upmpdcli/downloads/libnpupnp-4.2${PKG_SUFFIX}.tar.gz"
PATCHES=
BUILD_PROCESS=configmake
# CONF_FLAGS=""
PKG_CXXFLAGS="-D_FILE_OFFSET_BITS=64"
INST_CMD=install-strip
PKG_DEPS="raspbian/libmicrohttpd_0.9.75-3"
