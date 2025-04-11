# BBCrossBuild 3.1.1

A framework to automate cross-compilation of packages through project files.

## Current Limitations

- Tested primarily with ARM, ARM64 cross-compile projects and x86_64 straight compile projects
- Other platforms may require adjustments and integrations

## QuickStart

**Prepare your environment**

```bash
$ git clone https://github.com/badbat75/bbcrossbuild.git
$ cd bbcrossbuild
$ cp bbxb.conf.default bbxb.conf
$ utilities/bootstrap.<fedora|ubuntu|aws>
```

The `bootstrap` script installs all required dependencies on the build host.

**Customization**

Edit your `bbxb.conf` to configure the framework (optional):

```bash
$ vi bbxb.conf
```

**Run**

Build using predefined projects:

```bash
$ ./bbxb <project> <platform>
```

**Output**

Find your package at: `.bbxb/<project>/<platform>/<project>.tar.xz`

## Deployment Options

### Docker

The project includes Docker support for containerized builds:

```bash
# Build the container
$ utilities/container/build.sh

# Run the container
$ utilities/container/run.sh
```

### AWS

You can set up and run builds on an EC2 instance:

```bash
# Create and configure an EC2 instance
$ utilities/aws_create_infrastructure run

# Check status
$ utilities/aws_create_infrastructure show

# Terminate the instance
$ utilities/aws_create_infrastructure terminate

# Clean up resources
$ utilities/aws_create_infrastructure destroy
```

## Creating Custom Projects

Projects are defined in `.prj` files that specify build steps and package dependencies. To create a new project:

1. Create a new file in the `projects/` directory with a `.prj` extension
2. Configure build options and specify packages to build

### Project Directives

BBCrossBuild provides various functions for use in project files. These are organized into separate function files:

#### Core Functions (core.functions)

- **param2value**: Process command line parameters
  ```
  OPTS="option1 option2" OPTS_WITH_VALUE="option3 option4" param2value "${@}"
  ```
  - `OPTS`: Space-separated list of boolean options (without values)
  - `OPTS_WITH_VALUE`: Space-separated list of options that require values
  - `"${@}"`: Pass all command-line arguments

- **download_uncompress**: Download and extract archives
  ```
  download_uncompress <URL> <destination> [files_to_extract]
  ```
  - `<URL>`: URL to download from
  - `<destination>`: Directory where to extract files
  - `[files_to_extract]`: Optional list of specific files to extract
  - Environment variables:
    - `STRIPCOMPONENTS=<n>`: Strip n leading components from paths
    - `ARCHIVEDIRS=<dirs>`: Specify directories to extract
    - `NODELETEDESTDIR=1`: Don't delete destination directory before extracting

- **test_version**: Compare version strings 
  ```
  test_version <version1> <operator> <version2>
  ```
  - `<version1>`: First version to compare
  - `<operator>`: Comparison operator (-gt, -ge, -lt, -le, -eq, -ne)
  - `<version2>`: Second version to compare

- **pause**: Pause execution until user presses a key
  ```
  pause
  ```

- **pathadd**: Add path to environment variable
  ```
  pathadd <PATH|LD_LIBRARY_PATH> <path-name>
  ```
  - `<PATH|LD_LIBRARY_PATH>`: Environment variable to modify
  - `<path-name>`: Path to add

- **pathremove**: Remove path from environment variable
  ```
  pathremove <PATH|LD_LIBRARY_PATH> <path-name>
  ```
  - `<PATH|LD_LIBRARY_PATH>`: Environment variable to modify
  - `<path-name>`: Path to remove

- **log_buffer**: Log messages to a buffer
  ```
  log_buffer [log_type] [log_file]
  ```
  - `[log_type]`: Type of log entry (cmd, info, log, status, error)
  - `[log_file]`: File to log to (default: /dev/stdout)

- **run_cmd**: Run commands with logging
  ```
  run_cmd [-S|-s] "command string"
  ```
  - `-S`: Run with sudo/bash
  - `-s`: Run with sudo
  - `"command string"`: Command to execute

- **trow_error**: Throw an error with message
  ```
  trow_error <error_code> <error_message>
  ```
  - `<error_code>`: Numeric error code
  - `<error_message>`: Error message text

#### Build Functions (build.functions)

