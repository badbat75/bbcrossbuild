# The build environment of bbxb: the host dependencies, nothing of the checkout.
#
# "./bbxb --container <project> <platform>" builds this image when docker does not have it or when
# the label below does not match the checksum of this file, then mounts the checkout and the data
# directory into it and runs the build there (container.functions). A recipe edit needs no rebuild.
FROM amd64/fedora:latest

# Install all dependencies in a single layer. shadow-utils, util-linux and sudo are the last three:
# the build runs as the user who started bbxb, created at run time by container_user, and its root
# steps go through sudo there as they do on the host
RUN dnf -y upgrade && \
    dnf -y install \
    bc parted e2fsprogs btrfs-progs dosfstools bzip2-devel rsync vim-common \
    gcc g++ binutils binutils-gold dwarves elfutils-libelf-devel patchelf \
    libzstd libzstd-devel file tree curl wget gawk flex patch git \
    qemu-user-static dracut gperf help2man xmltoman docbook-utils docbook-utils-pdf \
    docbook2X swig doxygen texinfo gtk-doc asciidoc rubygem-asciidoctor \
    perl-Thread-Queue perl-FindBin perl-IPC-Cmd perl-Pod-Html python3-passlib python3-docutils \
    graphviz libxslt docbook-style-xsl libxml2-devel \
    libedit-devel lua-devel openssl-devel libffi-devel libuuid-devel \
    tcl-devel tk-devel glibc-devel glibc-gconv-extra \
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
