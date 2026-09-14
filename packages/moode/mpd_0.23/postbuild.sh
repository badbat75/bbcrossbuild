# shellcheck shell=bash
# shellcheck disable=SC2154
# mpd_0.23: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

mkdir -p ${PKG_PKGPATH}{/etc/default,/var/lib/mpd/{music,playlists},/var/log/mpd,/run/mpd}
touch ${PKG_PKGPATH}{/var/lib/mpd/state,/var/log/mpd/log}
	cat > ${PKG_PKGPATH}/etc/default/mpd <<-EOF
		## Defaults for the MPD init script, sourced by /etc/init.d/mpd on Debian
		## systems.  Uncomment (remove the leading '#') and change values as needed.

		## If you don't want MPD to be started as a system service (for example, if
		## you want to run it from a regular user account), disable it using the
		## command 'update-rc.d mpd disable' (or 'systemctl disable mpd' for systemd).

		## The configuration file location for mpd:
		# MPDCONF=/etc/mpd.conf
	EOF