- **build**: Build a package with given options
  ```
  build [--force] [--keep_builddir] [--no_save_status] [--no_gcc_check] [--temporary] [--toolchain <toolchain>] [--with_extra_modules <modules>] <package_name>
  ```
  - `--force`: Force rebuild even if already built
  - `--keep_builddir`: Keep build directory after build
  - `--no_save_status`: Don't save build status
  - `--no_gcc_check`: Skip GCC toolchain check
  - `--temporary`: Create temporary status file
  - `--toolchain <toolchain>`: Specify toolchain (gnu, llvm)
  - `--with_extra_modules <modules>`: Add kernel modules
  - `<package_name>`: Name of package to build (can include target: package:target)

- **setbuildenv**: Set up build environment
  ```
  setbuildenv [--target <env>]
  ```
  - `--target <env>`: Target environment (native, cross, target)

- **settcenv**: Set up toolchain environment
  ```
  settcenv [--target <env>]
  ```
  - `--target <env>`: Target environment (native, cross, target)

- **create_environment_source**: Create environment source file
  ```
  create_environment_source [--target <env>]
  ```
  - `--target <env>`: Target environment (native, cross, target)

#### Project Functions (project.functions)

- **clean_project**: Clean up project directories
  ```
  clean_project
  ```

- **root_project**: Change ownership of project files to root
  ```
  root_project
  ```

- **remove_devfiles**: Remove development files from binaries
  ```
  remove_devfiles [no-exitstatus]
  ```
  - `no-exitstatus`: Optional flag to suppress exit status output

- **resume_devfiles**: Restore development files to binaries
  ```
  resume_devfiles [no-exitstatus]
  ```
  - `no-exitstatus`: Optional flag to suppress exit status output

- **create_sfx_package**: Create a self-extracting package
  ```
  create_sfx_package <package_directory>
  ```
  - `<package_directory>`: Directory containing package files

- **add_system_config_variable**: Add a variable to system configuration
  ```
  add_system_config_variable <variable_name> <value>
  ```
  - `<variable_name>`: Name of the variable
  - `<value>`: Value to assign to the variable

#### Images Functions (images.functions)

- **create_image**: Create a new disk image
  ```
  create_image <tag_name> [--rootfstype <fs_type>] [--size <size>] [--layout <layout_file>]
  ```
  - `<tag_name>`: Name for the image
  - `--rootfstype <fs_type>`: Filesystem type (ext4, btrfs, etc.)
  - `--size <size>`: Size of the image (e.g., 2G, 4G)
  - `--layout <layout_file>`: Partition layout file

- **mount_tag**: Download and mount system image
  ```
  mount_tag <tag_name> [--url <image_url>] [--imgfile <image_filename>] --mountlist "<partition_list>" [--resize <resize_options>]
  ```
  - `<tag_name>`: Tag name of the image
  - `--url <image_url>`: URL where to download the image
  - `--imgfile <image_filename>`: Image file name to extract from archive
  - `--mountlist "<partition_list>"`: Partitions to mount (format: "partno:mountpoint [partno:mountpoint]")
  - `--resize <resize_options>`: Resize partition (format: "partno:size")

- **unmount_tag**: Unmount image
  ```
  unmount_tag [--all] [--finalize] [--kill] <tag_name>
  ```
  - `<tag_name>`: Tag name of the image to unmount
  - `--all`: Unmount all mounted images
  - `--finalize`: Create .dd file for direct writing to SD/media
  - `--kill`: Force kill processes using the mount point

- **mount_from**: Mount from downloaded image
  ```
  mount_from --url <URL> --imgfile <Image2Mount> --tag <MountPointName> --resize <partnumber:size> --mountlist "<partnumber1:/> [partnumber2:mountpoint2]"
  ```
  - `--url <URL>`: URL to download image from
  - `--imgfile <Image2Mount>`: Image filename in archive
  - `--tag <MountPointName>`: Mount point name
  - `--resize <partnumber:size>`: Resize partition
  - `--mountlist "<partition_list>"`: Partitions to mount

- **prepare_sysroot**: Relink libraries with relative paths
  ```
  prepare_sysroot
  ```

- **run_on_root_dir**: Execute commands in chroot environment
  ```
  run_on_root_dir <tag_name> <as_user> "<command>" [--allocate_pty]
  ```
  - `<tag_name>`: Tag name of the image
  - `<as_user>`: User to run the command as
  - `"<command>"`: Command to execute
  - `--allocate_pty`: Allocate a pseudo-terminal

