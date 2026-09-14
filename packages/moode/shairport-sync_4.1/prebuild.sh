# shellcheck shell=bash
# shellcheck disable=SC2154
# shairport-sync_4.1: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i '/PKG_CHECK_MODULES/ s/libplist >= 2.0.0/libplist-2.0 >= 2.0.0/g' configure.ac
		sed -i 's/^\tgetent/#\tgetent/g' Makefile.am
		sed -i 's| org.gnome.ShairportSync.xml| $(VPATH)/org.gnome.ShairportSync.xml|g' Makefile.am
		sed -i '/#include <unistd.h>/a #include <inttypes.h>' common.c
		sed -i '/#include <unistd.h>/a #include <inttypes.h>' shairport.c
