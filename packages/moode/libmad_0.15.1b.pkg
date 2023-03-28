# libmad_0.15.1b
PKG_URL="https://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz"
PATCHES="https://www.linuxfromscratch.org/patches/blfs/11.0/libmad-0.15.1b-fixes-1.patch"
BUILD_PROCESS=configmake
PKG_AUTOCONF=1
CONF_FLAGS="--enable-accuracy"
INST_CMD=install-strip
PKG_DEPS=""
PKG_PREBUILD="sed 's@AM_CONFIG_HEADER@AC_CONFIG_HEADERS@g' -i configure.ac
    touch NEWS AUTHORS ChangeLog
    rm -f ltmain.sh
"
PKG_FAULTYCFLAGS=1

case ${HM} in
    arm)
        CONF_FLAGS+=" --enable-fpm=arm"
        ;;
    aarch64)
        CONF_FLAGS+=" --enable-fpm=64bit"
        ;;
esac
