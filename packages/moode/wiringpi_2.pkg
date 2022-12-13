# wiringpi_2
PKG_SUFFIX=".61-1"
PKG_URL="https://github.com/WiringPi/WiringPi/archive/refs/tags/2${PKG_SUFFIX}.tar.gz"
PATCHES="wiringpi-makefiles.patch"
BUILD_PROCESS=simplemake
INST_CMD=install
PKG_DEPS=
PKG_MAKEVARS="PREFIX=${INSTALL_PREFIX} HARCH=${HARCH} EXTRA_CFLAGS=\"\${CFLAGS}\" EXTRA_LDFLAGS=\"\${LDFLAGS}\" WIRINGPI_SUID=0 DEBUG= "

PKG_PREBUILD="
cat >Makefile <<EOF
all:
	cd wiringPi && \\\$(MAKE)
	cd devLib && \\\$(MAKE)
	cd gpio && \\\$(MAKE)

install:
	install -d \\\$(DESTDIR)\\\$(PREFIX)/lib/\\\$(HARCH)
	install -d \\\$(DESTDIR)\\\$(PREFIX)/bin
	cd wiringPi && \\\$(MAKE) install
	cd devLib && \\\$(MAKE) install
	cd gpio && \\\$(MAKE) install

clean:
	cd wiringPi && \\\$(MAKE) clean
	cd devLib && \\\$(MAKE) clean
	cd gpio && \\\$(MAKE) clean
EOF
"

### GCC 10 Workaround ####
test_version ${GCC_VER} -ge 10 && PKG_CFLAGS+=" -fcommon" || true
##########################
