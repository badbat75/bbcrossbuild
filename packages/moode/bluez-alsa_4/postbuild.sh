# shellcheck shell=bash
# shellcheck disable=SC2154
# bluez-alsa_4: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

install -d ${PKG_PKGPATH}/run/bluealsa
	mkdir -p ${PKG_PKGPATH}/lib/systemd/system
	cat > ${PKG_PKGPATH}/lib/systemd/system/bluez-alsa.service <<-EOF
		[Unit]
		Description=Bluealsa daemon
		Documentation=https://github.com/Arkq/bluez-alsa/
		After=dbus-org.bluez.service
		Requires=dbus-org.bluez.service

		[Service]
		Type=dbus
		BusName=org.bluealsa
		EnvironmentFile=-/etc/default/bluez-alsa
		ExecStart=/usr/bin/bluealsa \$OPTIONS
		Restart=on-failure
		ProtectSystem=strict
		ProtectHome=true
		PrivateTmp=true
		PrivateDevices=true
		RemoveIPC=true
		RestrictAddressFamilies=AF_UNIX AF_BLUETOOTH
		; Also non-privileged can user be used
		; this example assumes a user and group called 'bluealsa' exist
		;User=bluealsa
		;Group=bluealsa
		;NoNewPrivileges=true

		[Install]
		WantedBy=bluetooth.target
	EOF
	mkdir -p ${PKG_PKGPATH}/etc/default
	cat > ${PKG_PKGPATH}/etc/default/bluez-alsa <<-EOF
		# Config file for blues-alsa.service
		# Set the bluealsa option, please see bluealsa manpage
		OPTIONS=""
	EOF
