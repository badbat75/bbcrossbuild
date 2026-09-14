# shellcheck shell=bash
# shellcheck disable=SC2154
# shairport-sync_3.3.9: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i '/AC_PROG_INSTALL/a AM_PROG_AR' configure.ac
	sed -i 's/^\tgetent/#\tgetent/g' Makefile.am
	sed -i 's| org.gnome.ShairportSync.xml| $(VPATH)/org.gnome.ShairportSync.xml|g' Makefile.am
