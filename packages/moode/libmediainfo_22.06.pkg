# libmediainfo_22.06
PKG_URL="https://mediaarea.net/download/source/libmediainfo/22.06/libmediainfo_22.06.tar.xz"
BUILD_PROCESS=configmake

#AUTOCONF_PATH=Project/GNU/Library
PKG_COPYSRC=1
CONF_PATH=Project/GNU/Library
CONF_FLAGS="--enable-visibility --with-libcurl --with-libmms --with-libtinyxml2 --without-libmd5"
INST_CMD=install-strip
PKG_DEPS="raspbian/libmms_0.6.4-3 raspbian/libzen_0.4.39-1 raspbian/tinyxml2_9.0.0+dfsg-3 moode/tfsxml-libmediainfo_22.06"
PKG_PREBUILD="cd Project/GNU/Library
	sed -i -e '/CXXFLAGS -O0/{n;N;N;d;}' configure.ac
	./autogen.sh"
PKG_LDFLAGS="-ltfsxml"