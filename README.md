# bbcrossbuild 1.0
This is a framework to cross-compile defined packages using an optional predefined sysroot directory.
## Current Limitations

 - Tested only ARM cross-compile projects. Other platforms will need
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

TBD

### Define your package

#### Package definition

**PKG_URL: (*)**
URL where download the sources.  
`PKG_URL="http://packages.org/package"`

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
By default "autoreconf -fi" is applied before configure process (1). 0 to disable it.  
`AUTOCONF=0|1`

**AUTOCONF_PATH:**
Specify source subdirectory where to run autoreconf:  
`AUTOCONF_PATH=subdir1/subdir2`

**PKG_PREBUILD:**
Runs commands on source files before autoreconf and configuration on source directory
`PKG_PREBUILD="command1; command2 && command3"`  
#### Build process

**CONF_COPYSRC:**
Copy sources in the build directory (often needed for buggy build processes). Not enabled by default on configmake (0), enabled on other build processes (1).  
`CONF_COPYSRC=1`

**BUILD_PROCESS: (*)**
Define what build process to use:  
`downloadonly`: it only downloads the package and creates the source directory  
`configmake`: it downloads, creates source directory and run a standard configure/make build process  
`cmakemake`: it downloads, creates source directory and run a standard cmake/make build process  
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

**PKG_TWOSTEPSBUILD:**
Define if make is run directly with install or there should be a make all phase and an installation phase after. Disabled in configmake (0), enabled in simplemake (1) by default  
`PKG_TWOSTEPSBUILD=1`

**PKG_CFLAGS/PKG_CXXFLAGS/PKG_LDFLAGS:**
Permits to specify additional c/c++/ld compiler flags to build with:  
`PKG_CFLAGS="-f<parameter> -W<parameter>"`
`PKG_CXXFLAGS="-f<parameter> -W<parameter>"`
`PKG_LDFLAGS="-l<library>"`

**LTOENABLE:**
Override LTOENABLE environment variable that can be specified at bbxb.conf, project or package level by default (1) if not specified anywhere  
`LTOENABLE=0`

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
