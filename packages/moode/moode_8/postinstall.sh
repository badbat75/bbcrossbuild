# shellcheck shell=bash
# shellcheck disable=SC2154
# moode_8: post-install script, sourced as root inside the target chroot.
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

chown -R pi:pi /home/pi
bash -x /postinst_scripts/99_moode_player configure
