FROM amd64/fedora:latest
RUN dnf -y upgrade
RUN dnf -y install bc parted e2fsprogs btrfs-progs bzip2-devel rsync vim-common gcc g++ binutils dwarves elfutils-libelf-devel patchelf libzstd libzstd-devel tree curl wget gawk flex patch git qemu-user-static gperf
RUN dnf -y install help2man xmltoman docbook-utils docbook-utils-pdf docbook2X swig doxygen texinfo gtk-doc asciidoc rubygem-asciidoctor
RUN dnf -y install perl-Thread-Queue perl-FindBin
RUN dnf -y install python3-passlib python3-docutils
RUN dnf -y install libedit-devel lua-devel openssl-devel libffi-devel libuuid-devel tcl-devel tk-devel glibc-devel glibc-gconv-extra

ENV DATA_PATH=/mnt/bbcrossbuild/datadir
ENV PROJECT_NAME=lfs
ENV TARGET_PLATFORM=rpi3-aarch64

WORKDIR /mnt/bbcrossbuild
ADD . .
#RUN dnf -y upgrade

CMD ./bbxb "${PROJECT_NAME}" "${TARGET_PLATFORM}" || read -n 1 -s -r -p "Press any key to continue..." && echo
