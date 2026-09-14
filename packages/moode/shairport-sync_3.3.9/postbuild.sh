# shellcheck shell=bash
# shellcheck disable=SC2154
# shairport-sync_3.3.9: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -m 0755 -d ${PKG_PKGPATH}/run/shairport-sync
	mkdir -pv ${PKG_PKGPATH}/etc/{dbus-1/system.d,default}
	cp -pv ${PKG_SRCPATH}/scripts/shairport-sync-dbus-policy.conf ${PKG_PKGPATH}/etc/dbus-1/system.d/
	cp -pv ${PKG_SRCPATH}/scripts/shairport-sync-mpris-policy.conf ${PKG_PKGPATH}/etc/dbus-1/system.d/
	cp -pv ${PKG_SRCPATH}/scripts/shairport-sync.conf ${PKG_PKGPATH}/etc/
	cat <<-EOF > ${PKG_PKGPATH}/etc/default/shairport-sync
		# Defaults for shairport-sync initscript
		# sourced by /etc/init.d/shairport-sync
		# and /lib/systemd/system/shairport-sync.service
		# installed at /etc/default/shairport-sync by the maintainer scripts

		# Additional options that are passed to the Daemon.
		DAEMON_ARGS=""

		# NOTICE: Please do *not* include the "-d" or "--daemon" options in DAEMON_ARGS
		# above. This option will be added automatically as necessary. Please also note
		# that most options are configurable using /etc/shairport-sync.conf.	
	EOF
	cat <<-EOF > ${PKG_PKGPATH}/lib/systemd/system/shairport-sync.service
		[Unit]
		Description=Shairport Sync - AirPlay Audio Receiver
		Documentation=man:shairport-sync(7)
		Documentation=file:///usr/share/doc/shairport-sync/README.md.gz
		Documentation=https://github.com/mikebrady/shairport-sync
		After=sound.target
		Requires=avahi-daemon.service
		After=avahi-daemon.service
		Wants=network-online.target
		After=network.target network-online.target

		[Service]
		Type=simple
		Restart=on-failure
		EnvironmentFile=-/etc/default/shairport-sync
		ExecStart=/usr/bin/shairport-sync \$DAEMON_ARGS
		User=shairport-sync
		Group=shairport-sync

		[Install]
		WantedBy=multi-user.target
	EOF
