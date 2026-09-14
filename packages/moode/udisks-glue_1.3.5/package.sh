# udisks-glue_1.3.5
PKG_URL="https://github.com/fernandotcl/udisks-glue/archive/refs/tags/release-1.3.5.tar.gz"
BUILD_PROCESS=configmake
PKG_AUTOCONF=1
PKG_DEPS="moode/dbus-glib-0.112 moode/libconfuse_3.3 moode/udisks_1.0.5-1"
CONF_FLAGS=""
INST_CMD=install-strip
PKG_CONFIG_SYSROOT_DIR=${DISTOS_PATH}

PKG_POSTBUILD="mkdir -p \${PKG_PKGPATH}/etc
cat > \${PKG_PKGPATH}/etc/udisks-glue.conf <<EOF
filter disks {
    optical = false
    partition_table = false
    usage = filesystem
}

match disks {
    post_insertion_command = \"udisks --mount %device_file --mount-options sync\"
}
EOF
"