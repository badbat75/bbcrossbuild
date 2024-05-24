FROM amd64/fedora:latest
RUN dnf -y upgrade
RUN dnf -y install bc parted e2fsprogs btrfs-progs bzip2-devel rsync vim-common gcc g++ binutils dwarves elfutils-libelf-devel patchelf libzstd libzstd-devel tree curl gawk flex git perl-Thread-Queue help2man xmltoman docbook-utils swig doxygen texinfo python3-docutils  libedit-devel lua-devel qemu-user-static openssl-devel libffi-devel libuuid-devel tcl-devel tk-devel  docbook-utils-pdf   gperf

#ADD resources/runme.sh .

ENV DATA_PATH=/mnt/bbcrossbuild/datadir

ENV PROJECT_NAME=lfs

ENV TARGET_PLATFORM=rpi3-aarch64

ADD https://api.github.com/repos/badbat75/bbcrossbuild/commits?per_page=1&sha=development latest

WORKDIR /mnt/bbcrossbuild
RUN test -f bbxb && git pull || git clone -v --single-branch https://github.com/badbat75/bbcrossbuild -b development .

CMD ./bbxb "${PROJECT_NAME}" "${TARGET_PLATFORM}" || read -n 1 -s -r -p "Press any key to continue..." && echo
