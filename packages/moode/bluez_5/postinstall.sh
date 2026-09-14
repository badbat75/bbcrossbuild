# shellcheck shell=bash
# shellcheck disable=SC2154
# bluez_5: post-install script, sourced as root inside the target chroot.
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

# create bluetooth group if not already present
if ! getent group bluetooth > /dev/null; then
	addgroup --quiet --system bluetooth
fi
