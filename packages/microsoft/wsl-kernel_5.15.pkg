# wsl-kernel_5.15
PKG_SUFFIX=.90.1
PKG_URL="https://github.com/microsoft/WSL2-Linux-Kernel/archive/refs/tags/linux-msft-wsl-5.15${PKG_SUFFIX}.tar.gz"
BUILD_PROCESS=kernelbuild
### Override default kernel configuration
case ${KERNEL_ARCH:-none} in
	x86)
		KERNEL_DEFCONFIG="Microsoft/config-wsl"
		;;
	arm64)
		KERNEL_DEFCONFIG="Microsoft/config-wsl-arm64"
		;;
esac
case ${WITH_EXTOPTS:-1} in
	yes|1)
		CONF_FLAGS+=" -e BTRFS_FS -e F2FS_FS -e CONFIG_F2FS_FS_SECURITY -e F2FS_FS_COMPRESSION"
		;;
esac
case ${WITH_RT:-0} in
	yes|1)
	# Enable preemptive/realtime kernel
		CONF_FLAGS+=" -d CONFIG_PREEMPT_NONE -d CONFIG_PREEMPT_VOLUNTARY -e CONFIG_PREEMPT"
		;;
esac