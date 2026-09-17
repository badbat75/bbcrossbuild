# BBCrossBuild 4.0.0

A framework to automate cross-compilation of packages through project files.

## Current Limitations

- Tested primarily with ARM, ARM64 cross-compile projects and x86_64 straight compile projects
- Other platforms may require adjustments and integrations

## QuickStart

**Prepare your environment**

```bash
$ git clone --recurse-submodules https://github.com/badbat75/bbcrossbuild.git
$ cd bbcrossbuild
$ cp bbxb.conf.default bbxb.conf
$ utilities/bootstrap.<fedora|ubuntu|aws>
```

The package groups under `packages/` are git submodules (`packages-lfs`, `packages-moode`... next to this repository): an existing checkout gets them with `git submodule update --init`, and `bbxb` refuses to run while a group directory is empty. The `bootstrap` script installs all required dependencies on the build host.

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
  - Returns the status of the command once its whole output is in the log; `MAX_RETRIES=<n>` repeats a failing command

- **log_run**: Run a command or a function with stdout and stderr logged through `log_buffer`
  ```
  log_run <log_file> <command> [<argument>...]
  ```
  - `<log_file>`: File to log to (empty: the current stdout)
  - Waits for the log writers (`LOG_WAIT_TIMEOUT` seconds at most, default 10) and returns the status of the command. The command runs in a `||` list: a function passed here has to return its own status

- **trow_error**: Throw an error with message
  ```
  trow_error <error_code> <error_message>
  ```
  - `<error_code>`: Numeric error code
  - `<error_message>`: Error message text

- **on_error**, **on_interrupt**: The ERR and SIGINT traps of `bbxb`
  ```
  trap 'on_error ${?}' ERR
  trap 'on_interrupt' SIGINT
  ```
  - A failure inside nested builds is reported once, by the innermost shell: message, package, call stack, log file and its last `ERROR_LOG_LINES` (default 20) error lines, preceded by half as many output lines (meson and cmake explain a failure on stdout). The parent shells pass the status on, the main shell unmounts the images and prints `Build stopped [status <n>]`

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
  - A target build gets the source path maps of `host_path_maps`: `-ffile-prefix-map` in the C, C++ and preprocessor flags, `--remap-path-scope=object` and `--remap-path-prefix` in `RUSTFLAGS`

- **create_environment_source**: Create environment source file
  ```
  create_environment_source [--target <env>]
  ```
  - `--target <env>`: Target environment (native, cross, target)

- **strip_host_paths**: Rewrite, in the post-build script of a target build, the installed files that record how the package was built (`*-config` scripts, `Makefile.inc`, `Config.pm`, the sysconfigdata of Python...) into what the image has
  ```
  strip_host_paths [--cmake] <file>...
  ```
  - The compiler wrapper goes; `--sysroot` and `-Wl,--sysroot` of the sysroot, `-Wl,-rpath-link` into it, the `-I`/`-L` of its system directories and every `-I`/`-L` into a toolchain go; the source path maps (`-f*-prefix-map`, `--remap-path-prefix`, `--remap-path-scope`) go; a program of a toolchain keeps its name only; the sysroot in front of any other path goes
  - `--cmake`: the sysroot becomes `${CMAKE_SYSROOT}` instead (cmake config and export files), set by a cross build and empty in the image
  - The source and build trees of the package are left to the recipe; nothing happens in native and cross builds. Available to the recipe scripts through `recipe.source`

- **host_path_maps**: Print the `OLD=NEW` source path maps of a target build, one per line; `settcenv` passes them to the C compilers and to rustc, the gcc setup to the target libraries (`CFLAGS_FOR_TARGET`), so `__FILE__` in assert and log messages, the debug information and the panic locations of Rust name no path of the build host
  ```
  host_path_maps
  ```
  - `DATA_PATH` (sources, build trees, toolchains, cargo registry) becomes `/usr/src/bbxb`, then `BIN_PATH` and `SYSROOT` become the path in the image; gcc and rustc apply the last matching map, clang the longest

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

### Package Layout

Every package is a directory under `packages/<group>/<name>/` (the directory name is the package name used by `build <group>/<name>`). Each group is a git submodule with its own repository (`packages-<group>`, `.gitmodules` lists them with URLs relative to this one), so a recipe change is committed in the group repository and the new commit is then recorded here; `packages/template/` belongs to this repository.

