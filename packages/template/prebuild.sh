# shellcheck shell=bash
# shellcheck disable=SC2154
# template: pre-build script, sourced by runprebuild.sh in the source directory (set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}: no \${VAR} escaping,
# no \" inside a quoted string, heredocs and quotes are written as in any Bash script.

sed -i 's/-Werror//' configure.ac
case ${PKG_TARGET} in
	cross) ;;
	*)
		install -v -m644 ${PKG_RECIPEPATH}/files/package.conf.in package.conf.in
	;;
esac
