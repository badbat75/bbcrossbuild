# libupnpp_0.21
PKG_SUFFIX=.0
PKG_URL="https://www.lesbonscomptes.com/upmpdcli/downloads/libupnpp-0.21${PKG_SUFFIX}.tar.gz"
PATCHES=
BUILD_PROCESS=configmake
PKG_CXXFLAGS="-D_FILE_OFFSET_BITS=64 -I${BIN_PATH}${INSTALL_INCLUDEDIR}/npupnp"
INST_CMD=install-strip
PKG_DEPS="moode/libnpupnp_4.2 moode/libmpdclient-2.20"

PKG_PREBUILD="cd Project/GNU/CLI && ./autogen.sh
    ln -fs ${DISTOS_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/libcurl.la ${BIN_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/
    ln -fs ${DISTOS_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/libcurl-gnutls.so ${BIN_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/
    "
PKG_POSTBUILD="rm -f ${BIN_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/{libcurl.la,libcurl-gnutls.so}"
