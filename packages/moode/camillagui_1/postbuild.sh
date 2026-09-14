# shellcheck shell=bash
# shellcheck disable=SC2154
# camillagui_1: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

    npm install
    npm install browserslist@latest
    find node_modules/*/lib -type f -name '*.js' -exec sed -i 's|md4|sha512|g' {} \;    
    npm run build
    mkdir -pv ${PKG_PKGPATH}/opt/camillagui
    cp -frv build ${PKG_PKGPATH}/opt/camillagui/
