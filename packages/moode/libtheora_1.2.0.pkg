# libtheora_1.2.0
GIT_URL="https://github.com/xiph/theora"
#GIT_COMMIT="7288b539"
GIT_COMMIT="7180717"
BUILD_PROCESS=configmake
PKG_AUTOCONF=1
CONF_FLAGS="--disable-asm"
PKG_DEPS="moode/libogg_1.3.5 moode/libvorbis_1.3.7"
#PKG_DEPS+=" moode/SDL_1.2.15"
[ "${PLATFORM_NAME}" == "rpi" -a "${TOOLCHAIN}" == "llvm" ] && CONF_FLAGS="--disable-asm"
INST_CMD=install-strip
