# test_helper.bash: shared setup of the bats suite (tests/*.bats, run with `bats tests`).
#
# load_framework sources the framework through utilities/pkgtools.functions (every build step
# stubbed out) for the platform in PLATFORM_NAME (default generic-x64), with DATA_PATH under
# the per-test temporary directory, then points PKG_PATH at an empty fixture tree that the
# tests populate with make_recipe and put. The tests exercise the pure functions of
# core.functions, build.functions and pkgtools.functions: nothing is downloaded or built.
# shellcheck shell=bash disable=SC2034,SC2154

BB_HOME=$(realpath "${BATS_TEST_DIRNAME}/..")
export BB_HOME

function load_framework () {
	### load_framework: source the framework for the current test; the variables it sets
	### persist in the test body
	PLATFORM_NAME=${PLATFORM_NAME:-generic-x64}
	PROJECT_NAME=bats
	DATA_PATH="${BATS_TEST_TMPDIR}/data"
	# shellcheck source=utilities/pkgtools.functions
	source "${BB_HOME}/utilities/pkgtools.functions"
	PKG_PATH="${BATS_TEST_TMPDIR}/packages"
	mkdir -p "${PKG_PATH}"
	return 0
}

function make_recipe () {
	### make_recipe <group>/<name>: create the recipe directory under PKG_PATH with the
	### package.env read from stdin, and set RECIPE and PKG_RECIPEPATH to it
	RECIPE="${PKG_PATH}/${1}"
	PKG_RECIPEPATH=${RECIPE}
	mkdir -p "${RECIPE}"
	cat > "${RECIPE}/${RECIPE_FILENAME}"
	return 0
}

function put () {
	### put <file> [<content>]: create <file> (and its directory) holding <content> plus a
	### newline, or empty when no content is given
	mkdir -p "$(dirname "${1}")"
	if [ "${#}" -gt 1 ]
	then
		printf '%s\n' "${2}" > "${1}"
	else
		: > "${1}"
	fi
	return 0
}

function select_target () {
	### select_target <target>: set PKG_TARGET and, through set_target_prefixes, PKG_TARGET_ENV
	### and the INSTALL_* prefixes the way build does before sourcing a recipe
	PKG_TARGET=${1}
	PKG_FULLNAME=${PKG_FULLNAME:-fixture_1.0}
	set_target_prefixes "${PKG_TARGET}"
	return 0
}

function assert_output_lines () {
	### assert_output_lines [<line>...]: the output of the last run is exactly these lines
	### (no argument: no output at all)
	local EXPECTED
	EXPECTED=$(printf '%s\n' "${@}")
	if [ "${output}" != "${EXPECTED}" ]
	then
		echo "expected:"
		echo "${EXPECTED}"
		echo "got:"
		echo "${output}"
		return 1
	fi
	return 0
}

function assert_equal () {
	### assert_equal <actual> <expected>
	if [ "${1}" != "${2}" ]
	then
		echo "expected: '${2}'"
		echo "got:      '${1}'"
		return 1
	fi
	return 0
}