- **set_ownership**: Set ownership on files
  ```
  set_ownership <owner:group> <target_directory> <copy_ownership_from_directory> <file>
  ```
  - `<owner:group>`: Owner and group (format: "user:group")
  - `<target_directory>`: Target directory
  - `<copy_ownership_from_directory>`: Reference directory
  - `<file>`: File to set ownership on

- **inject_into_mount_tag**: Copy content into mounted image
  ```
  inject_into_mount_tag <mount_tag> <object> <directory> [<owner>] [--remove_devfiles]
  ```
  - `<mount_tag>`: Tag name of the mounted image
  - `<object>`: Object to inject (binaries or specific file)
  - `<directory>`: Directory under mount point
  - `[<owner>]`: Owner for the files (default: "root:root")
  - `--remove_devfiles`: Remove development files

- **run_postinstall_scripts**: Run post-installation scripts
  ```
  run_postinstall_scripts <mount_tag>
  ```
  - `<mount_tag>`: Tag name of the mounted image

#### Toolchain Functions (toolchain.functions)

- **setup_full_toolchain**: Set up the complete toolchain
  ```
  setup_full_toolchain [--with-gnu-install] [--with-main-gcc] [--with-llvm] [--with-python]
  ```
  - `--with-gnu-install`: Install gcc libraries in binary folder
  - `--with-main-gcc`: Link GCC target libraries
  - `--with-llvm`: Build LLVM toolchain
  - `--with-python`: Build Python

- **setup_rust**: Set up Rust compiler
  ```
  setup_rust
  ```

- **setup_autotools**: Set up autotools
  ```
  setup_autotools [<autoconf_ver>] [<automake_ver>] [<libtool_ver>] [<gettext_ver>] [--default]
  ```
  - `[<autoconf_ver>]`: Autoconf version (default: AUTOCONF_VER)
  - `[<automake_ver>]`: Automake version (default: AUTOMAKE_VER)
  - `[<libtool_ver>]`: Libtool version (default: LIBTOOL_VER)
  - `[<gettext_ver>]`: Gettext version (default: GETTEXT_VER)
  - `--default`: Use default versions

- **setup_binutils**: Set up binutils
  ```
  setup_binutils
  ```

- **setup_gcc**: Set up GNU C compiler
  ```
  setup_gcc [--install] [--main_gcc] [--targets <targets>]
  ```
  - `--install`: Install GCC libraries
  - `--main_gcc`: Link GCC target libraries
  - `--targets <targets>`: Target libraries to build (all, comma-separated list)

- **setup_llvm**: Set up LLVM compiler
  ```
  setup_llvm [--targets <targets>]
  ```
  - `--targets <targets>`: Target architecture

- **setup_python**: Set up Python
  ```
  setup_python [<version>|detect|--native-only]
  ```
  - `<version>`: Python version (default: PYTHON_VER)
  - `detect`: Auto-detect from sysroot
  - `--native-only`: Only build for host

- **prepare_sysroot**: Relink libraries with relative paths
  ```
  prepare_sysroot
  ```

- **create_sysroot**: Create sysroot from archive
  ```
  create_sysroot <archive_url_or_file>
  ```
  - `<archive_url_or_file>`: URL or local file containing root filesystem

#### Data Functions (data.functions)

- **create_key_sscertificate**: Create a self-signed certificate
  ```
  create_key_sscertificate
  ```

- **generate_ssh_keys**: Generate SSH keys
  ```
  generate_ssh_keys [--install <destination>]
  ```
  - `--install <destination>`: Install keys to destination

Here's a simple example of how to create a project file:

```bash
#!/bin/bash
# Example project file: example.prj

## Configuration options
BUILD_LIBSHARED=1
BUILD_LIBSTATIC=0
LTOENABLE=thin
KERNEL_LTOENABLE=thin

## Set up the toolchain
setup_full_toolchain --with-gnu-install --with-llvm --with-python

## Create a base filesystem
build lfs/create-base-fs_1.0

## Create and mount an image
create_image myimage --rootfstype ext4 --size 2G
mount_tag myimage --mountlist "2:/ 1:/boot"

## Build some packages
build package1
build package2

## Run post-installation commands
run_on_root_dir myimage root "systemctl enable service1"
run_on_root_dir myimage root "echo 'custom config' > /etc/config"

## Unmount the image
unmount_tag myimage

## Create self-extracting package
create_sfx_package ${PACKAGES_PATH}/my_package
```

