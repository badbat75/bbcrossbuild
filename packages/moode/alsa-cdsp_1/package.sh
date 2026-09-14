# alsa-cdsp_1
PKG_SUFFIX=.2.0
PKG_URL="https://github.com/bitkeeper/alsa_cdsp/archive/refs/tags/v1${PKG_SUFFIX}.tar.gz"
BUILD_PROCESS=simplemake
# CONF_FLAGS=""
PKG_DEPS="moode/camilladsp_1"
PKG_PREBUILD="sed -i '/^CC =/ s/=/?=/' Makefile
sed -i '/^LIBDIR :=/ s/:=/?=/' Makefile"
PKG_MAKEVARS="LIBDIR=\${PKG_PKGPATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}"