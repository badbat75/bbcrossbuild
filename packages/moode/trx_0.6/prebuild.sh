# shellcheck shell=bash
# shellcheck disable=SC2154
# trx_0.6: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i 's/(INSTALL) rx tx/(INSTALL) -s --strip-program=\$(STRIP) rx tx/g' Makefile
    patch -p1 <<EOF
--- a/tx.c
+++ b/tx.c
@@ -245,7 +245,6 @@ int main(int argc, char *argv[])

 	ortp_init();
 	ortp_scheduler_init();
-	ortp_set_log_level_mask(NULL, ORTP_WARNING|ORTP_ERROR);
 	session = create_rtp_send(addr, port);
 	assert(session != NULL);

EOF
