# libtwolame_0.4.0
PKG_URL="https://github.com/njh/twolame/archive/refs/tags/0.4.0.tar.gz"
BUILD_PROCESS=configmake
PKG_AUTOCONF=1
PKG_DEPS="moode/libsndfile_1.0.31"
CONF_FLAGS="--enable-maintainer-mode"
INST_CMD=install-strip
PKG_PREBUILD="mkdir -p build-scripts
    touch NEWS README doc/html/doxygen.png"
PKG_COPYSRC=1

case ${TOOLCHAIN} in
    llvm) PKG_CFLAGS+=" -Wno-gnu-include-next -Wno-implicit-function-declaration -Wno-unused-but-set-variable \
        -Wno-deprecated-non-prototype -Wno-strict-prototypes" ;;
esac
