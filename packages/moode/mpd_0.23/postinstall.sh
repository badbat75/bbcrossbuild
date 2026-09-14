# shellcheck shell=bash
# shellcheck disable=SC2154
# mpd_0.23: post-install script, sourced as root inside the target chroot.
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

useradd -r -M -s /usr/sbin/nologin -G audio -c "MediaPlayer Daemon" -d /var/lib/mpd mpd
chown -R mpd:audio /var/lib/mpd
chown -R mpd:audio /var/log/mpd
chown mpd:audio /run/mpd
