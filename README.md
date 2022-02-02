# bbcrossbuild 2.0
This is a framework to automate the cross-compilation of packages through a project file.
## Current Limitations

 - Tested only ARM and ARM64 cross-compile projects. Other platforms will need
   adjustments and integration

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

**mount_tag: **
Download and mount system image.   
`mount_tag <tag_name> --url "<image_url>" --imgfile "<image_filename>" --mountlist "<partition_list>" [--resize <resize_options>]`
+ `tag_name:` tag name of the image. If "distos", it will be used as sysroot for build packages. If "binaries", it will be used as destination for built packages.
+ `image_url:` URL where to download the image
+ `image_filename:` image file name to extract from archive
+ `partition_list:` how the build system should interpret the partitions of the images with following format "partno:mountpoint [partno:mountpoint] ..."
+ `resize_options:` resize the last partition using the following format "partno:size"

**unmount_tag: **
Unmount image mounted with "tag_name". Always remember to unmount images before closing the project.   
`unmount_tag <tag_name>`   
+ `tag_name:` tag name of the image

**prepare_sysroot: **
Relink (soft links) all the libraries with relative paths on DISTOS path.   
`prepare_sysroot`

**run_on_root_dir: **
Execute a command like the system is running. A specified command will be executed in a chroot-ed environment inside the tag image.   
`run_on_root_dir <tag_name> <as_user> "<command>" `
+ `tag_name:` tag name of the image
+ `as_user:` target user that is running the command
+ `command:` command to run

**setup_gcc: **
Set up gnu toolchain. If no DISTOS is present it will bootstrap a SYSROOT using bs packages (kernel, glibc and libxcrypt).   
`setup_gcc`

**setup_llvm: **
Set up llvm toolchain.   
`setup_llvm`

**setup_rust: **
Set up rust environment.   
`setup_rust`

**setup_python: **
Set up python environment. If version is not specified, it will be gathered from DISTOS path.  
`setup_python [version]`

**build: **
build the package.   
`[optional_env_vars] build <package_name>`   

Optional environment variables:   
+ `KEEP_BUILDDIR=[0|1]` - Set to 1 to don't delete the build directory after build

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
`PKG_DEPS="dir1/package1.pkg dir1/package2.pkg dir2/package3.pkg"`

#### Prebuild process

**PATCHDEB:**
URL where to download Debian package that contains patches.  
`PATCHDEB="http://packages.org/debian_patches"`

**PATCHES:**
Patch filename under bbxb/patches directory.  
`PATCHES="patch1.patch patch2.patch"`

**AUTOCONF:**
By default "autoreconf -fi" is not run before configure process (0). 1 to enable it.  
`AUTOCONF=0|1`

**AUTOCONF_PATH:**
Specify source subdirectory where to run autoreconf:  
`AUTOCONF_PATH=subdir1/subdir2`

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
`kernelbuild`: it downloads, creates source directory and run a standard kernel build process using configuration   provided in platform directory configuration file.  
`BUILD_PROCESS=downloadonly|configmake|mesonninja|simplemake|pythonbuild|kernelbuild`

**CONF_CMD:**
Override configure command. "configure" by default  
`CONF_CMD="configure_new"`

**CONF_FLAGS:**
Specify configure, cmake or meson parameters  
`CONF_FLAGS="--disable-feature or -DENABLE_FEATURE"`

**CONF_PATH:**
Specify source subdirectory where to run the build  
`CONF_PATH=subdir1/subdir2`

**STD_CONF_FLAGS:**
Use standard conf flags used by bbxb (i.e. --prefix, --exec-prefix etc), default to 1, set to 0 to override it
`STD_CONF_FLAGS=1`

**PKG_TWOSTEPSBUILD:**
Define if make is run directly with install or there should be a make all phase and an installation phase after. Disabled in configmake (0), enabled in simplemake (1) by default  
`PKG_TWOSTEPSBUILD=1`

**PKG_TOOLCHAIN:**
Define what toolchain to use when building this package
`PKG_TOOLCHAIN=gnu|llvm`

**PKG_CFLAGS/PKG_CXXFLAGS/PKG_LDFLAGS:**
Permits to specify additional c/c++/ld compiler flags to build with:  
`PKG_CFLAGS="-f<parameter> -W<parameter>"`
`PKG_CXXFLAGS="-f<parameter> -W<parameter>"`
`PKG_LDFLAGS="-l<library>"`

**PKG_FAULTYCFLAGS:**
Move compiler FLAGS from xFLAGS to CC/CXX/CPP in order to override some faulty build scripts (i.e.: old versions of libtool). Disabled (0) by default.
`PKG_FAULTYCFLAGS=0`

**PKG_OVERRIDELTO:**
Override LTOENABLE environment variable that can be specified at bbxb.conf, project or package level by default (1) if not specified anywhere  
`PKG_OVERRIDELTO=0`

**PKG_CONFIG_SYSROOT_DIR:**
Override PKG_CONFIG_SYSROOT_DIR variable that is by default set on DISTOS path  
`PKG_CONFIG_SYSROOT_DIR=${BIN_PATH}`

**PKG_MAKEVARS:**
Define make parameters or variabes to pass to Makefile  
`PKG_MAKEVARS="-j1 VARIABLE1=value VARIABLE2=value2"`

**CARGO_BIN/CARGO_LIB/CARGO_BINLIST/CARGO_STRIP:**
Override installation path for binary  
`CARGO_BIN=${BUILD_EXECPREFIX}/sbin`

Override installation path for library  
`CARGO_LIB=${BUILD_EXECPREFIX}/lib64`

Define the list of binaries to build and install  
`CARGO_BINLIST="binary1 binary2 binary3"`

Define the list of libraries to build and install  
`CARGO_LIBLIST="lib1 lib2 lib3"`

Specify if the binaries should be stripped out of unneeded symbols  
`CARGO_STRIP=1`

#### Install process

**INST_CMD:**
command to use for make install command. Most commons defined in package's Makefile are install or install-strip but you can pass also different make parameters in. i.e: "all check install-strip".  
`INST_CMD=install|install-strip`

#### Post build process

**PKG_POSTBUILD:**
Runs commands on source files after build and installation on build directory:  
`PKG_POSTBUILD="command1; command2 && command3"`

#### Environment variables
The following environemnt variables can be used to create your package and default values are:

`BIN_PATH`: ${HOME}/.bbxb/< projectname >/< platformname >/binaries (destination of build)  
`DISTOS_PATH`: ${HOME}/.bbxb/< projectname >/< platformname >/distos (source of distribution libraries)  
`BUILD_PREFIX`: /usr  
`BUILD_EXECPREFIX`: /usr  
`BUILD_INCLUDEDIR`: /usr/include  
`BUILD_LIBDIR`: /usr/lib or /usr/lib/(MULTIARCH suffix)  
`BUILD_SYSCONFDIR`: /usr/etc  
`BUILD_LOCALSTATEDIR`:/var  

**: mandatory information*

### Define your platform

TBD

### Create your sysroot

TBD
