# bbcrossbuild 4.0
This is a framework to automate the cross-compilation of packages through a project file.
## Current Limitations

 - Tested only ARM and ARM64 cross-compile projects and x86_64 straight compile projects. Other platforms would need
   adjustments and integrations

## QuickStart
**Prepare your environment**

    $ git clone https://github.com/badbat75/bbcrossbuild.git
    $ cd bbcrossbuild
    $ cp bbxb.conf.default bbxb.conf
    $ utilities/bootstrap.<fedora|ubuntu>
`bootstrap`  installs all the dependencies on the build host *(the script is not complete, yet)*.

**Customization**

Edit your bbxb.conf and change the behaviour of the framework if you need (optional).

    $ vi bbxb.conf

**Run**

Run your build using the predefined projects

    $ ./bbxb <project> <platform>
 
**Output**
 
Get your package here: `.bbxb/<project>/<platform>/<project>.tar.xz`

## Create your own project

### Define your project

#### Directives

**mount_tag:**  
Download and mount system image.   
`mount_tag <tag_name> --url "<image_url>" --imgfile "<image_filename>" --mountlist "<partition_list>" [--resize <resize_options>]`
+ `tag_name:` tag name of the image. If "distos", it will be used as sysroot for build packages. If "binaries", it will be used as destination for built packages.
+ `image_url:` URL where to download the image
+ `image_filename:` image file name to extract from archive
+ `partition_list:` how the build system should interpret the partitions of the images with following format "partno:mountpoint [partno:mountpoint] ..."
+ `resize_options:` resize the last partition using the following format "partno:size"

**unmount_tag:**  
Unmount image mounted with "tag_name". Always remember to unmount images before closing the project.   
`unmount_tag <tag_name>`   
+ `tag_name:` tag name of the image

**prepare_sysroot:**  
Relink (soft links) all the libraries with relative paths on DISTOS path.   
`prepare_sysroot`  

**run_on_root_dir:**  
Execute a command like the system is running. A specified command will be executed in a chroot-ed environment inside the tag image.   
`run_on_root_dir <tag_name> <as_user> "<command>" `
+ `tag_name:` tag name of the image
+ `as_user:` target user that is running the command
+ `command:` command to run

**setup_full_toolchain:**  
Set up toolchain (gcc, llvm, rust, python, make, autotools, cmake, meson, ninja). If no DISTOS is present it will bootstrap a SYSROOT using lfs packages (kernel, glibc and libxcrypt).   
`setup_full_toolchain [--with-gnu-install] [--with-main-gcc] [--with-llvm  [--with-llvm-install]] [--with-python]`
+ `--with-gnu-install:` install gcc libraries (libgcc, libstdc++...) in the binary folder
+ `--with-main-gcc:` links GCC target libraries in <PREFIX><LIBDIR><LIBSUFFIX> from <PREFIX>/lib/gcc/<HARCH>/<GCC_VER>
+ `--with-llvm:` build also llvm toolchain (Clang + LLVM)
+ `--with-llvm-install:` install clang and rt libraries in the binary folders
+ `--with-python:` build pyhton and install it in the binary folders

**build**  
build the package.   
`[optional_env_vars] build [--keep_builddir] [--no_save_status] [--no_gcc_check] <package_name>`   

Options:   
+ `--keep_builddir:` Specify to not delete the build directory after build
+ `--no_save_status:` Don't save the build status. The package will be built even if it has been built in a previous build
+ `--no_gcc_check:` Don't check if there's a gcc toolchain available (useful during bootstrap)

### Define your package

#### Package definition

**PKG_URL: (*)**  
URL where download the sources.   
`PKG_URL="http://packages.org/package"`

**GIT_URL:**  
URL where clone the sources via git.  
`GIT_URL="http://git.repo/user/repo"`

**GIT_COMMIT:**  
Tag or commit hash.  
`GIT_COMMIT="tags/v.1.5"`

**PKG_DEPS:**  
define dependencies to build and install before building this.  
`PKG_DEPS="dir1/package1 dir1/package2 dir2/package3"`

#### Prebuild process

**PATCHDEB:**  
URL where to download Debian package that contains patches.  
`PATCHDEB="http://packages.org/debian_patches"`

**PATCHES:**  
Patch filename under bbxb/patches directory or URL.  
`PATCHES="[patch1.patch] [url]"`

**PKG_PREBUILD:**  
Runs commands on source files before autoreconf and configuration on source directory
`PKG_PREBUILD="command1; command2 && command3"`  
#### Build process

**PKG_COPYSRC:**  
Copy sources in the build directory (often needed for buggy build processes). Not enabled by default on configmake (0), enabled on other build processes (1).  
`PKG_COPYSRC=1`

