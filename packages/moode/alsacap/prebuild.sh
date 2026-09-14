# shellcheck shell=bash
# shellcheck disable=SC2154
# alsacap: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i '/PREFIX =/i CC ?= gcc' Makefile &&
sed -i 's/PREFIX = /PREFIX ?= /g' Makefile &&
sed -i 's/gcc -o/$(CC) $(CFLAGS) $(LDFLAGS) -o/g' Makefile
