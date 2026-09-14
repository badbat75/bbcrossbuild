# shellcheck shell=bash
# shellcheck disable=SC2154
# minidlna_1.3.0: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i '/^.tmpl:/a \\tcp -r $(srcdir)/linux .' Makefile.am
	sed -i 's|ac_cv_lib_id3tag__lz___id3_file_open|ac_cv_lib_id3tag__lz_id3_file_open|' configure.ac
	sed -i 's|ac_cv_lib_avformat__lavcodec__lavutil__lz___av_open_input_file|ac_cv_lib_avformat__lavcodec__lavutil__lz_av_open_input_file|' configure.ac
	sed -i 's|ac_cv_lib_avformat__lavcodec__lavutil__lz___avformat_open_input|ac_cv_lib_avformat__lavcodec__lavutil__lz_avformat_open_input|' configure.ac
