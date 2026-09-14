#linux-firmware
PKG_VER=20241210
PKG_URL="https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/linux-firmware-${PKG_VER}.tar.gz"
PKG_DEPS=lfs/rdfind:cross
BUILD_PROCESS=simplemake
PKG_MAKETARGETS="install"
