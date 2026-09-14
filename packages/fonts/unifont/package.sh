# unifont
PKG_VER=15.0.01
PKG_URL="https://unifoundry.com/pub/unifont/unifont-${PKG_VER}/font-builds/unifont-${PKG_VER}.pcf.gz"
BUILD_PROCESS=downloadonly
PKG_POSTBUILD="install -vDdm755 \${PKG_PKGPATH}${INSTALL_SHAREDIR}/fonts/unifont
    gunzip -c \${PKG_SRCPATH}/unifont-${PKG_VER}.pcf.gz > \${PKG_PKGPATH}${INSTALL_SHAREDIR}/fonts/unifont/unifont.pcf"