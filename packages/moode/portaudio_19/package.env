# portaudio_19
PKG_SUFFIX=.7.0
PKG_URL="https://github.com/PortAudio/portaudio/archive/refs/tags/v19${PKG_SUFFIX}.tar.gz"
PKG_AUTOCONF=1
AUTOCONF_PATH=bindings/cpp,.
BUILD_PROCESS=configmake
CONF_FLAGS="--enable-cxx -with-pic=yes --disable-dependency-tracking"
PKG_CFLAGS="-s"
PKG_MAKEVARS="-j1"
INST_CMD=install
PKG_DEPS="moode/alsa-lib"

# Note:
# Dependencies: automake, debhelper (>= 9), dh-autoreconf, doxygen, dpkg-dev (>= 1.13.19), libasound2-dev [linux-any], libjack-dev
