# shellcheck shell=bash
# shellcheck disable=SC2154
# template: post-install script, copied into the sysroot as postinst_scripts/<prio>_<name> and
# sourced as root inside the target image by run_postinstall_scripts. Only the image-safe values
# are available here: INSTALL_*, PKG_NAME, PKG_VER, PKG_FULLNAME, PKG_TARGET, HARCH, HM, HOS,
# HLIBC, HARCH_LIB, PLATFORM_NAME and TOOLCHAIN. Ignored for native and cross builds.

if ! getent group package > /dev/null
then
	groupadd --system package
fi
systemctl enable package.service