### Package Parameters

The following parameters are extracted from the build.functions file and can be used to define a package:

#### Package Definition

**PKG_URL: (*)**  
URL where to download the sources.   
`PKG_URL="http://packages.org/package"`

**GIT_URL:**  
URL where to clone the sources via git.  
`GIT_URL="http://git.repo/user/repo"`

**GIT_COMMIT:**  
Tag or commit hash.  
`GIT_COMMIT="tags/v.1.5"`

**PKG_DEPS:**  
Define dependencies to build and install before building this.  
`PKG_DEPS="dir1/package1 dir1/package2 dir2/package3"`

**PKG_SRCDIR:**  
Specify source directory name.  
`PKG_SRCDIR="package-1.0"`

**PKG_SUFFIX:**  
Add a suffix to the package name.  
`PKG_SUFFIX="-custom"`

**PKG_VER:**  
Specify package version.  
`PKG_VER="1.0"`

**PKG_CHECK:**  
Command to check if package is already installed.  
`PKG_CHECK="command arg1 arg2"`

#### Prebuild Process

**PATCHDEB:**  
URL where to download Debian package that contains patches.  
`PATCHDEB="http://packages.org/debian_patches"`

**PATCHES:**  
Patch filename under bbxb/patches directory or URL.  
`PATCHES="[patch1.patch] [url]"`

**PKG_PREBUILD:**  
Runs commands on source files before autoreconf and configuration on source directory.  
`PKG_PREBUILD="command1; command2 && command3"`

**PKG_AUTOCONF:**  
By default "autoreconf -fi" is not run before configure process (0). 1 to enable it.  
`PKG_AUTOCONF=0|1`

**PKG_AUTOMAKE:**  
Override automake version.  
`PKG_AUTOMAKE="1.16.5"`

**PKG_LIBTOOL:**  
Override libtool version.  
`PKG_LIBTOOL="2.4.7"`

**PKG_GETTEXT:**  
Override gettext version.  
`PKG_GETTEXT="0.21.1"`

**AUTOCONF_PATH:**  
Specify source subdirectory where to run autoreconf.  
`AUTOCONF_PATH={subdir1/subdir2[,subdir3[,subdir1/subdir2/subdir4]],autoscan}`

**AUTOCONF_THREADS:**  
Number of threads to use for autoreconf.  
`AUTOCONF_THREADS=4`

#### Build Process

**BUILD_PROCESS: (*)**  
Define what build process to use.  
`BUILD_PROCESS=downloadonly|configmake|cmakebuild|mesonninja|cargobuild|simplemake|pythonbuild|kernelbuild|custombuild|perlmodule`

Available build processes:
- `downloadonly`: Only downloads the package and creates the source directory
- `configmake`: Downloads, creates source directory and runs a standard configure/make build process
- `cmakebuild`: Downloads, creates source directory and runs a standard cmake/make build process
- `mesonninja`: Downloads, creates source directory and runs a standard meson/ninja build process
- `cargobuild`: Downloads, creates source directory and runs a standard Rust cargo build process
- `simplemake`: Downloads, creates source directory, copies to build directory and runs a standard make process
- `pythonbuild`: Downloads, creates source directory and runs a standard python module build
- `kernelbuild`: Downloads, creates source directory and runs a standard kernel build process using platform configuration
- `custombuild`: Downloads, creates source directory and runs a custom build process using PKG_BUILDSCRIPT
- `perlmodule`: Downloads, creates source directory and builds a Perl module

**PKG_COPYSRC:**  
Copy sources in the build directory (often needed for buggy build processes).  
`PKG_COPYSRC=1`

**PKG_TARGET:**  
Specify build target.  
`PKG_TARGET="native|cross|target"`

**PKG_TARGET_ENV:**  
Specify build target environment.  
`PKG_TARGET_ENV="native|cross|target"`

**PKG_DISABLECROSSPYTHON:**  
Disable cross-python environment.  
`PKG_DISABLECROSSPYTHON=1`

**PKG_DISABLECCWRAPPER:**  
Disable compiler wrapper.  
`PKG_DISABLECCWRAPPER=1`