```
packages/<group>/<name>/
  package.env       # the recipe: variable assignments, sourced by build with PKG_TARGET, TOOLCHAIN, HARCH, INSTALL_* set
  prebuild.sh       # optional, runs in the source directory before autoreconf/configure (set -x, no -e)
  build.sh          # optional, the whole build when BUILD_PROCESS=custom (bash -ex, build directory)
  postbuild.sh      # optional, runs in the build directory after the build process (set -ex)
  postinstall.sh    # optional, copied into the sysroot and sourced as root inside the target image
  files/            # optional, static files referenced as ${PKG_RECIPEPATH}/files/<name>
  patches/          # optional, *.patch and *.diff files applied in name order (00-first.patch, 10-second.patch)
  variants/         # optional, what differs for a target, toolchain, arch, platform, version or option
    target/<native|cross|sysroot|default|name>/   # same layout as the recipe: package.env, scripts, files/, patches/
    toolchain/<gnu|llvm>/  arch/<HM>/  platform/<PLATFORM_NAME>/  version/<PKG_VER>/
    option/<name>/  option/<name>=<value>/         # selected by WITH_<NAME>
```

`package.env` describes the default build; nothing in it needs a `case`. After sourcing it, `build` applies on top of it the `package.env` of every variant directory whose selector matches, in a fixed order: the target class (`native`, `cross` or `sysroot` for anything else), the target name (`default` when no `:<target>` was given), the toolchain the package is really built with (`PKG_TOOLCHAIN` and `build --toolchain` included), the platform `HM`, the platform name, `PKG_VER`, the options (`option/<name>` when `WITH_<NAME>` is set and not 0/no/false/off, `option/<name>=<value>` when `<value>` is one of the words of `WITH_<NAME>`), then the nested conjunctions by depth (`target/default/arch/aarch64`, axes nest in that order). A directory name may list several values separated by commas (`target/native,cross`). A variant replaces (`=`) or extends (`+=`) what `package.env` set, so a target that must not have a default dependency restates `PKG_DEPS`; a value the default computes and a variant overrides is best kept in a recipe variable used through single quotes (`OPENSSL_TARGET` in `packages/lfs/openssl`), expanded when `runconfig.sh` runs. A script in a selected variant replaces the recipe one, the files of its `patches/` directory are applied together with the recipe ones in name order (a file with the same name replaces the recipe one, an empty file cancels it), and `PKG_VARIANTS` lists the selected directories inside the scripts. `utilities/pkg_show <group>/<name>[:<target>]` prints what a build would get.

The scripts are plain Bash: build writes a snapshot of every ALL_CAPS variable visible to `package.env` into `recipe.source` and every generated runner sources it before `environment.source`, so `INSTALL_PREFIX`, `PKG_PKGPATH`, `HARCH` or `SYSROOT` are simply `${VAR}` inside them (no escaping). `postinstall.sh` only sees the image-safe values (`INSTALL_*`, `PKG_NAME`, `PKG_VER`, `PKG_FULLNAME`, `PKG_TARGET`, `HARCH`, `HM`, `HOS`, `HLIBC`, `HARCH_LIB`, `PLATFORM_NAME`, `TOOLCHAIN`) and is ignored for native and cross builds. The build status is the checksum of the whole directory: editing any file rebuilds the package. `packages/template/` is an annotated starting point and `utilities/pkg_lint` checks the directories.

### Package Parameters

The following parameters can be assigned in `package.env`:

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

**patches/:**  
Not a variable: every `*.patch` and `*.diff` file of the `patches/` directory of the package and of the selected variants is applied with `patch -f -p1`, in the byte order of the file names (`00-first.patch`, `10-second.patch`). `utilities/pkg_show` prints the resolved list.

**prebuild.sh:**  
Script sourced in the source directory before autoreconf and configuration (replaces the former `PKG_PREBUILD` string).

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
`BUILD_PROCESS=downloadonly|configmake|cmakebuild|mesonninja|cargobuild|simplemake|pythonbuild|kernelbuild|kernelmodbuild|custom|perlmodule|none`

Available build processes:
- `downloadonly`: Only downloads the package and creates the source directory
- `configmake`: Downloads, creates source directory and runs a standard configure/make build process
- `cmakebuild`: Downloads, creates source directory and runs a standard cmake/make build process
- `mesonninja`: Downloads, creates source directory and runs a standard meson/ninja build process
- `cargobuild`: Downloads, creates source directory and runs a standard Rust cargo build process
- `simplemake`: Downloads, creates source directory, copies to build directory and runs a standard make process
- `pythonbuild`: Downloads, creates source directory and runs a standard python module build
- `kernelbuild`: Downloads, creates source directory and runs a standard kernel build process using platform configuration
- `kernelmodbuild`: Builds an out of tree kernel module against the kernel built by `kernelbuild`
- `custom`: Downloads, creates source directory and runs the `build.sh` script of the package
- `perlmodule`: Downloads, creates source directory and builds a Perl module
- `none`: Runs only the package scripts, no download and no build

**PKG_COPYSRC:**  
Copy sources in the build directory (often needed for buggy build processes).  
`PKG_COPYSRC=1`

