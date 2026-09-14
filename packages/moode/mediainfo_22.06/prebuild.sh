# shellcheck shell=bash
# shellcheck disable=SC2154
# mediainfo_22.06: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

cd Project/GNU/CLI
    sed -i -e '/CXXFLAGS -O0/{n;N;N;d;}' configure.ac
    ./autogen.sh
    ln -fs ${DISTOS_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/libcurl.la ${BIN_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/
    ln -fs ${DISTOS_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/libcurl-gnutls.so ${BIN_PATH}${INSTALL_LIBDIR}${INSTALL_LIBSUFFIX}/
