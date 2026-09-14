# shellcheck shell=bash
# shellcheck disable=SC2154
# wiringpi_2: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

cat >Makefile <<EOF
all:
	cd wiringPi && \$(MAKE)
	cd devLib && \$(MAKE)
	cd gpio && \$(MAKE)

install:
	install -d \$(DESTDIR)\$(PREFIX)/lib/\$(HARCH)
	install -d \$(DESTDIR)\$(PREFIX)/bin
	cd wiringPi && \$(MAKE) install
	cd devLib && \$(MAKE) install
	cd gpio && \$(MAKE) install

clean:
	cd wiringPi && \$(MAKE) clean
	cd devLib && \$(MAKE) clean
	cd gpio && \$(MAKE) clean
EOF
