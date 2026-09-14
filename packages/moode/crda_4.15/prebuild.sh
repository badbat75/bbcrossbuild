# shellcheck shell=bash
# shellcheck disable=SC2154
# crda_4.15: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i '/^CFLAGS/ s/ -Werror\| -O2//' Makefile
	sed -i 's/$(Q)ldconfig//g' Makefile
	sed -i 's/except \([a-zA-Z0-9_]*\), \([a-zA-Z0-9_]*\)/except \1 as \2/g' utils/key2pub.py
	sed -i 's/print \([^(].*\)/print (\1)/g' utils/key2pub.py
	sed -i 's/ord(v)/v/g' utils/key2pub.py
	sed -i 's/xrange/range/g' utils/key2pub.py
