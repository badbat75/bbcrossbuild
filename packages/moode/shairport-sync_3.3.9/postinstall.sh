# shellcheck shell=bash
# shellcheck disable=SC2154
# shairport-sync_3.3.9: post-install script, sourced as root inside the target chroot.
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

if ! getent group shairport-sync >/dev/null; then
	addgroup --system shairport-sync >/dev/null
fi

# create shairport-sync user if there isn't one already
if ! getent passwd shairport-sync >/dev/null; then
	adduser --system --ingroup shairport-sync --shell /usr/sbin/nologin \
		--home /run/shairport-sync shairport-sync >/dev/null
	# Add shairport-sync to the audio group
	adduser shairport-sync audio
elif [ "$(getent passwd shairport-sync | awk -F: '{ print $6 }')" = "/var/lib/shairport-sync" ]; then
	# If the home directory is the old location, try to update it
	# This will fail if any processes are running under the user.
	# This isn't normally the case here in the postinst but it's
	# not worth aborting the whole install if we can't fix that up.
	if usermod -d /run/shairport-sync shairport-sync; then
		# Try to remove the unused and obsolete directory.
		# Ignore the failure if it's non-empty.
		rmdir /var/lib/shairport-sync || true
	fi
fi
chown shairport-sync:shairport-sync /run/shairport-sync