**BUILD_PROCESS: (*)**  
Define what build process to use:  
`downloadonly`: it only downloads the package and creates the source directory  
`configmake`: it downloads, creates source directory and run a standard configure/make build process  
`cmakebuild`: it downloads, creates source directory and run a standard cmake/make build process  
`mesonninja`: it downloads, creates source directory and run a standard meson/ninja build process  
`cargobuild`: it downloads, creates source directory and run a standard Rust cargo build process  
`simplemake`: it downloads, creates source directory, copy to build directory and run a standard make process  
`pythonbuild`: it downloads, creates source directory and run a standard python module build  
`kernelbuild`: it downloads, creates source directory and run a standard kernel build process using configuration provided in platform directory configuration file. 
`custombuild`: it downloads, creates source directory and run a custim build process using PKG_BUILDSCRIPT variable to build package.
`BUILD_PROCESS=downloadonly|configmake|mesonninja|simplemake|pythonbuild|kernelbuild`

**PKG_AUTOCONF:**  
[configmake]  
By default "autoreconf -fi" is not run before configure process (0). 1 to enable it.  
`AUTOCONF=0|1`

**AUTOCONF_PATH:**  
[configmake]  
Specify source subdirectory where to run autoreconf:  
`AUTOCONF_PATH={subdir1/subdir2[,subdir3[,subdir1/subdir2/subdir4]],autoscan}`
+ `autoscan:` Scan for configure.ac inside source directory

**CONF_CMD:**  
[configmake]  
Override configure command. "configure" by default  
`CONF_CMD="configure_new"`

**CONF_FLAGS:**  
[configmake,cmakebuild,mesonninja,cargobuild,kernelbuild]  
Specify configure, cmake or meson parameters. For kernel enable, disable or build as module, following the scripts/config syntax (-e enable, -d disable, -m module)
`CONF_FLAGS="--disable-feature or -DENABLE_FEATURE"`

**CONF_PATH:**  
[configmake,simplemake,cmake,custom]  
Specify source subdirectory where to run the build  
`CONF_PATH=subdir1/subdir2`

**STD_CONF_FLAGS:**  
[configmake]  
Use standard conf flags used by bbxb (i.e. --prefix, --exec-prefix etc), default to 1, set to 0 to override it
`STD_CONF_FLAGS=1`

**PKG_TOOLCHAIN:**  
[common]  
Define what toolchain to use when building this package
`PKG_TOOLCHAIN=gnu|llvm`

**PKG_CFLAGS/PKG_CXXFLAGS/PKG_LDFLAGS/PKG_FCFLAGS:**  
[common]  
Permits to specify additional c/c++/ld compiler flags to build with:  
`PKG_CFLAGS="-f<parameter> -W<parameter>"`
`PKG_CXXFLAGS="-f<parameter> -W<parameter>"`
`PKG_LDFLAGS="-l<library>"`

**PKG_FAULTYCFLAGS:**  
[common]  
Move compiler FLAGS from xFLAGS to CC/CXX/CPP in order to override some faulty build scripts (i.e.: old versions of libtool). Disabled (0) by default.
`PKG_FAULTYCFLAGS=0`

**PKG_CONFIG_SYSROOT_DIR:**  
[common]  
Override PKG_CONFIG_SYSROOT_DIR variable that is by default set on DISTOS path  
`PKG_CONFIG_SYSROOT_DIR=${BIN_PATH}`

**PKG_MAKEVARS:**  
[configmake,simplemake,cmakebuild,mesonninja,kernelbuild]
Define make parameters or variabes to pass to Makefile  
`PKG_MAKEVARS="-j1 VARIABLE1=value VARIABLE2=value2"`

**CARGO_BIN/CARGO_LIB/CARGO_BINLIST/CARGO_STRIP:**  
[cargobuild]  
Override installation path for binary  
`CARGO_BIN=${INSTALL_EXECPREFIX}/sbin`

Override installation path for library  
`CARGO_LIB=${INSTALL_EXECPREFIX}/lib64`

Define the list of binaries to build and install  
`CARGO_BINLIST="binary1 binary2 binary3"`

Define the list of libraries to build and install  
`CARGO_LIBLIST="lib1 lib2 lib3"`

Specify if the binaries should be stripped out of unneeded symbols  
`CARGO_STRIP=1`

**PKG_BUILDSCRIPT:**  
[custombuild]  
Run commands in the variable to build package  
`PKG_BUILDSCRIPT="command1; command2 && command3"`

**PKG_KERNEL_INITRAMFS:**  
[kernelbuild]  
Create initramfs for the kernel (default: 0)  
`PKG_KERNEL_INITRAMFS="{0|1}`

**PKG_KERNEL_INITRAMFS_DRIVERS:**  
[kernelbuild]  
Specify what drivers to install during initramfs initialization without .ko  
`PKG_KERNEL_INITRAMFS_DRIVERS="[driver1 [driver2 [drivern]]]`

**PKG_OVERRIDELTO:**  
[common]  
Override LTOENABLE environment variable that can be specified at bbxb.conf, project or package level by default (1) if not specified anywhere  
`PKG_OVERRIDELTO=0`

**PKG_OVERRIDELD:**  
[common]  
Override default linker environment variable that can be specified at bbxb.conf, project or package level by default (gold) if not specified anywhere  
`PKG_OVERRIDELLD={gold,ld,lld}`

