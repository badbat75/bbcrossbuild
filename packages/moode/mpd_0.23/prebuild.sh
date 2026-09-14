# shellcheck shell=bash
# shellcheck disable=SC2154
# mpd_0.23: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

patch -p1 < ${SRC_PATH}/moode-pkgbuild_8/packages/mpd/mpd_0.23.xx_selective_resample_mode.patch
	cat <<EOF | patch -p1
Description: source \$MPDCONF from /etc/default/mpd
Author: Florian Schlichting <fsfs@debian.org>
Forwarded: not-needed

--- a/systemd/system/mpd.service.in
+++ b/systemd/system/mpd.service.in
@@ -5,7 +5,8 @@

 [Service]
 Type=notify
-ExecStart=@prefix@/bin/mpd --systemd
+EnvironmentFile=/etc/default/mpd
+ExecStart=@prefix@/bin/mpd --systemd \$MPDCONF

 # Enable this setting to ask systemd to watch over MPD, see
 # systemd.service(5).  This is disabled by default because it causes
EOF
