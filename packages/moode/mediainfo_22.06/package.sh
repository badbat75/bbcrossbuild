# mediainfo_22.06
PKG_URL="https://mediaarea.net/download/source/mediainfo/22.06/mediainfo_22.06.tar.xz"
PKG_PREBUILD="sed -i 's/ -O2//g' Project/GNU/CLI/configure.ac"
BUILD_PROCESS=configmake

#AUTOCONF_PATH=Project/GNU/CLI
PKG_COPYSRC=1
CONF_PATH=Project/GNU/CLI
CONF_FLAGS="LT_SYS_LIBRARY_PATH=${BIN_PATH}/usr/lib/arm-linux-gnueabihf"
INST_CMD=install-strip
PKG_DEPS="moode/libmediainfo_22.06"
PKG_PREBUILD="cd Project/GNU/CLI
    sed -i -e '/CXXFLAGS -O0/{n;N;N;d;}' configure.ac
    ./autogen.sh
    ln -fs ${DISTOS_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/libcurl.la ${BIN_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/
    ln -fs ${DISTOS_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/libcurl-gnutls.so ${BIN_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/"
PKG_POSTBUILD="rm -f ${BIN_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/{libcurl.la,/libcurl-gnutls.so}"