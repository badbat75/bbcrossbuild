# shellcheck shell=bash
# shellcheck disable=SC2154
# rtl8812au_5.6.4.2: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i 's/$(MODDESTDIR)/$(INSTALL_MOD_PATH)$(MODDESTDIR)/g;s/^install:/modules_install:/;s#/sbin/depmod -a#/sbin/depmod -b $(INSTALL_MOD_PATH) -a#g' Makefile
	sed -i '/^modules_install/a\\tmkdir -p $(INSTALL_MOD_PATH)$(MODDESTDIR)' Makefile
    sed -i 's/^extern __inline int is_broadcast_mac_addr/static inline int is_broadcast_mac_addr/' include/ieee80211.h