**CONF_CMD:**  
Override configure command. "configure" by default.  
`CONF_CMD="configure_new"`

**CONF_ENV:**  
Environment variables for configure command.  
`CONF_ENV="VAR1=value1 VAR2=value2"`

**CONF_FLAGS:**  
Specify configure, cmake or meson parameters. For kernel: -e enable, -d disable, -m module.  
`CONF_FLAGS="--disable-feature or -DENABLE_FEATURE"`

**CONF_PATH:**  
Specify source subdirectory where to run the build.  
`CONF_PATH=subdir1/subdir2`

**CONF_VARS:**  
Variables to pass to configure.  
`CONF_VARS="VAR1=value1 VAR2=value2"`

**STD_CONF_FLAGS:**  
Use standard conf flags used by bbxb (--prefix, --exec-prefix, etc). Default: 1.  
`STD_CONF_FLAGS=1`

**CMAKE_GENERATOR:**  
Specify CMake generator.  
`CMAKE_GENERATOR="Ninja"`

**PKG_TOOLCHAIN:**  
Define what toolchain to use when building this package.  
`PKG_TOOLCHAIN=gnu|llvm`

**PKG_LLVMPOLLYFEATURES:**  
Specify LLVM Polly features.  
`PKG_LLVMPOLLYFEATURES="polly vectorizer parallel"`

**PKG_CFLAGS/PKG_CXXFLAGS/PKG_LDFLAGS/PKG_FCFLAGS:**  
Specify additional compiler flags.  
`PKG_CFLAGS="-f<parameter> -W<parameter>"`  
`PKG_CXXFLAGS="-f<parameter> -W<parameter>"`  
`PKG_LDFLAGS="-l<library>"`  
`PKG_FCFLAGS="-f<parameter>"`

**PKG_FAULTYCFLAGS:**  
Move compiler FLAGS from xFLAGS to CC/CXX/CPP for faulty build scripts.  
`PKG_FAULTYCFLAGS=0`

**PKG_CONFIG_SYSROOT_DIR:**  
Override PKG_CONFIG_SYSROOT_DIR variable.  
`PKG_CONFIG_SYSROOT_DIR=${BIN_PATH}`

**PKG_LD_LIBRARY_PATH:**  
Additional LD_LIBRARY_PATH.  
`PKG_LD_LIBRARY_PATH="/path/to/lib"`

**PKG_MAKEENV:**  
Environment variables for make.  
`PKG_MAKEENV="VAR1=value1 VAR2=value2"`

**PKG_MAKETARGETS:**  
Make targets to build.  
`PKG_MAKETARGETS="all,install"`

**PKG_MAKEVARS:**  
Make parameters or variables.  
`PKG_MAKEVARS="-j1 VARIABLE1=value VARIABLE2=value2"`

**CARGO_BIN:**  
Override installation path for binary.  
`CARGO_BIN=${INSTALL_EXECPREFIX}/sbin`

**CARGO_LIB:**  
Override installation path for library.  
`CARGO_LIB=${INSTALL_EXECPREFIX}/lib64`

**CARGO_BINLIST:**  
Define binaries to build and install.  
`CARGO_BINLIST="binary1 binary2 binary3"`

**CARGO_LIBLIST:**  
Define libraries to build and install.  
`CARGO_LIBLIST="lib1 lib2 lib3"`

**CARGO_STRIP:**  
Specify if binaries should be stripped.  
`CARGO_STRIP=1`

**PKG_BUILDSCRIPT:**  
Run commands to build package (for custombuild).  
`PKG_BUILDSCRIPT="command1; command2 && command3"`

**PKG_KERNEL_MOD:**  
Kernel module name.  
`PKG_KERNEL_MOD="mymodule"`

**PKG_KERNEL_MODPATH:**  
Kernel module path.  
`PKG_KERNEL_MODPATH="extra"`

**PKG_KERNEL_INITRAMFS:**  
Create initramfs for the kernel (default: 0).  
`PKG_KERNEL_INITRAMFS=1`

**PKG_KERNEL_INITRAMFS_DRIVERS:**  
Drivers to install during initramfs initialization.  
`PKG_KERNEL_INITRAMFS_DRIVERS="driver1 driver2 driver3"`

