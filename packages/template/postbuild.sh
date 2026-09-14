# shellcheck shell=bash
# shellcheck disable=SC2154
# template: post-build script, sourced by runpostbuild.sh in the build directory (set -ex).
# The package is staged in ${PKG_PKGPATH} at this point: add files, fix paths, write units.

install -vdm755 ${PKG_PKGPATH}${INSTALL_SYSCONFDIR}
install -v -m644 ${PKG_RECIPEPATH}/files/package.conf ${PKG_PKGPATH}${INSTALL_SYSCONFDIR}/package.conf
install -vdm755 ${PKG_PKGPATH}/lib/systemd/system
cat > ${PKG_PKGPATH}/lib/systemd/system/package.service <<-EOF
	[Unit]
	Description=Package daemon

	[Service]
	ExecStart=${INSTALL_EXECPREFIX}/bin/package --config ${INSTALL_SYSCONFDIR}/package.conf

	[Install]
	WantedBy=multi-user.target
EOF
