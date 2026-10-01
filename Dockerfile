# The build environment of bbxb: the host dependencies, nothing of the checkout.
#
# "./bbxb --container build <project> <platform>" builds this image when docker does not have it or when
# the label below does not match the checksum of this file, then mounts the checkout and the data
# directory into it and runs the build there (container.functions). A recipe edit needs no rebuild.
FROM amd64/fedora:latest

# Install all dependencies in a single layer. The tools a package build runs and the libraries the
# programs of the build machine link are packages of the framework (lfs/*:native: texinfo, gperf,
# help2man, bc, libxml2, libxslt, the DocBook, e2fsprogs, btrfs-progs, zlib, bzip2, xz, zstd...), not
# of the host, patchelf and pahole too (lfs/patchelf:native, lfs/dwarves:native). What the host still
# gives: the compiler, what bbxb runs before any package is built (which, file, curl, gawk, patch, git,
# rsync, zip, unzip) and qemu. util-linux is the loop devices, mounts and partition tables of the
# images (and setpriv of container_user), which bbxb mount and bbxb emulator use outside a build too. shadow-utils,
# util-linux and sudo are the last three: the build runs as the user who started bbxb, created at run
# time by container_user, and its root steps go through sudo there as they do on the host
RUN dnf -y upgrade && \
    dnf -y install \
    rsync \
    gcc g++ binutils \
    file curl gawk patch git which \
    qemu-user-static \
    glibc-devel glibc-gconv-extra zip unzip \
    shadow-utils util-linux sudo

# The checksum of this file, which bbxb compares with the one of the checkout to know whether the
# image it has is still the one this file describes
ARG BBXB_DOCKERFILE_SUM=unknown
LABEL bbxb.dockerfile="${BBXB_DOCKERFILE_SUM}"

# BBXB_IN_CONTAINER is how bbxb knows it is already inside: it never starts a container from here
ARG DATA_PATH=/mnt/bbcrossbuild/datadir
ENV DATA_PATH=${DATA_PATH} \
    BBXB_IN_CONTAINER=1

CMD ["/bin/bash"]