**PKG_TARGET:**  
Read only: the `:<target>` given to `build` (empty by default). `native` and `cross` select the toolchain prefixes, any other name (`bootstrap`, `stage1`, a flavour) is a separate package of the sysroot. Per target values live in `variants/target/<name>/`.  
`PKG_TARGET="native|cross|<name>"`

**PKG_TARGET_ENV:**  
Read only: the install class of the target.  
`PKG_TARGET_ENV="native|cross|target"`

**PKG_VARIANTS:**  
Read only: the variant directories selected for this build, relative to `variants/`, in application order.  
`PKG_VARIANTS="target/bootstrap toolchain/llvm"`

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
Override PKG_CONFIG_SYSROOT_DIR variable. Target builds use the FDO sysroot rules of pkgconf: the sysroot is prepended to the `-I` and `-L` flags only, a variable read with `--variable` is the path in the image. The include and library directories of the sysroot are the system directories of the cross pkgconf, left out of `--cflags` and `--libs`. A pc file whose variable names a program or a file that later builds read writes it as `${pc_sysrootdir}${bindir}/...`.  
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

**build.sh:**  
Script sourced in the build directory to build and install the package when `BUILD_PROCESS=custom` (replaces the former `PKG_BUILDSCRIPT` string).

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
`PKG_OVERRIDELD=bfd|lld` (`gold` only with a binutils older than 2.45; the default is `GCC_DEFAULT_LD`, `bfd`)

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

**postbuild.sh:**  
Script sourced in the build directory after the build process, with the package staged in `${PKG_PKGPATH}` (replaces the former `PKG_POSTBUILD` string).

**postinstall.sh:**  
Script copied into the sysroot as `postinst_scripts/<prio>_<name>` and sourced as root inside the target image by `run_postinstall_scripts` (replaces the former `PKG_POSTINSTALL` string).

**PKG_POSTINSTALL_PRIO:**  
Define the priority of postinstall.sh among the post install scripts.  
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

- `pkg_lint`: Check the package directories (layout, variants tree, patches/ content, syntax, shellcheck, removed variables, BUILD_PROCESS and PKG_DEPS resolution for every target that has a variant, with both toolchains)
  ```
  utilities/pkg_lint [<platform>] [packages/<group>/<name> ...]
  ```

- `pkg_show`: Resolve a package the way `build` does and print the selected variants, the effective scripts and the recipe variables (`-d` dumps them as `declare` lines for diffing)
  ```
  utilities/pkg_show [-p <platform>] [-t gnu|llvm] [-d] <group>/<name>[:<target>] ...
  ```

- `pkg_upstream`: Find the latest upstream version of the recipes (the tags of the GitHub repository or the parent directory of the archive named by `PKG_URL`, release-monitoring.org as a second opinion) and report `current`, `outdated`, `ahead` or `unknown` per recipe. `-P <project>` surveys what a project builds in build order, dependencies first; `-a` rewrites `PKG_VER` in `package.env` when the archive of the new version answers (`<group>/<name>=<version>` forces a version). Versions taken from `setenv` (`GCC_VER`, `KERNEL_VER`...) are reported, never rewritten.
  ```
  utilities/pkg_upstream [-p <platform>] [-P <project>] [-a] [-A] [-f] [-o <report.tsv>] [<group>/<name>[=<version>] ...]
  ```

- `update_patches`: Regenerate the branch tracking patches of gcc, binutils, glibc or gdb under `packages/lfs/<pkg>/variants/version/<ver>/patches/`
  ```
  utilities/update_patches <package> <ver1> [<ver2>...]
  ```

## Tests and checks

The pure functions of the framework (variant selection and application, patch lists, recipe scripts, the recipe checksum, the install prefixes of the three targets, recipe resolution and the helpers of `core.functions`) have a [bats-core](https://github.com/bats-core/bats-core) suite under `tests/`. It sources the framework through `utilities/pkgtools.functions`, with every build step stubbed out, and works on fixture recipes created in a temporary directory: nothing is downloaded or built and the whole suite runs in seconds. Install `bats` from the distribution (`dnf install bats`, `apt install bats`) and run:

```
bats tests                 # the whole suite
bats tests/variants.bats   # one file
```

`tests/test_helper.bash` provides `load_framework` (platform from `PLATFORM_NAME`, default `generic-x64`), `make_recipe`, `put`, `select_target`, `assert_output_lines` and `assert_equal`; a new test for a pure function is a fixture recipe plus a `run` of the function.

There is no CI for now (the GitHub Actions were removed): run `shellcheck` on the framework and on the recipe utilities, the bats suite, and `pkg_lint` on the package groups by hand before committing. A change to `build.functions` or `core.functions` should keep the three green; `utilities/bbxb_test` remains the build smoke test.