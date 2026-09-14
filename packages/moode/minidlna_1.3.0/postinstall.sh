# shellcheck shell=bash
# shellcheck disable=SC2154
# minidlna_1.3.0: post-install script, sourced as root inside the target chroot.
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

useradd -r -M -s /usr/sbin/nologin -c "MiniDLNA server" -d /var/lib/minidlna minidlna
chown minidlna:minidlna /var/cache/minidlna
chown minidlna:minidlna /var/lib/minidlna