**PKG_OVERRIDESHARED:**  
[common]  
Override BUILD_SHARED environment variable that can be specified at bbxb.conf, project or package level by default (1) if not specified anywhere  
`PKG_OVERRIDESHARED=1`

**PKG_OVERRIDESTATIC:**  
[common]  
Override BUILD_STATIC environment variable that can be specified at bbxb.conf, project or package level by default (0) if not specified anywhere  
`PKG_OVERRIDESTATIC=0`

#### Post build process

**PKG_POSTBUILD:**  
Runs commands on source files after build and installation on build directory:  
`PKG_POSTBUILD="command1; command2 && command3"`

**PKG_POSTINSTALL:**
Runs commands after package installation or image finalization in a sysrooted environment:  
`PKG_POSTINSTALL="command1; command2 && command3"`

**PKG_POSTINSTALL_PRIO:**  
Define in what postition the postinstall script should be run:  
`PKG_POSTINSTALL_PRIO=50`

#### Environment variables
The following environemnt variables can be used to create your package and default values are:

`BIN_PATH`: ${HOME}/.bbxb/< projectname >/< platformname >/binaries (destination of build)  
`DISTOS_PATH`: ${HOME}/.bbxb/< projectname >/< platformname >/distos (source of distribution libraries)  
`INSTALL_PREFIX`: /usr  
`INSTALL_EXECPREFIX`: /usr  
`INSTALL_INCLUDEDIR`: /usr/include  
`INSTALL_LIBDIR`: /usr/lib or /usr/lib/(MULTIARCH suffix)  
`INSTALL_SYSCONFDIR`: /usr/etc  
`INSTALL_LOCALSTATEDIR`:/var  

**: mandatory information*

### Define your platform

`HOS=<OS_Name>`: Operating system name  
`HM=<CPU_Architecture>`: CPU Architecture (arm, aarch64, x86_64, ...)  
`HLIBC=<C_Library>`: C Library type (gnu, gnueabi, gnueabihf, ...)  
`HARCH_LIB=[64]`: Set to add 64 to lib directory  
`HARCH_BITWIDTH={32|64}`: Architecture bit width  

`HMARCH=<C_Comp_MARCH>`: Compiler architecure definition (-march)  
`HMCPU=<C_Comp_MCPU>`: Compiler CPU definition (-mtune)  
`HMFPU=<C_Comp_MFPU>`: Compiler FPU definition (-mfpu only for arm)  
`HMFLOATABI={hard|soft}`: Compiler Float type (hard or soft)  
`HMENDIAN={little|big}`: Compiler endianess  
`HMGCCPARAMS="<Add_C_Comp_Flags>`: Additional C Compiler Flags  
`HMARCH_RUST="<Add_Rust_Comp_Flags>"`: RUST Flags for architecture (i.e. "+neon,+crypto")  

`KERNEL_ARCH=<Arch_Subdir>`: Kernel architecture subdirectory (arm, arm64, x86, ...)  
`KERNEL_DEFCONFIG=<Kern_Config>`: What configuration file to use under (arch/[Arch_subdir]/config, i.e.: bcmrpi3_defconfig)  
`KERNEL_EXTRAVERSION=<String>`: String to append to kernel version  
`KERNEL_IMAGE=<Kern_Image>`: Name of the kernel image filename generated by kernel build process (i.e.: Image.gz, zImage, bzImage)  
`KERNEL_NAME=<Boot_Kern_Image>`: Name of the kernel image filename to put in /boot directory  
`KERNEL_DTBS={0|1}`: Specify the need of dtbs files  

`QEMU_MACHINE=<machine>`: QEMU Machine name for emulator (i.e virt or q35)  
`QEMU_CPU=<cpu>`: QEMU CPU type for emulator (i.e cortex-a53)  
`QEMU_SMP=<smp>`: QEMU CPU numbers for emulator (i.e. 2)  
`QEMU_RAM=<memory>`: QEMU RAM amount in M for emulator (i.e. 2048)  
`QEMU_STORAGE=<storage_device>`: QEMU device for storage (i.e. virtio-blk-pci)  
`QEMU_NETWORK=<netowrk_device>`: QEMU device for network (i.e. virtio-net-pci)  
`QEMU_GRAPHIC=<graphic_device>`: QEMU device for graphic adapter (i.e. virtio-gpu-pci,xres=1600,yres=900)  
`QEMU_INPUT="<input devices>"`: QEMU devices for inputa (i.e. "virtio-keyboard-pci virtio-mouse-pci")  
`QEMU_CONSOLE=<tty_device>`: Specify where to output the console as a kernel_append parameter for emulator (i.e. ttyS0)  
`QEMU_DTB=<DTB_Name>`: Specify what DTB to use (i.e. bcm2710-rpi-3-b.dtb)  
`QEMU_OTHERDEVICES="<other_devices>"`: QEMU other needed devices (i.e. "virtio-balloon-pci virtio-rng-pci")  
`QEMU_KERNCONFIG="<kernel_append_params"`: Further kernel_append parameters for emulator (i.e. "net.ifnames=0 video=1600x900-32")  
