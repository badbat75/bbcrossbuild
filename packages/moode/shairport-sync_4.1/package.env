# shairport-sync_4.1
PKG_URL="https://github.com/mikebrady/shairport-sync/archive/fb1b2e9dff455a1e85b485808ec5c915bb103a83.tar.gz"
BUILD_PROCESS=configmake
CONF_FLAGS="--with-dummy --with-stdout --with-pipe --with-soxr --with-metadata --with-avahi \
		--with-alsa --with-convolution --with-piddir=/run/shairport-sync --without-configfiles \
		--without-libdaemon --with-mqtt-client --with-systemd --with-dbus-interface"
INST_CMD=install-strip
PKG_DEPS="moode/alsa-lib moode/libsndfile_1.0.31 raspbian/libsoxr_0.1.3-1 raspbian/libconfig_1.5-0.4 raspbian/mosquitto_2.0.11-1"
PKG_PREBUILD="sed -i '/PKG_CHECK_MODULES/ s/libplist >= 2.0.0/libplist-2.0 >= 2.0.0/g' configure.ac
		sed -i 's/^\tgetent/#\tgetent/g' Makefile.am
		sed -i 's| org.gnome.ShairportSync.xml| \$(VPATH)/org.gnome.ShairportSync.xml|g' Makefile.am
		sed -i '/#include <unistd.h>/a #include <inttypes.h>' common.c
		sed -i '/#include <unistd.h>/a #include <inttypes.h>' shairport.c"
PKG_POSTBUILD="install -d \${PKG_PKGPATH}/usr/local/bin
		install -d \${PKG_PKGPATH}/usr/local/etc
		ln -fs /usr/bin/shairport-sync \${PKG_PKGPATH}/usr/local/bin/shairport-sync
		ln -fs /etc/shairport-sync.conf \${PKG_PKGPATH}/usr/local/etc/shairport-sync.conf"
PKG_CONFIG_SYSROOT_DIR=${DISTOS_PATH}

case x${WITH_AIRPLAY2} in
	xno|x0)
		;;
	x*)
		CONF_FLAGS+=" --with-airplay-2"
		PKG_DEPS+=" raspbian/libplist_2.2.0-6 raspbian/libsodium_1.0.18-1 raspbian/libgcrypt20_1.9.4-3 moode/nqptp_1.1"
		WITH_SSL=openssl
		#### plists/get_info_response.xml is not copied in build directory
		PKG_COPYSRC=1
		;;
esac

case x${WITH_ALAC} in
	xyes|x1)
		CONF_FLAGS+=" --with-apple-alac"
		PKG_DEPS+=" moode/alac_0.0.7+5d6d836"
	;;
esac

case x${WITH_SSL} in
	xmbedtls) ### Build with MBEDTLS
		CONF_FLAGS+=" --with-ssl=mbedtls"
		PKG_DEPS+=" raspbian/mbedtls_2.28.1-1"
		PKG_LDFLAGS="-lssl -lcrypto"
	;;
	x*) ### Build with OpenSSL
		CONF_FLAGS+=" --with-ssl=openssl"
	;;
esac

# Dependencies:
# libasound2-dev libpopt-dev libconfig-dev avahi-daemon libavahi-client-dev libssl-dev libsoxr-dev
