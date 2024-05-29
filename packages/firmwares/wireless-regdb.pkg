#wireless-regdb
PKG_VER=2024.05.08
PKG_URL="https://mirrors.edge.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-${PKG_VER}.tar.xz"
BUILD_PROCESS=downloadonly
PKG_PREBUILD="install -v -d -m755 \${PKG_PKGPATH}/lib/firmware
	install -v -m644 regulatory.db regulatory.db.p7s \${PKG_PKGPATH}/lib/firmware"
