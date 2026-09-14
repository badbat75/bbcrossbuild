# shellcheck shell=bash
# shellcheck disable=SC2154
# bluez_5: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

patch -p1 <<EOF
diff --git a/src/bluetooth.conf b/src/bluetooth.conf
index 8a1e25801..d6e1c7a03 100644
--- a/src/bluetooth.conf
+++ b/src/bluetooth.conf
@@ -22,6 +22,11 @@
     <allow send_interface="org.mpris.MediaPlayer2.Player"/>
   </policy>

+  <!-- allow users of bluetooth group to communicate -->
+  <policy group="bluetooth">
+    <allow send_destination="org.bluez"/>
+  </policy>
+
   <policy context="default">
     <allow send_destination="org.bluez"/>
   </policy>
--
EOF
