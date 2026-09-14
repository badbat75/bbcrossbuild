# upmpdcli_1.5
PKG_SUFFIX=.13
PKG_URL="https://www.lesbonscomptes.com/upmpdcli/downloads/upmpdcli-1.5${PKG_SUFFIX}.tar.gz"
PKG_PREBUILD="sed -i 's|cd \$(DESTDIR)\$(pkgdatadir); tar xzf -) < web.tar.gz|cd \$(DESTDIR)\$(pkgdatadir); tar xzf -) < \$(srcdir)/web.tar.gz|g' Makefile.am
sed -i 's|cd \$(DESTDIR)\$(pkgdatadir); tar xzf -) < rdpl2stream.tar.gz|cd \$(DESTDIR)\$(pkgdatadir); tar xzf -) < \$(srcdir)/rdpl2stream.tar.gz|g' Makefile.am
sed -i 's|cd \$(DESTDIR)\$(pkgdatadir); tar xzf -) < uprclbottle.tar.gz|cd\ \$(DESTDIR)\$(pkgdatadir); tar xzf -) < \$(srcdir)/uprclbottle.tar.gz|g' Makefile.am"
BUILD_PROCESS=configmake
PKG_AUTOCONF=1
# CONF_FLAGS=""
PKG_CXXFLAGS="-D_FILE_OFFSET_BITS=64"
INST_CMD=install-strip
PKG_DEPS="moode/libupnpp_0.21 raspbian/libmicrohttpd_0.9.75-3 raspbian/libjsoncpp_1.9.4-5 python/bottle"
PKG_POSTBUILD="mkdir -p \${PKG_PKGPATH}/lib/systemd/system
	cp \${PKG_SRCPATH}/systemd/upmpdcli.service \${PKG_PKGPATH}/lib/systemd/system/
	mkdir -pv \${PKG_PKGPATH}/var/cache/upmpdcli/ohcreds
	openssl genrsa -out \${PKG_PKGPATH}/var/cache/upmpdcli/ohcreds/credkey.pem 4096
	chmod 600 \${PKG_PKGPATH}/var/cache/upmpdcli/ohcreds/credkey.pem"

PKG_POSTINSTALL="if ! getent passwd upmpdcli > /dev/null; then
	adduser --disabled-password --quiet --system --home /nonexistent --no-create-home --shell /bin/false upmpdcli
fi
if ! groups upmpdcli | cut -d' ' -f 3- | grep -q -w audio ; then
	usermod -a -G audio upmpdcli
fi
chown upmpdcli /var/cache/upmpdcli/ohcreds/credkey.pem"
