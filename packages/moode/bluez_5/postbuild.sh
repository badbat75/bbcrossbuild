# shellcheck shell=bash
# shellcheck disable=SC2154
# bluez_5: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

mkdir -p ${PKG_PKGPATH}/bin
mv ${PKG_PKGPATH}/usr/bin/hciconfig ${PKG_PKGPATH}/bin
install -dm0700 ${PKG_PKGPATH}/var/lib/bluetooth
mkdir -p ${PKG_PKGPATH}/etc/bluetooth/
cp -pv ${PKG_SRCPATH}/{src/main.conf,profiles/input/input.conf,profiles/network/network.conf} ${PKG_PKGPATH}/etc/bluetooth/
ln -s bluetooth.service ${PKG_PKGPATH}/lib/systemd/system/dbus-org.bluez.service
