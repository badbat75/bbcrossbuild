# shellcheck shell=bash
# shellcheck disable=SC2154
# upmpdcli_1.5: post-install script, sourced as root inside the target chroot.
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

if ! getent passwd upmpdcli > /dev/null; then
	adduser --disabled-password --quiet --system --home /nonexistent --no-create-home --shell /bin/false upmpdcli
fi
if ! groups upmpdcli | cut -d' ' -f 3- | grep -q -w audio ; then
	usermod -a -G audio upmpdcli
fi
chown upmpdcli /var/cache/upmpdcli/ohcreds/credkey.pem
