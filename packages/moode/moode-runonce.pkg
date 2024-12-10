# moode-pkgbuild_8
BUILD_PROCESS=none
PKG_PREBUILD="mkdir -p \${PKG_PKGPATH}/usr/local/bin
	cp ${SRC_PATH}/moode-pkgbuild_8/packages/runonce/runonce \${PKG_PKGPATH}/usr/local/bin/
	mkdir -p \${PKG_PKGPATH}/lib/systemd/system
	cp ${SRC_PATH}/moode-pkgbuild_8/packages/runonce/run_once.service \${PKG_PKGPATH}/lib/systemd/system
	mkdir -p \${PKG_PKGPATH}/etc/runonce.d/ran"
PKG_POSTINSTALL="systemctl enable run_once.service"