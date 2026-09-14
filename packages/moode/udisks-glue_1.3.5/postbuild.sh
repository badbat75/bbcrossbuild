# shellcheck shell=bash
# shellcheck disable=SC2154
# udisks-glue_1.3.5: post-build script, sourced by runpostbuild.sh (cwd: ${PKG_BLDPATH}, set -ex).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

mkdir -p ${PKG_PKGPATH}/etc
cat > ${PKG_PKGPATH}/etc/udisks-glue.conf <<EOF
filter disks {
    optical = false
    partition_table = false
    usage = filesystem
}

match disks {
    post_insertion_command = "udisks --mount %device_file --mount-options sync"
}
EOF
