# shellcheck shell=bash
# shellcheck disable=SC2154
# udisks_1.0.5-1: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i '/#include <time.h>/a #include <sys/types.h>\n#include <sys/stat.h>\n#include <unistd.h>' src/helpers/job-drive-detach.c
    sed -i '/#include <sys\/stat.h>/a #include <sys/sysmacros.h>' src/daemon.c 
    sed -i '/#include <sys\/stat.h>/a #include <sys/sysmacros.h>' src/device.c 
    sed -i '/#include <sys\/stat.h>/a #include <sys/sysmacros.h>' src/mount-monitor.c 
    sed -i '/#include <sys\/stat.h>/a #include <sys/sysmacros.h>' tools/udisks.c 
    sed -i '/#include <sys\/stat.h>/a #include <sys/sysmacros.h>' tools/umount-udisks.c
