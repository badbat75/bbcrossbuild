# Base image with all dependencies pre-installed
FROM amd64/fedora:latest as base

# Install all dependencies in a single layer
RUN dnf -y upgrade && \
    dnf -y install \
    bc parted e2fsprogs btrfs-progs bzip2-devel rsync vim-common \
    gcc g++ binutils binutils-gold dwarves elfutils-libelf-devel patchelf \
    libzstd libzstd-devel file tree curl wget gawk flex patch git \
    qemu-user-static dracut gperf help2man xmltoman docbook-utils docbook-utils-pdf \
    docbook2X swig doxygen texinfo gtk-doc asciidoc rubygem-asciidoctor \
    perl-Thread-Queue perl-FindBin python3-passlib python3-docutils \
    libedit-devel lua-devel openssl-devel libffi-devel libuuid-devel \
    tcl-devel tk-devel glibc-devel glibc-gconv-extra

# Development image that uses the base
FROM base as dev

# Accept build arguments with defaults matching original values
ARG DATA_PATH=/mnt/bbcrossbuild/datadir
ARG PROJECT_NAME=lfs
ARG TARGET_PLATFORM=rpi3-aarch64

# Set as environment variables
ENV DATA_PATH=${DATA_PATH} \
    PROJECT_NAME=${PROJECT_NAME} \
    TARGET_PLATFORM=${TARGET_PLATFORM}

WORKDIR /mnt/bbcrossbuild

# Add source code last to leverage Docker layer caching
ADD . .

CMD ./bbxb "${PROJECT_NAME}" "${TARGET_PLATFORM}"
