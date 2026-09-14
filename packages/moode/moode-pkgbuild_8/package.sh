# moode-pkgbuild_8
MOODEPKGBUILD=8.2.0
MOODEPKGBUILDREL=v${MOODEPKGBUILD}
#MOODEPKGBUILDCOMMIT=
if [ -z "${MOODEDEVCOMMIT}" ]
then
	PKG_URL="https://github.com/moode-player/pkgbuild/archive/refs/tags/${MOODEPKGBUILDREL}.tar.gz"
else
	PKG_URL="https://github.com/moode-player/pkgbuild/archive/${MOODEPKGBUILDCOMMIT}.tar.gz"
fi
BUILD_PROCESS=downloadonly