**PKG_KERNEL_BUILD_MODULES:**  
Additional kernel modules to build.  
`PKG_KERNEL_BUILD_MODULES="mod1,mod2,mod3"`

**PKG_OVERRIDELTO:**  
Override LTOENABLE environment variable.  
`PKG_OVERRIDELTO=0|1|2|thin|fat`

**PKG_OVERRIDELD:**  
Override default linker.  
`PKG_OVERRIDELD=gold|ld|lld`

**PKG_OVERRIDESHARED:**  
Override BUILD_SHARED environment variable.  
`PKG_OVERRIDESHARED=0|1`

**PKG_OVERRIDESTATIC:**  
Override BUILD_STATIC environment variable.  
`PKG_OVERRIDESTATIC=0|1`

**PKG_RUSTFLAGS:**  
Rust compiler flags.  
`PKG_RUSTFLAGS="-C target-feature=+crt-static"`

#### Post build process

**PKG_POSTBUILD:**  
Runs commands after build and installation on build directory.  
`PKG_POSTBUILD="command1; command2 && command3"`

**PKG_POSTINSTALL:**  
Runs commands after package installation in a sysrooted environment.  
`PKG_POSTINSTALL="command1; command2 && command3"`

**PKG_POSTINSTALL_PRIO:**  
Define the priority for the postinstall script.  
`PKG_POSTINSTALL_PRIO=50`

**VAR_INSTALL_LIBDIR:**  
Override INSTALL_LIBDIR.  
`VAR_INSTALL_LIBDIR="/usr/lib64"`

**VAR_INSTALL_LIBSUFFIX:**  
Override INSTALL_LIBSUFFIX.  
`VAR_INSTALL_LIBSUFFIX="64"`

**VAR_INSTALL_INCDIR:**  
Override INSTALL_INCLUDEDIR.  
`VAR_INSTALL_INCDIR="/usr/include"`

**VAR_INSTALL_CONFDIR:**  
Override INSTALL_SYSCONFDIR.  
`VAR_INSTALL_CONFDIR="/etc"`

## Platform Configuration

Platform files (`.conf`) define architecture settings:

```bash
HOS=linux            # Operating system name
HM=aarch64           # CPU Architecture
HLIBC=gnu            # C Library type
HARCH_LIB=64         # Set to add 64 to lib directory
HARCH_BITWIDTH=64    # Architecture bit width

HMARCH=armv8-a+crypto # Compiler architecture definition
HMCPU=cortex-a53     # Compiler CPU definition
HMENDIAN=little      # Compiler endianness

KERNEL_ARCH=arm64    # Kernel architecture subdirectory
KERNEL_DEFCONFIG=bcmrpi3_defconfig # Kernel configuration
KERNEL_IMAGE=Image.gz # Kernel image name
KERNEL_DTBS=1        # Enable device tree binaries

# QEMU settings for emulation
QEMU_MACHINE=raspi3b
QEMU_CPU=cortex-a53
QEMU_SMP=4
QEMU_RAM=1024
QEMU_STORAGE=sd-card
QEMU_NETWORK=usb-net
QEMU_CONSOLE=ttyAMA0
QEMU_DTB=bcm2710-rpi-3-b.dtb
```

## Utilities

BBCrossBuild includes several utility scripts to help with development:

- `deptool`: Analyze package dependencies
  ```
  utilities/deptool search <directory> <library>   # Search for libraries
  utilities/deptool show <file>                    # Show dependencies
  utilities/deptool showall <directory>            # Show all dependencies
  ```

- `crossgdb`: Debug cross-compiled binaries
  ```
  utilities/crossgdb <executable> [args]
  ```

- `crossldd`: Show shared library dependencies
  ```
  utilities/crossldd <executable>
  ```

- `qemu_cmdgen`: Generate QEMU commands for testing
  ```
  utilities/qemu_cmdgen [--run] [--quiet] [--batchtype <type>] [--rootdev <dev>] [--rootfs <fs>] [--savecmd <file>] <project> <platform>
  ```

- `fs_manager`: Create and manage filesystem images
  ```
  utilities/fs_manager/fs_manager [-c] [-m] [-u] [-r] [-s <size>] [--rootfs <fs>] [--layout <file>] <image>
  ```

- `aws_create_infrastructure`: Manage AWS EC2 instances
  ```
  utilities/aws_create_infrastructure [run|terminate|destroy|show]
  ```