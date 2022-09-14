
# Makefile.in is generated from Makefile.tpl by 'autogen Makefile.def'.
#
# Makefile for directory with subdirs to build.
#   Copyright (C) 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998,
#   1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011
#   Free Software Foundation
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING3.  If not see
# <http://www.gnu.org/licenses/>.
#

# First, test for a proper version of make, but only where one is required.

ifeq (,$(.VARIABLES)) # The variable .VARIABLES, new with 3.80, is never empty.
$(error GNU make version 3.80 or newer is required.)
endif

# -------------------------------
# Standard Autoconf-set variables
# -------------------------------
VPATH=/home/desimonie/.bbxb/wsl-kernel/sources/toolchain/gcc-12.2.0

build_alias=x86_64-redhat-linux
build_vendor=redhat
build_os=linux-gnu
build=x86_64-redhat-linux-gnu
host_alias=x86_64-redhat-linux
host_vendor=redhat
host_os=linux-gnu
host=x86_64-redhat-linux-gnu
target_alias=x86_64-linux-gnu
target_vendor=pc
target_os=linux-gnu
target=x86_64-pc-linux-gnu

program_transform_name = s&^&x86_64-linux-gnu-&

prefix = /home/desimonie/.bbxb/wsl-kernel/generic_x64/toolchain
exec_prefix = ${prefix}

srcdir = /home/desimonie/.bbxb/wsl-kernel/sources/toolchain/gcc-12.2.0

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${datarootdir}
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
includedir = ${prefix}/include
oldincludedir = /usr/include
infodir = ${datarootdir}/info
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE}
pdfdir = ${docdir}
htmldir = ${docdir}
mandir = ${datarootdir}/man
man1dir = $(mandir)/man1
man2dir = $(mandir)/man2
man3dir = $(mandir)/man3
man4dir = $(mandir)/man4
man5dir = $(mandir)/man5
man6dir = $(mandir)/man6
man7dir = $(mandir)/man7
man8dir = $(mandir)/man8
man9dir = $(mandir)/man9

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
LN = ln
LN_S = ln -s
MAINT = #
MAINTAINER_MODE_FALSE = 
MAINTAINER_MODE_TRUE = #

# -------------------------------------------------
# Miscellaneous non-standard autoconf-set variables
# -------------------------------------------------

# The gcc driver likes to know the arguments it was configured with.
TOPLEVEL_CONFIGURE_ARGUMENTS=/home/desimonie/.bbxb/wsl-kernel/sources/toolchain/gcc-12.2.0/configure --build=x86_64-redhat-linux --host=x86_64-redhat-linux --target=x86_64-linux-gnu --enable-targets=x86_64-linux-gnu --with-arch-directory=x86_64 --with-arch=x86-64-v4 --prefix=/home/desimonie/.bbxb/wsl-kernel/generic_x64/toolchain build_configargs= host_configargs= target_configargs=

tooldir = ${exec_prefix}/x86_64-linux-gnu
build_tooldir = ${exec_prefix}/x86_64-linux-gnu

# This is the name of the environment variable used for the path to
# the libraries.
RPATH_ENVVAR = LD_LIBRARY_PATH

# On targets where RPATH_ENVVAR is PATH, a subdirectory of the GCC build path
# is used instead of the directory itself to avoid including built
# executables in PATH.
GCC_SHLIB_SUBDIR = 

# If the build should make suitable code for shared host resources.
host_shared = no

# Build programs are put under this directory.
BUILD_SUBDIR = build-x86_64-redhat-linux
# This is set by the configure script to the arguments to use when configuring
# directories built for the build system.
BUILD_CONFIGARGS =  --cache-file=./config.cache '--enable-targets=x86_64-linux-gnu' '--with-arch-directory=x86_64' '--with-arch=x86-64-v4' '--prefix=/home/desimonie/.bbxb/wsl-kernel/generic_x64/toolchain' '--enable-languages=c,c++,fortran,lto,objc' --program-transform-name='s&^&x86_64-linux-gnu-&' --disable-option-checking --with-build-subdir="$(BUILD_SUBDIR)"

# Linker flags to use on the host, for stage1 or when not
# bootstrapping.
STAGE1_LDFLAGS = -static-libstdc++ -static-libgcc

# Libraries to use on the host, for stage1 or when not bootstrapping.
STAGE1_LIBS = 

# Linker flags to use for stage2 and later.
POSTSTAGE1_LDFLAGS = -static-libstdc++ -static-libgcc

# Libraries to use for stage2 and later.
POSTSTAGE1_LIBS = 

# This is the list of variables to export in the environment when
# configuring any subdirectory.  It must also be exported whenever
# recursing into a build directory in case that directory's Makefile
# re-runs configure.
BASE_EXPORTS = \
	FLEX="$(FLEX)"; export FLEX; \
	LEX="$(LEX)"; export LEX; \
	BISON="$(BISON)"; export BISON; \
	YACC="$(YACC)"; export YACC; \
	M4="$(M4)"; export M4; \
	SED="$(SED)"; export SED; \
	AWK="$(AWK)"; export AWK; \
	MAKEINFO="$(MAKEINFO)"; export MAKEINFO;

# This is the list of variables to export in the environment when
# configuring subdirectories for the build system.
BUILD_EXPORTS = \
	$(BASE_EXPORTS) \
	AR="$(AR_FOR_BUILD)"; export AR; \
	AS="$(AS_FOR_BUILD)"; export AS; \
	CC="$(CC_FOR_BUILD)"; export CC; \
	CFLAGS="$(CFLAGS_FOR_BUILD)"; export CFLAGS; \
	CONFIG_SHELL="$(SHELL)"; export CONFIG_SHELL; \
	CPP="$(CPP_FOR_BUILD)"; export CPP; \
	CPPFLAGS="$(CPPFLAGS_FOR_BUILD)"; export CPPFLAGS; \
	CXX="$(CXX_FOR_BUILD)"; export CXX; \
	CXXFLAGS="$(CXXFLAGS_FOR_BUILD)"; export CXXFLAGS; \
	GFORTRAN="$(GFORTRAN_FOR_BUILD)"; export GFORTRAN; \
	GOC="$(GOC_FOR_BUILD)"; export GOC; \
	GOCFLAGS="$(GOCFLAGS_FOR_BUILD)"; export GOCFLAGS; \
	GDC="$(GDC_FOR_BUILD)"; export GDC; \
	GDCFLAGS="$(GDCFLAGS_FOR_BUILD)"; export GDCFLAGS; \
	DLLTOOL="$(DLLTOOL_FOR_BUILD)"; export DLLTOOL; \
	DSYMUTIL="$(DSYMUTIL_FOR_BUILD)"; export DSYMUTIL; \
	LD="$(LD_FOR_BUILD)"; export LD; \
	LDFLAGS="$(LDFLAGS_FOR_BUILD)"; export LDFLAGS; \
	NM="$(NM_FOR_BUILD)"; export NM; \
	RANLIB="$(RANLIB_FOR_BUILD)"; export RANLIB; \
	WINDRES="$(WINDRES_FOR_BUILD)"; export WINDRES; \
	WINDMC="$(WINDMC_FOR_BUILD)"; export WINDMC;

# These variables must be set on the make command line for directories
# built for the build system to override those in BASE_FLAGS_TO_PASS.
EXTRA_BUILD_FLAGS = \
	CFLAGS="$(CFLAGS_FOR_BUILD)" \
	LDFLAGS="$(LDFLAGS_FOR_BUILD)"

# This is the list of directories to built for the host system.
SUBDIRS =  intl libiberty opcodes bfd zlib libbacktrace libcpp libcody libdecnumber gmp mpfr mpc isl libctf binutils gas ld fixincludes gcc gprof etc libcc1 c++tools lto-plugin
TARGET_CONFIGDIRS =  libgcc libbacktrace libgomp libatomic libitm libstdc++-v3 libsanitizer libvtv libssp libquadmath libgfortran libobjc
# This is set by the configure script to the arguments to use when configuring
# directories built for the host system.
HOST_CONFIGARGS =  --cache-file=./config.cache  --with-gnu-as --with-gnu-ld '--enable-targets=x86_64-linux-gnu' '--with-arch-directory=x86_64' '--with-arch=x86-64-v4' '--prefix=/home/desimonie/.bbxb/wsl-kernel/generic_x64/toolchain' '--enable-languages=c,c++,fortran,lto,objc' --program-transform-name='s&^&x86_64-linux-gnu-&' --disable-option-checking
# Host programs are put under this directory, which is . except if building
# with srcdir=..
HOST_SUBDIR = .
# This is the list of variables to export in the environment when
# configuring subdirectories for the host system.  We need to pass
# some to the GCC configure because of its hybrid host/target nature.
HOST_EXPORTS = \
	$(BASE_EXPORTS) \
	CC="$(CC)"; export CC; \
	ADA_CFLAGS="$(ADA_CFLAGS)"; export ADA_CFLAGS; \
	CFLAGS="$(CFLAGS)"; export CFLAGS; \
	CONFIG_SHELL="$(SHELL)"; export CONFIG_SHELL; \
	CXX="$(CXX)"; export CXX; \
	CXXFLAGS="$(CXXFLAGS)"; export CXXFLAGS; \
	GFORTRAN="$(GFORTRAN)"; export GFORTRAN; \
	GOC="$(GOC)"; export GOC; \
	GDC="$(GDC)"; export GDC; \
	AR="$(AR)"; export AR; \
	AS="$(AS)"; export AS; \
	CC_FOR_BUILD="$(CC_FOR_BUILD)"; export CC_FOR_BUILD; \
	CPP_FOR_BUILD="$(CPP_FOR_BUILD)"; export CPP_FOR_BUILD; \
	CPPFLAGS_FOR_BUILD="$(CPPFLAGS_FOR_BUILD)"; export CPPFLAGS_FOR_BUILD; \
	CXX_FOR_BUILD="$(CXX_FOR_BUILD)"; export CXX_FOR_BUILD; \
	DLLTOOL="$(DLLTOOL)"; export DLLTOOL; \
	DSYMUTIL="$(DSYMUTIL)"; export DSYMUTIL; \
	LD="$(LD)"; export LD; \
	LDFLAGS="$(STAGE1_LDFLAGS) $(LDFLAGS)"; export LDFLAGS; \
	NM="$(NM)"; export NM; \
	RANLIB="$(RANLIB)"; export RANLIB; \
	WINDRES="$(WINDRES)"; export WINDRES; \
	WINDMC="$(WINDMC)"; export WINDMC; \
	OBJCOPY="$(OBJCOPY)"; export OBJCOPY; \
	OBJDUMP="$(OBJDUMP)"; export OBJDUMP; \
	OTOOL="$(OTOOL)"; export OTOOL; \
	READELF="$(READELF)"; export READELF; \
	AR_FOR_TARGET="$(AR_FOR_TARGET)"; export AR_FOR_TARGET; \
	AS_FOR_TARGET="$(AS_FOR_TARGET)"; export AS_FOR_TARGET; \
	DSYMUTIL_FOR_TARGET="$(DSYMUTIL_FOR_TARGET)"; export DSYMUTIL_FOR_TARGET; \
	GCC_FOR_TARGET="$(GCC_FOR_TARGET)"; export GCC_FOR_TARGET; \
	LD_FOR_TARGET="$(LD_FOR_TARGET)"; export LD_FOR_TARGET; \
	NM_FOR_TARGET="$(NM_FOR_TARGET)"; export NM_FOR_TARGET; \
	OBJDUMP_FOR_TARGET="$(OBJDUMP_FOR_TARGET)"; export OBJDUMP_FOR_TARGET; \
	OBJCOPY_FOR_TARGET="$(OBJCOPY_FOR_TARGET)"; export OBJCOPY_FOR_TARGET; \
	OTOOL_FOR_TARGET="$(OTOOL_FOR_TARGET)"; export OTOOL_FOR_TARGET; \
	RANLIB_FOR_TARGET="$(RANLIB_FOR_TARGET)"; export RANLIB_FOR_TARGET; \
	READELF_FOR_TARGET="$(READELF_FOR_TARGET)"; export READELF_FOR_TARGET; \
	TOPLEVEL_CONFIGURE_ARGUMENTS="$(TOPLEVEL_CONFIGURE_ARGUMENTS)"; export TOPLEVEL_CONFIGURE_ARGUMENTS; \
	HOST_LIBS="$(STAGE1_LIBS)"; export HOST_LIBS; \
	GMPLIBS="$(HOST_GMPLIBS)"; export GMPLIBS; \
	GMPINC="$(HOST_GMPINC)"; export GMPINC; \
	ISLLIBS="$(HOST_ISLLIBS)"; export ISLLIBS; \
	ISLINC="$(HOST_ISLINC)"; export ISLINC; \
	LIBELFLIBS="$(HOST_LIBELFLIBS)"; export LIBELFLIBS; \
	LIBELFINC="$(HOST_LIBELFINC)"; export LIBELFINC; \
	XGCC_FLAGS_FOR_TARGET="$(XGCC_FLAGS_FOR_TARGET)"; export XGCC_FLAGS_FOR_TARGET; \
	$(RPATH_ENVVAR)=`echo "$(HOST_LIB_PATH)$$$(RPATH_ENVVAR)" | sed 's,::*,:,g;s,^:*,,;s,:*$$,,'`; export $(RPATH_ENVVAR);

POSTSTAGE1_CXX_EXPORT = \
	CXX='$(CXX)'; export CXX; \
	CXX_FOR_BUILD='$(CXX_FOR_BUILD)'; export CXX_FOR_BUILD;

# Similar, for later GCC stages.
POSTSTAGE1_HOST_EXPORTS = \
	$(HOST_EXPORTS) \
	CC="$(STAGE_CC_WRAPPER) $$r/$(HOST_SUBDIR)/prev-gcc/xgcc$(exeext) \
	  -B$$r/$(HOST_SUBDIR)/prev-gcc/ -B$(build_tooldir)/bin/ \
	  $(XGCC_FLAGS_FOR_TARGET) $$TFLAGS"; export CC; \
	CC_FOR_BUILD="$$CC"; export CC_FOR_BUILD; \
	$(POSTSTAGE1_CXX_EXPORT) \
	$(LTO_EXPORTS) \
	GDC="$$r/$(HOST_SUBDIR)/prev-gcc/gdc$(exeext) -B$$r/$(HOST_SUBDIR)/prev-gcc/ \
	  -B$(build_tooldir)/bin/ $(GDCFLAGS_FOR_TARGET) \
	  -B$$r/prev-$(TARGET_SUBDIR)/libphobos/libdruntime/gcc \
	  -B$$r/prev-$(TARGET_SUBDIR)/libphobos/src \
	  -B$$r/prev-$(TARGET_SUBDIR)/libphobos/src/.libs \
	  -I$$r/prev-$(TARGET_SUBDIR)/libphobos/libdruntime -I$$s/libphobos/libdruntime \
	  -L$$r/prev-$(TARGET_SUBDIR)/libphobos/src/.libs \
	  -B$$r/prev-$(TARGET_SUBDIR)/libstdc++-v3/src/.libs \
	  -L$$r/prev-$(TARGET_SUBDIR)/libstdc++-v3/src/.libs"; \
	export GDC; \
	GDC_FOR_BUILD="$$GDC"; export GDC_FOR_BUILD; \
	GNATBIND="$$r/$(HOST_SUBDIR)/prev-gcc/gnatbind"; export GNATBIND; \
	LDFLAGS="$(POSTSTAGE1_LDFLAGS) $(BOOT_LDFLAGS)"; export LDFLAGS; \
	HOST_LIBS="$(POSTSTAGE1_LIBS)"; export HOST_LIBS;

# Target libraries are put under this directory:
TARGET_SUBDIR = x86_64-linux-gnu
# This is set by the configure script to the arguments to use when configuring
# directories built for the target.
TARGET_CONFIGARGS = --cache-file=./config.cache --enable-multilib --with-cross-host=x86_64-redhat-linux   '--enable-targets=x86_64-linux-gnu' '--with-arch-directory=x86_64' '--with-arch=x86-64-v4' '--prefix=/home/desimonie/.bbxb/wsl-kernel/generic_x64/toolchain' '--enable-languages=c,c++,fortran,lto,objc' --program-transform-name='s&^&x86_64-linux-gnu-&' --disable-option-checking --with-target-subdir="$(TARGET_SUBDIR)"
# This is the list of variables to export in the environment when
# configuring subdirectories for the target system.
BASE_TARGET_EXPORTS = \
	$(BASE_EXPORTS) \
	AR="$(AR_FOR_TARGET)"; export AR; \
	AS="$(COMPILER_AS_FOR_TARGET)"; export AS; \
	CC="$(CC_FOR_TARGET) $(XGCC_FLAGS_FOR_TARGET) $$TFLAGS"; export CC; \
	CFLAGS="$(CFLAGS_FOR_TARGET)"; export CFLAGS; \
	CONFIG_SHELL="$(SHELL)"; export CONFIG_SHELL; \
	CPPFLAGS="$(CPPFLAGS_FOR_TARGET)"; export CPPFLAGS; \
	CXXFLAGS="$(CXXFLAGS_FOR_TARGET)"; export CXXFLAGS; \
	GFORTRAN="$(GFORTRAN_FOR_TARGET) $(XGCC_FLAGS_FOR_TARGET) $$TFLAGS"; export GFORTRAN; \
	GOC="$(GOC_FOR_TARGET) $(XGCC_FLAGS_FOR_TARGET) $$TFLAGS"; export GOC; \
	GDC="$(GDC_FOR_TARGET) $(XGCC_FLAGS_FOR_TARGET) $$TFLAGS"; export GDC; \
	DLLTOOL="$(DLLTOOL_FOR_TARGET)"; export DLLTOOL; \
	DSYMUTIL="$(DSYMUTIL_FOR_TARGET)"; export DSYMUTIL; \
	LD="$(COMPILER_LD_FOR_TARGET)"; export LD; \
	LDFLAGS="$(LDFLAGS_FOR_TARGET)"; export LDFLAGS; \
	LIPO="$(LIPO_FOR_TARGET)"; export LIPO; \
	NM="$(COMPILER_NM_FOR_TARGET)"; export NM; \
	OBJDUMP="$(OBJDUMP_FOR_TARGET)"; export OBJDUMP; \
	OBJCOPY="$(OBJCOPY_FOR_TARGET)"; export OBJCOPY; \
	OTOOL="$(OTOOL_FOR_TARGET)"; export OTOOL; \
	RANLIB="$(RANLIB_FOR_TARGET)"; export RANLIB; \
	READELF="$(READELF_FOR_TARGET)"; export READELF; \
	STRIP="$(STRIP_FOR_TARGET)"; export STRIP; \
	WINDRES="$(WINDRES_FOR_TARGET)"; export WINDRES; \
	WINDMC="$(WINDMC_FOR_TARGET)"; export WINDMC; \
	$(RPATH_ENVVAR)=`echo "$(HOST_LIB_PATH)$$$(RPATH_ENVVAR)" | sed 's,::*,:,g;s,^:*,,;s,:*$$,,'`; export $(RPATH_ENVVAR); \
	TARGET_CONFIGDIRS="$(TARGET_CONFIGDIRS)"; export TARGET_CONFIGDIRS;

RAW_CXX_TARGET_EXPORTS = \
	$(BASE_TARGET_EXPORTS) \
	CXX_FOR_TARGET="$(RAW_CXX_FOR_TARGET)"; export CXX_FOR_TARGET; \
	CXX="$(RAW_CXX_FOR_TARGET) $(XGCC_FLAGS_FOR_TARGET) $$TFLAGS"; export CXX;

NORMAL_TARGET_EXPORTS = \
	$(BASE_TARGET_EXPORTS) \
	CXX="$(CXX_FOR_TARGET) $(XGCC_FLAGS_FOR_TARGET) $$TFLAGS"; export CXX;

# Where to find GMP
HOST_GMPLIBS = -L$$r/$(HOST_SUBDIR)/gmp/.libs -L$$r/$(HOST_SUBDIR)/mpfr/src/.libs -L$$r/$(HOST_SUBDIR)/mpc/src/.libs -lmpc -lmpfr -lgmp
HOST_GMPINC = -I$$r/$(HOST_SUBDIR)/gmp -I$$s/gmp -I$$r/$(HOST_SUBDIR)/mpfr/src -I$$s/mpfr/src -I$$s/mpc/src 

# Where to find isl
HOST_ISLLIBS = -L$$r/$(HOST_SUBDIR)/isl/.libs  -lisl
HOST_ISLINC = -I$$r/$(HOST_SUBDIR)/isl/include -I$$s/isl/include

# Where to find libelf
HOST_LIBELFLIBS = @libelflibs@
HOST_LIBELFINC = @libelfinc@

# ----------------------------------------------
# Programs producing files for the BUILD machine
# ----------------------------------------------

SHELL = /bin/sh

# pwd command to use.  Allow user to override default by setting PWDCMD in
# the environment to account for automounters.  The make variable must not
# be called PWDCMD, otherwise the value set here is passed to make
# subprocesses and overrides the setting from the user's environment.
# Don't use PWD since it is a common shell environment variable and we
# don't want to corrupt it.
PWD_COMMAND = $${PWDCMD-pwd}

# compilers to use to create programs which must be run in the build
# environment.
AR_FOR_BUILD = $(AR)
AS_FOR_BUILD = $(AS)
CC_FOR_BUILD = $(CC)
CFLAGS_FOR_BUILD =  -march=native -O3
CPP_FOR_BUILD = 
CPPFLAGS_FOR_BUILD = 
CXXFLAGS_FOR_BUILD =  -march=native -O3
CXX_FOR_BUILD = $(CXX)
DLLTOOL_FOR_BUILD = $(DLLTOOL)
DSYMUTIL_FOR_BUILD = $(DSYMUTIL)
GFORTRAN_FOR_BUILD = $(GFORTRAN)
GOC_FOR_BUILD = $(GOC)
GDC_FOR_BUILD = $(GDC)
LDFLAGS_FOR_BUILD = 
LD_FOR_BUILD = $(LD)
NM_FOR_BUILD = $(NM)
RANLIB_FOR_BUILD = $(RANLIB)
WINDMC_FOR_BUILD = $(WINDMC)
WINDRES_FOR_BUILD = $(WINDRES)

# Special variables passed down in EXTRA_GCC_FLAGS.  They are defined
# here so that they can be overridden by Makefile fragments.
BUILD_PREFIX = @BUILD_PREFIX@
BUILD_PREFIX_1 = @BUILD_PREFIX_1@

# Flags to pass to stage2 and later makes.  They are defined
# here so that they can be overridden by Makefile fragments.
BOOT_CFLAGS= -g -O2
BOOT_LDFLAGS=
BOOT_ADAFLAGS= -gnatpg

AWK = gawk
SED = /usr/bin/sed
BISON = bison
YACC = bison -y
FLEX = flex
LEX = flex
M4 = m4
MAKEINFO = makeinfo
EXPECT = expect
RUNTEST = runtest

AUTO_PROFILE = gcc-auto-profile -c 10000000

# This just becomes part of the MAKEINFO definition passed down to
# sub-makes.  It lets flags be given on the command line while still
# using the makeinfo from the object tree.
# (Default to avoid splitting info files by setting the threshold high.)
MAKEINFOFLAGS = --split-size=5000000

# ---------------------------------------------
# Programs producing files for the HOST machine
# ---------------------------------------------

AS = as
AR = ar
AR_FLAGS = rc
CC = /usr/lib64/ccache/x86_64-redhat-linux-gcc
CXX = /usr/lib64/ccache/x86_64-redhat-linux-g++
DLLTOOL = dlltool
DSYMUTIL = dsymutil
LD = ld
LIPO = lipo
NM = nm
OBJDUMP = objdump
OTOOL = otool
RANLIB = ranlib
READELF = readelf
STRIP = strip
WINDRES = windres
WINDMC = windmc

GDC = no
GNATBIND = no
GNATMAKE = no

CFLAGS =  -march=native -O3
LDFLAGS = 
LIBCFLAGS = $(CFLAGS)
CXXFLAGS =  -march=native -O3
LIBCXXFLAGS = $(CXXFLAGS) -fno-implicit-templates
GOCFLAGS = $(CFLAGS)
GDCFLAGS = $(CFLAGS)

# Pass additional PGO and LTO compiler options to the PGO build.
BUILD_CFLAGS = $(PGO_BUILD_CFLAGS) $(PGO_BUILD_LTO_CFLAGS)
override CFLAGS += $(BUILD_CFLAGS)
override CXXFLAGS += $(BUILD_CFLAGS)

# Additional PGO and LTO compiler options to generate profiling data
# for the PGO build.
PGO_BUILD_GEN_FLAGS_TO_PASS = \
	PGO_BUILD_CFLAGS="" \
	PGO_BUILD_LTO_CFLAGS=""

# NB: Filter out any compiler options which may fail PGO training runs.
PGO_BUILD_TRAINING_CFLAGS:= \
	$(filter-out -Werror=%,$(CFLAGS))
PGO_BUILD_TRAINING_CXXFLAGS:=\
	$(filter-out -Werror=%,$(CXXFLAGS))
PGO_BUILD_TRAINING_CFLAGS:= \
	$(filter-out -Wall,$(PGO_BUILD_TRAINING_CFLAGS))
PGO_BUILD_TRAINING_CXXFLAGS:= \
	$(filter-out -Wall,$(PGO_BUILD_TRAINING_CXXFLAGS))
PGO_BUILD_TRAINING_CFLAGS:= \
	$(filter-out -specs=%,$(PGO_BUILD_TRAINING_CFLAGS))
PGO_BUILD_TRAINING_CXXFLAGS:= \
	$(filter-out -specs=%,$(PGO_BUILD_TRAINING_CXXFLAGS))
PGO_BUILD_TRAINING_FLAGS_TO_PASS = \
	PGO_BUILD_TRAINING=yes \
	CFLAGS_FOR_TARGET="$(PGO_BUILD_TRAINING_CFLAGS)" \
	CXXFLAGS_FOR_TARGET="$(PGO_BUILD_TRAINING_CXXFLAGS)"

# Ignore "make check" errors in PGO training runs.
PGO_BUILD_TRAINING_MFLAGS = -i

# Additional PGO and LTO compiler options to use profiling data for the
# PGO build.
PGO_BUILD_USE_FLAGS_TO_PASS = \
	PGO_BUILD_CFLAGS="" \
	PGO_BUILD_LTO_CFLAGS=""

# PGO training targets for the PGO build.  FIXME: Add gold tests to
# training.
PGO-TRAINING-TARGETS = binutils gas gdb ld sim
PGO_BUILD_TRAINING = $(addprefix maybe-check-,$(PGO-TRAINING-TARGETS))

CREATE_GCOV = create_gcov

TFLAGS =

# Defaults for all stages; some are overridden below.

STAGE_CFLAGS = $(BOOT_CFLAGS)
STAGE_TFLAGS = $(TFLAGS)
STAGE_CONFIGURE_FLAGS=


# Defaults for stage 1; some are overridden below.
STAGE1_CFLAGS = $(STAGE_CFLAGS)
STAGE1_CXXFLAGS = $(CXXFLAGS)
STAGE1_TFLAGS = $(STAGE_TFLAGS)
STAGE1_CONFIGURE_FLAGS = $(STAGE_CONFIGURE_FLAGS)

# Defaults for stage 2; some are overridden below.
STAGE2_CFLAGS = $(STAGE_CFLAGS)
STAGE2_CXXFLAGS = $(CXXFLAGS)
STAGE2_TFLAGS = $(STAGE_TFLAGS)
STAGE2_CONFIGURE_FLAGS = $(STAGE_CONFIGURE_FLAGS)

# Defaults for stage 3; some are overridden below.
STAGE3_CFLAGS = $(STAGE_CFLAGS)
STAGE3_CXXFLAGS = $(CXXFLAGS)
STAGE3_TFLAGS = $(STAGE_TFLAGS)
STAGE3_CONFIGURE_FLAGS = $(STAGE_CONFIGURE_FLAGS)

# Defaults for stage 4; some are overridden below.
STAGE4_CFLAGS = $(STAGE_CFLAGS)
STAGE4_CXXFLAGS = $(CXXFLAGS)
STAGE4_TFLAGS = $(STAGE_TFLAGS)
STAGE4_CONFIGURE_FLAGS = $(STAGE_CONFIGURE_FLAGS)

# Defaults for stage profile; some are overridden below.
STAGEprofile_CFLAGS = $(STAGE_CFLAGS)
STAGEprofile_CXXFLAGS = $(CXXFLAGS)
STAGEprofile_TFLAGS = $(STAGE_TFLAGS)
STAGEprofile_CONFIGURE_FLAGS = $(STAGE_CONFIGURE_FLAGS)

# Defaults for stage train; some are overridden below.
STAGEtrain_CFLAGS = $(STAGE_CFLAGS)
STAGEtrain_CXXFLAGS = $(CXXFLAGS)
STAGEtrain_TFLAGS = $(STAGE_TFLAGS)
STAGEtrain_CONFIGURE_FLAGS = $(STAGE_CONFIGURE_FLAGS)

# Defaults for stage feedback; some are overridden below.
STAGEfeedback_CFLAGS = $(STAGE_CFLAGS)
STAGEfeedback_CXXFLAGS = $(CXXFLAGS)
STAGEfeedback_TFLAGS = $(STAGE_TFLAGS)
STAGEfeedback_CONFIGURE_FLAGS = $(STAGE_CONFIGURE_FLAGS)

# Defaults for stage autoprofile; some are overridden below.
STAGEautoprofile_CFLAGS = $(STAGE_CFLAGS)
STAGEautoprofile_CXXFLAGS = $(CXXFLAGS)
STAGEautoprofile_TFLAGS = $(STAGE_TFLAGS)
STAGEautoprofile_CONFIGURE_FLAGS = $(STAGE_CONFIGURE_FLAGS)

# Defaults for stage autofeedback; some are overridden below.
STAGEautofeedback_CFLAGS = $(STAGE_CFLAGS)
STAGEautofeedback_CXXFLAGS = $(CXXFLAGS)
STAGEautofeedback_TFLAGS = $(STAGE_TFLAGS)
STAGEautofeedback_CONFIGURE_FLAGS = $(STAGE_CONFIGURE_FLAGS)


# By default, C and C++ are the only stage1 languages, because they are the
# only ones we require to build with the bootstrap compiler, and also the
# only ones useful for building stage2.

STAGE1_CFLAGS = -g
STAGE1_CHECKING = --enable-checking=yes,types
STAGE1_LANGUAGES = c,c++,lto
# * We force-disable intermodule optimizations, even if
#   --enable-intermodule was passed, since the installed compiler
#   probably can't handle them.  Luckily, autoconf always respects
#   the last argument when conflicting --enable arguments are passed.
# * Likewise, we force-disable coverage flags, since the installed
#   compiler probably has never heard of them.
# * We also disable -Wformat, since older GCCs don't understand newer %s.
STAGE1_CONFIGURE_FLAGS = --disable-intermodule $(STAGE1_CHECKING) \
	  --disable-coverage --enable-languages="$(STAGE1_LANGUAGES)" \
	  --disable-build-format-warnings


# When using the slow stage1 compiler disable IL verification and forcefully
# enable it when using the stage2 compiler instead.  As we later compare
# stage2 and stage3 we are merely avoid doing redundant work, plus we apply
# checking when building all target libraries for release builds.
STAGE1_TFLAGS += -fno-checking
STAGE2_CFLAGS += -fno-checking
STAGE2_TFLAGS += -fno-checking
STAGE3_CFLAGS += -fchecking=1
STAGE3_TFLAGS += -fchecking=1

STAGEprofile_CFLAGS = $(STAGE2_CFLAGS) -fprofile-generate
STAGEprofile_TFLAGS = $(STAGE2_TFLAGS)

STAGEtrain_CFLAGS = $(filter-out -fchecking=1,$(STAGE3_CFLAGS))
STAGEtrain_TFLAGS = $(filter-out -fchecking=1,$(STAGE3_TFLAGS))

STAGEfeedback_CFLAGS = $(STAGE4_CFLAGS) -fprofile-use -fprofile-reproducible=parallel-runs
STAGEfeedback_TFLAGS = $(STAGE4_TFLAGS)

STAGEautoprofile_CFLAGS = $(STAGE2_CFLAGS) -g
STAGEautoprofile_TFLAGS = $(STAGE2_TFLAGS)

STAGEautofeedback_CFLAGS = $(STAGE3_CFLAGS)
STAGEautofeedback_TFLAGS = $(STAGE3_TFLAGS)

do-compare = cmp --ignore-initial=16 $$f1 $$f2
do-compare3 = $(do-compare)

# -----------------------------------------------
# Programs producing files for the TARGET machine
# -----------------------------------------------

AR_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/ar
AS_FOR_TARGET=$$r/$(HOST_SUBDIR)/gas/as-new
CC_FOR_TARGET=$(STAGE_CC_WRAPPER) $$r/$(HOST_SUBDIR)/gcc/xgcc -B$$r/$(HOST_SUBDIR)/gcc/

# If GCC_FOR_TARGET is not overriden on the command line, then this
# variable is passed down to the gcc Makefile, where it is used to
# build libgcc2.a.  We define it here so that it can itself be
# overridden on the command line.
GCC_FOR_TARGET=$(STAGE_CC_WRAPPER) $$r/$(HOST_SUBDIR)/gcc/xgcc -B$$r/$(HOST_SUBDIR)/gcc/
CXX_FOR_TARGET=$(STAGE_CC_WRAPPER) $$r/$(HOST_SUBDIR)/gcc/xg++ -B$$r/$(HOST_SUBDIR)/gcc/ -nostdinc++ `if test -f $$r/$(TARGET_SUBDIR)/libstdc++-v3/scripts/testsuite_flags; then $(SHELL) $$r/$(TARGET_SUBDIR)/libstdc++-v3/scripts/testsuite_flags --build-includes; else echo -funconfigured-libstdc++-v3 ; fi` -L$$r/$(TARGET_SUBDIR)/libstdc++-v3/src -L$$r/$(TARGET_SUBDIR)/libstdc++-v3/src/.libs -L$$r/$(TARGET_SUBDIR)/libstdc++-v3/libsupc++/.libs
RAW_CXX_FOR_TARGET=$(STAGE_CC_WRAPPER) $$r/$(HOST_SUBDIR)/gcc/xgcc -shared-libgcc -B$$r/$(HOST_SUBDIR)/gcc -nostdinc++ -L$$r/$(TARGET_SUBDIR)/libstdc++-v3/src -L$$r/$(TARGET_SUBDIR)/libstdc++-v3/src/.libs -L$$r/$(TARGET_SUBDIR)/libstdc++-v3/libsupc++/.libs
GFORTRAN_FOR_TARGET=$(STAGE_CC_WRAPPER) $$r/$(HOST_SUBDIR)/gcc/gfortran -B$$r/$(HOST_SUBDIR)/gcc/
GOC_FOR_TARGET=$(STAGE_CC_WRAPPER) x86_64-linux-gnu-gccgo
GDC_FOR_TARGET=$(STAGE_CC_WRAPPER) x86_64-linux-gnu-gdc
DLLTOOL_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/dlltool
DSYMUTIL_FOR_TARGET=x86_64-linux-gnu-dsymutil
LD_FOR_TARGET=$$r/$(HOST_SUBDIR)/ld/ld-new

LIPO_FOR_TARGET=x86_64-linux-gnu-lipo
NM_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/nm-new
OBJDUMP_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/objdump
OBJCOPY_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/objcopy
OTOOL_FOR_TARGET=x86_64-linux-gnu-otool
RANLIB_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/ranlib
READELF_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/readelf
STRIP_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/strip-new
WINDRES_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/windres
WINDMC_FOR_TARGET=$$r/$(HOST_SUBDIR)/binutils/windmc

COMPILER_AS_FOR_TARGET=$$r/$(HOST_SUBDIR)/gcc/as
COMPILER_LD_FOR_TARGET=$$r/$(HOST_SUBDIR)/gcc/collect-ld
COMPILER_NM_FOR_TARGET=$$r/$(HOST_SUBDIR)/gcc/nm

CFLAGS_FOR_TARGET =  
CXXFLAGS_FOR_TARGET =  

LIBCFLAGS_FOR_TARGET = $(CFLAGS_FOR_TARGET)
LIBCXXFLAGS_FOR_TARGET = $(CXXFLAGS_FOR_TARGET) -fno-implicit-templates
LDFLAGS_FOR_TARGET =   -Wl,-z,relro -Wl,-z,now
GOCFLAGS_FOR_TARGET = -O2 -g
GDCFLAGS_FOR_TARGET = -O2 -g

FLAGS_FOR_TARGET =  -B$(build_tooldir)/bin/ -B$(build_tooldir)/lib/ -isystem $(build_tooldir)/include -isystem $(build_tooldir)/sys-include -L$$r/$(HOST_SUBDIR)/ld
SYSROOT_CFLAGS_FOR_TARGET = 
DEBUG_PREFIX_CFLAGS_FOR_TARGET = 

XGCC_FLAGS_FOR_TARGET = $(FLAGS_FOR_TARGET) $(SYSROOT_CFLAGS_FOR_TARGET) $(DEBUG_PREFIX_CFLAGS_FOR_TARGET)

# ------------------------------------
# Miscellaneous targets and flag lists
# ------------------------------------

# The first rule in the file had better be this one.  Don't put any above it.
# This lives here to allow makefile fragments to contain dependencies.
all:

#### host and target specific makefile fragments come in here.
CXXFLAGS_FOR_TARGET += -D_GNU_SOURCE
###

# This is the list of directories that may be needed in RPATH_ENVVAR
# so that programs built for the target machine work.
TARGET_LIB_PATH = $(TARGET_LIB_PATH_libstdc++-v3)$(TARGET_LIB_PATH_libsanitizer)$(TARGET_LIB_PATH_libvtv)$(TARGET_LIB_PATH_liboffloadmic)$(TARGET_LIB_PATH_libssp)$(TARGET_LIB_PATH_libphobos)$(TARGET_LIB_PATH_libgomp)$(TARGET_LIB_PATH_libitm)$(TARGET_LIB_PATH_libatomic)$(HOST_LIB_PATH_gcc)

TARGET_LIB_PATH_libstdc++-v3 = $$r/$(TARGET_SUBDIR)/libstdc++-v3/src/.libs:

TARGET_LIB_PATH_libsanitizer = $$r/$(TARGET_SUBDIR)/libsanitizer/.libs:

TARGET_LIB_PATH_libvtv = $$r/$(TARGET_SUBDIR)/libvtv/.libs:


TARGET_LIB_PATH_libssp = $$r/$(TARGET_SUBDIR)/libssp/.libs:


TARGET_LIB_PATH_libgomp = $$r/$(TARGET_SUBDIR)/libgomp/.libs:

TARGET_LIB_PATH_libitm = $$r/$(TARGET_SUBDIR)/libitm/.libs:

TARGET_LIB_PATH_libatomic = $$r/$(TARGET_SUBDIR)/libatomic/.libs:



# This is the list of directories that may be needed in RPATH_ENVVAR
# so that programs built for the host machine work.
HOST_LIB_PATH = $(HOST_LIB_PATH_gmp)$(HOST_LIB_PATH_mpfr)$(HOST_LIB_PATH_mpc)$(HOST_LIB_PATH_isl)$(HOST_LIB_PATH_libelf)

# Define HOST_LIB_PATH_gcc here, for the sake of TARGET_LIB_PATH, ouch
HOST_LIB_PATH_gcc = $$r/$(HOST_SUBDIR)/gcc$(GCC_SHLIB_SUBDIR):$$r/$(HOST_SUBDIR)/prev-gcc$(GCC_SHLIB_SUBDIR):


HOST_LIB_PATH_gmp = \
  $$r/$(HOST_SUBDIR)/gmp/.libs:$$r/$(HOST_SUBDIR)/prev-gmp/.libs:

HOST_LIB_PATH_mpfr = \
  $$r/$(HOST_SUBDIR)/mpfr/src/.libs:$$r/$(HOST_SUBDIR)/prev-mpfr/src/.libs:

HOST_LIB_PATH_mpc = \
  $$r/$(HOST_SUBDIR)/mpc/src/.libs:$$r/$(HOST_SUBDIR)/prev-mpc/src/.libs:

HOST_LIB_PATH_isl = \
  $$r/$(HOST_SUBDIR)/isl/.libs:$$r/$(HOST_SUBDIR)/prev-isl/.libs:



CXX_FOR_TARGET_FLAG_TO_PASS = \
	"CXX_FOR_TARGET=$(CXX_FOR_TARGET)"
# CXX_FOR_TARGET is tricky to get right for target libs that require a
# functional C++ compiler.  When we recurse, if we expand
# CXX_FOR_TARGET before configuring libstdc++-v3, we won't get
# libstdc++ include flags from the script.  Instead, we get an
# -funconfigured-* word, so that we'll get errors if this invalid C++
# command line is used for anything, but also so that we can use the
# word to decide whether or not to pass on this CXX_FOR_TARGET.  If we
# don't pass it on, sub-make will use the default definition, that
# re-expands it at the time of use, so we'll get it right when we need
# it.  One potential exception is the expansion of CXX_FOR_TARGET
# passed down as part of CXX within TARGET_FLAGS, but this wouldn't
# really work, for C++ host programs can't depend on the current-stage
# C++ target library.
CXX_FOR_TARGET_FLAG_TO_PASS = \
	$(shell if echo "$(CXX_FOR_TARGET)" | grep " -funconfigured-" > /dev/null; then :; else echo '"CXX_FOR_TARGET=$(CXX_FOR_TARGET)"'; fi)

# Flags to pass down to all sub-makes. STAGE*FLAGS,
# MAKEINFO and MAKEINFOFLAGS are explicitly passed here to make them
# overrideable (for a bootstrap build stage1 also builds gcc.info).
BASE_FLAGS_TO_PASS = \
	"DESTDIR=$(DESTDIR)" \
	"RPATH_ENVVAR=$(RPATH_ENVVAR)" \
	"TARGET_SUBDIR=$(TARGET_SUBDIR)" \
	"bindir=$(bindir)" \
	"datadir=$(datadir)" \
	"exec_prefix=$(exec_prefix)" \
	"includedir=$(includedir)" \
	"datarootdir=$(datarootdir)" \
	"docdir=$(docdir)" \
	"infodir=$(infodir)" \
	"pdfdir=$(pdfdir)" \
	"htmldir=$(htmldir)" \
	"libdir=$(libdir)" \
	"libexecdir=$(libexecdir)" \
	"lispdir=$(lispdir)" \
	"localstatedir=$(localstatedir)" \
	"mandir=$(mandir)" \
	"oldincludedir=$(oldincludedir)" \
	"prefix=$(prefix)" \
	"sbindir=$(sbindir)" \
	"sharedstatedir=$(sharedstatedir)" \
	"sysconfdir=$(sysconfdir)" \
	"tooldir=$(tooldir)" \
	"build_tooldir=$(build_tooldir)" \
	"target_alias=$(target_alias)" \
	"AWK=$(AWK)" \
	"BISON=$(BISON)" \
	"CC_FOR_BUILD=$(CC_FOR_BUILD)" \
	"CFLAGS_FOR_BUILD=$(CFLAGS_FOR_BUILD)" \
	"CXX_FOR_BUILD=$(CXX_FOR_BUILD)" \
	"EXPECT=$(EXPECT)" \
	"FLEX=$(FLEX)" \
	"INSTALL=$(INSTALL)" \
	"INSTALL_DATA=$(INSTALL_DATA)" \
	"INSTALL_PROGRAM=$(INSTALL_PROGRAM)" \
	"INSTALL_SCRIPT=$(INSTALL_SCRIPT)" \
	"LDFLAGS_FOR_BUILD=$(LDFLAGS_FOR_BUILD)" \
	"LEX=$(LEX)" \
	"M4=$(M4)" \
	"MAKE=$(MAKE)" \
	"RUNTEST=$(RUNTEST)" \
	"RUNTESTFLAGS=$(RUNTESTFLAGS)" \
	"SED=$(SED)" \
	"SHELL=$(SHELL)" \
	"YACC=$(YACC)" \
	"`echo 'ADAFLAGS=$(ADAFLAGS)' | sed -e s'/[^=][^=]*=$$/XFOO=/'`" \
	"ADA_CFLAGS=$(ADA_CFLAGS)" \
	"AR_FLAGS=$(AR_FLAGS)" \
	"`echo 'BOOT_ADAFLAGS=$(BOOT_ADAFLAGS)' | sed -e s'/[^=][^=]*=$$/XFOO=/'`" \
	"BOOT_CFLAGS=$(BOOT_CFLAGS)" \
	"BOOT_LDFLAGS=$(BOOT_LDFLAGS)" \
	"CFLAGS=$(CFLAGS)" \
	"CXXFLAGS=$(CXXFLAGS)" \
	"LDFLAGS=$(LDFLAGS)" \
	"LIBCFLAGS=$(LIBCFLAGS)" \
	"LIBCXXFLAGS=$(LIBCXXFLAGS)" \
	"STAGE1_CHECKING=$(STAGE1_CHECKING)" \
	"STAGE1_LANGUAGES=$(STAGE1_LANGUAGES)" \
	"GNATBIND=$(GNATBIND)" \
	"GNATMAKE=$(GNATMAKE)" \
	"GDC=$(GDC)" \
	"GDCFLAGS=$(GDCFLAGS)" \
	"AR_FOR_TARGET=$(AR_FOR_TARGET)" \
	"AS_FOR_TARGET=$(AS_FOR_TARGET)" \
	"CC_FOR_TARGET=$(CC_FOR_TARGET)" \
	"CFLAGS_FOR_TARGET=$(CFLAGS_FOR_TARGET)" \
	"CPPFLAGS_FOR_TARGET=$(CPPFLAGS_FOR_TARGET)" \
	"CXXFLAGS_FOR_TARGET=$(CXXFLAGS_FOR_TARGET)" \
	"DLLTOOL_FOR_TARGET=$(DLLTOOL_FOR_TARGET)" \
	"DSYMUTIL_FOR_TARGET=$(DSYMUTIL_FOR_TARGET)" \
	"FLAGS_FOR_TARGET=$(FLAGS_FOR_TARGET)" \
	"GFORTRAN_FOR_TARGET=$(GFORTRAN_FOR_TARGET)" \
	"GOC_FOR_TARGET=$(GOC_FOR_TARGET)" \
	"GOCFLAGS_FOR_TARGET=$(GOCFLAGS_FOR_TARGET)" \
	"GDC_FOR_TARGET=$(GDC_FOR_TARGET)" \
	"GDCFLAGS_FOR_TARGET=$(GDCFLAGS_FOR_TARGET)" \
	"LD_FOR_TARGET=$(LD_FOR_TARGET)" \
	"LIPO_FOR_TARGET=$(LIPO_FOR_TARGET)" \
	"LDFLAGS_FOR_TARGET=$(LDFLAGS_FOR_TARGET)" \
	"LIBCFLAGS_FOR_TARGET=$(LIBCFLAGS_FOR_TARGET)" \
	"LIBCXXFLAGS_FOR_TARGET=$(LIBCXXFLAGS_FOR_TARGET)" \
	"NM_FOR_TARGET=$(NM_FOR_TARGET)" \
	"OBJDUMP_FOR_TARGET=$(OBJDUMP_FOR_TARGET)" \
	"OBJCOPY_FOR_TARGET=$(OBJCOPY_FOR_TARGET)" \
	"RANLIB_FOR_TARGET=$(RANLIB_FOR_TARGET)" \
	"READELF_FOR_TARGET=$(READELF_FOR_TARGET)" \
	"STRIP_FOR_TARGET=$(STRIP_FOR_TARGET)" \
	"WINDRES_FOR_TARGET=$(WINDRES_FOR_TARGET)" \
	"WINDMC_FOR_TARGET=$(WINDMC_FOR_TARGET)" \
	"BUILD_CONFIG=$(BUILD_CONFIG)" \
	"`echo 'LANGUAGES=$(LANGUAGES)' | sed -e s'/[^=][^=]*=$$/XFOO=/'`" \
	"LEAN=$(LEAN)" \
	"STAGE1_CFLAGS=$(STAGE1_CFLAGS)" \
	"STAGE1_CXXFLAGS=$(STAGE1_CXXFLAGS)" \
	"STAGE1_GENERATOR_CFLAGS=$(STAGE1_GENERATOR_CFLAGS)" \
	"STAGE1_TFLAGS=$(STAGE1_TFLAGS)" \
	"STAGE2_CFLAGS=$(STAGE2_CFLAGS)" \
	"STAGE2_CXXFLAGS=$(STAGE2_CXXFLAGS)" \
	"STAGE2_GENERATOR_CFLAGS=$(STAGE2_GENERATOR_CFLAGS)" \
	"STAGE2_TFLAGS=$(STAGE2_TFLAGS)" \
	"STAGE3_CFLAGS=$(STAGE3_CFLAGS)" \
	"STAGE3_CXXFLAGS=$(STAGE3_CXXFLAGS)" \
	"STAGE3_GENERATOR_CFLAGS=$(STAGE3_GENERATOR_CFLAGS)" \
	"STAGE3_TFLAGS=$(STAGE3_TFLAGS)" \
	"STAGE4_CFLAGS=$(STAGE4_CFLAGS)" \
	"STAGE4_CXXFLAGS=$(STAGE4_CXXFLAGS)" \
	"STAGE4_GENERATOR_CFLAGS=$(STAGE4_GENERATOR_CFLAGS)" \
	"STAGE4_TFLAGS=$(STAGE4_TFLAGS)" \
	"STAGEprofile_CFLAGS=$(STAGEprofile_CFLAGS)" \
	"STAGEprofile_CXXFLAGS=$(STAGEprofile_CXXFLAGS)" \
	"STAGEprofile_GENERATOR_CFLAGS=$(STAGEprofile_GENERATOR_CFLAGS)" \
	"STAGEprofile_TFLAGS=$(STAGEprofile_TFLAGS)" \
	"STAGEtrain_CFLAGS=$(STAGEtrain_CFLAGS)" \
	"STAGEtrain_CXXFLAGS=$(STAGEtrain_CXXFLAGS)" \
	"STAGEtrain_GENERATOR_CFLAGS=$(STAGEtrain_GENERATOR_CFLAGS)" \
	"STAGEtrain_TFLAGS=$(STAGEtrain_TFLAGS)" \
	"STAGEfeedback_CFLAGS=$(STAGEfeedback_CFLAGS)" \
	"STAGEfeedback_CXXFLAGS=$(STAGEfeedback_CXXFLAGS)" \
	"STAGEfeedback_GENERATOR_CFLAGS=$(STAGEfeedback_GENERATOR_CFLAGS)" \
	"STAGEfeedback_TFLAGS=$(STAGEfeedback_TFLAGS)" \
	"STAGEautoprofile_CFLAGS=$(STAGEautoprofile_CFLAGS)" \
	"STAGEautoprofile_CXXFLAGS=$(STAGEautoprofile_CXXFLAGS)" \
	"STAGEautoprofile_GENERATOR_CFLAGS=$(STAGEautoprofile_GENERATOR_CFLAGS)" \
	"STAGEautoprofile_TFLAGS=$(STAGEautoprofile_TFLAGS)" \
	"STAGEautofeedback_CFLAGS=$(STAGEautofeedback_CFLAGS)" \
	"STAGEautofeedback_CXXFLAGS=$(STAGEautofeedback_CXXFLAGS)" \
	"STAGEautofeedback_GENERATOR_CFLAGS=$(STAGEautofeedback_GENERATOR_CFLAGS)" \
	"STAGEautofeedback_TFLAGS=$(STAGEautofeedback_TFLAGS)" \
	$(CXX_FOR_TARGET_FLAG_TO_PASS) \
	"TFLAGS=$(TFLAGS)" \
	"CONFIG_SHELL=$(SHELL)" \
	"MAKEINFO=$(MAKEINFO) $(MAKEINFOFLAGS)" \
	$(if $(LSAN_OPTIONS),"LSAN_OPTIONS=$(LSAN_OPTIONS)")

# We leave this in just in case, but it is not needed anymore.
RECURSE_FLAGS_TO_PASS = $(BASE_FLAGS_TO_PASS)

# Flags to pass down to most sub-makes, in which we're building with
# the host environment.
EXTRA_HOST_FLAGS = \
	'AR=$(AR)' \
	'AS=$(AS)' \
	'CC=$(CC)' \
	'CXX=$(CXX)' \
	'DLLTOOL=$(DLLTOOL)' \
	'DSYMUTIL=$(DSYMUTIL)' \
	'GFORTRAN=$(GFORTRAN)' \
	'GOC=$(GOC)' \
	'GDC=$(GDC)' \
	'LD=$(LD)' \
	'LIPO=$(LIPO)' \
	'NM=$(NM)' \
	'OBJDUMP=$(OBJDUMP)' \
	'OTOOL=$(OTOOL)' \
	'RANLIB=$(RANLIB)' \
	'READELF=$(READELF)' \
	'STRIP=$(STRIP)' \
	'WINDRES=$(WINDRES)' \
	'WINDMC=$(WINDMC)' \
	'CREATE_GCOV=$(CREATE_GCOV)'

FLAGS_TO_PASS = $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS)

# Flags to pass to stage1 or when not bootstrapping.

STAGE1_FLAGS_TO_PASS = \
	LDFLAGS="$${LDFLAGS}" \
	HOST_LIBS="$${HOST_LIBS}"

# Flags to pass to stage2 and later makes.

POSTSTAGE1_FLAGS_TO_PASS = \
	CC="$${CC}" CC_FOR_BUILD="$${CC_FOR_BUILD}" \
	CXX="$${CXX}" CXX_FOR_BUILD="$${CXX_FOR_BUILD}" \
	GDC="$${GDC}" GDC_FOR_BUILD="$${GDC_FOR_BUILD}" \
	GNATBIND="$${GNATBIND}" \
	LDFLAGS="$${LDFLAGS}" \
	HOST_LIBS="$${HOST_LIBS}" \
	$(LTO_FLAGS_TO_PASS) \
	"`echo 'ADAFLAGS=$(BOOT_ADAFLAGS)' | sed -e s'/[^=][^=]*=$$/XFOO=/'`"


# Flags to pass down to makes which are built with the target environment.
# The double $ decreases the length of the command line; those variables
# are set in BASE_FLAGS_TO_PASS, and the sub-make will expand them.  The
# *_CFLAGS_FOR_TARGET variables are not passed down and most often empty,
# so we expand them here.
EXTRA_TARGET_FLAGS = \
	'AR=$$(AR_FOR_TARGET)' \
	'AS=$(COMPILER_AS_FOR_TARGET)' \
	'CC=$$(CC_FOR_TARGET) $$(XGCC_FLAGS_FOR_TARGET) $$(TFLAGS)' \
	'CFLAGS=$$(CFLAGS_FOR_TARGET)' \
	'CXX=$$(CXX_FOR_TARGET) -B$$r/$$(TARGET_SUBDIR)/libstdc++-v3/src/.libs \
	 -B$$r/$$(TARGET_SUBDIR)/libstdc++-v3/libsupc++/.libs \
	 $$(XGCC_FLAGS_FOR_TARGET) $$(TFLAGS)' \
	'CXXFLAGS=$$(CXXFLAGS_FOR_TARGET)' \
	'DLLTOOL=$$(DLLTOOL_FOR_TARGET)' \
	'DSYMUTIL=$$(DSYMUTIL_FOR_TARGET)' \
	'GFORTRAN=$$(GFORTRAN_FOR_TARGET) $$(XGCC_FLAGS_FOR_TARGET) $$(TFLAGS)' \
	'GOC=$$(GOC_FOR_TARGET) $$(XGCC_FLAGS_FOR_TARGET) $$(TFLAGS)' \
	'GOCFLAGS=$$(GOCFLAGS_FOR_TARGET)' \
	'GDC=$$(GDC_FOR_TARGET) $$(XGCC_FLAGS_FOR_TARGET) $$(TFLAGS)' \
	'GDCFLAGS=$$(GDCFLAGS_FOR_TARGET)' \
	'LD=$(COMPILER_LD_FOR_TARGET)' \
	'LDFLAGS=$$(LDFLAGS_FOR_TARGET)' \
	'LIBCFLAGS=$$(LIBCFLAGS_FOR_TARGET)' \
	'LIBCXXFLAGS=$$(LIBCXXFLAGS_FOR_TARGET)' \
	'NM=$(COMPILER_NM_FOR_TARGET)' \
	'OBJDUMP=$$(OBJDUMP_FOR_TARGET)' \
	'OBJCOPY=$$(OBJCOPY_FOR_TARGET)' \
	'RANLIB=$$(RANLIB_FOR_TARGET)' \
	'READELF=$$(READELF_FOR_TARGET)' \
	'WINDRES=$$(WINDRES_FOR_TARGET)' \
	'WINDMC=$$(WINDMC_FOR_TARGET)' \
	'XGCC_FLAGS_FOR_TARGET=$(XGCC_FLAGS_FOR_TARGET)' \
	'STAGE1_LDFLAGS=$$(POSTSTAGE1_LDFLAGS)' \
	'STAGE1_LIBS=$$(POSTSTAGE1_LIBS)' \
	"TFLAGS=$$TFLAGS"

TARGET_FLAGS_TO_PASS = $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)

# Flags to pass down to gcc.  gcc builds a library, libgcc.a, so it
# unfortunately needs the native compiler and the target ar and
# ranlib.
# If any variables are added here, they must be added to do-*, below.
# The BUILD_* variables are a special case, which are used for the gcc
# cross-building scheme.
EXTRA_GCC_FLAGS = \
	"GCC_FOR_TARGET=$(GCC_FOR_TARGET)" \
	"`echo 'STMP_FIXPROTO=$(STMP_FIXPROTO)' | sed -e s'/[^=][^=]*=$$/XFOO=/'`" \
	"`echo 'LIMITS_H_TEST=$(LIMITS_H_TEST)' | sed -e s'/[^=][^=]*=$$/XFOO=/'`"

GCC_FLAGS_TO_PASS = $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS)

BUILD_CONFIG = 
ifneq ($(BUILD_CONFIG),)
include $(foreach CONFIG, $(BUILD_CONFIG), $(srcdir)/config/$(CONFIG).mk)
endif

.PHONY: configure-host
configure-host:  \
    maybe-configure-bfd \
    maybe-configure-opcodes \
    maybe-configure-binutils \
    maybe-configure-bison \
    maybe-configure-cgen \
    maybe-configure-dejagnu \
    maybe-configure-etc \
    maybe-configure-fastjar \
    maybe-configure-fixincludes \
    maybe-configure-flex \
    maybe-configure-gas \
    maybe-configure-gcc \
    maybe-configure-gmp \
    maybe-configure-mpfr \
    maybe-configure-mpc \
    maybe-configure-isl \
    maybe-configure-libelf \
    maybe-configure-gold \
    maybe-configure-gprof \
    maybe-configure-intl \
    maybe-configure-tcl \
    maybe-configure-itcl \
    maybe-configure-ld \
    maybe-configure-libbacktrace \
    maybe-configure-libcpp \
    maybe-configure-libcody \
    maybe-configure-libdecnumber \
    maybe-configure-libgui \
    maybe-configure-libiberty \
    maybe-configure-libiberty-linker-plugin \
    maybe-configure-libiconv \
    maybe-configure-m4 \
    maybe-configure-readline \
    maybe-configure-sid \
    maybe-configure-sim \
    maybe-configure-texinfo \
    maybe-configure-zlib \
    maybe-configure-gnulib \
    maybe-configure-gdbsupport \
    maybe-configure-gdbserver \
    maybe-configure-gdb \
    maybe-configure-expect \
    maybe-configure-guile \
    maybe-configure-tk \
    maybe-configure-libtermcap \
    maybe-configure-utils \
    maybe-configure-c++tools \
    maybe-configure-gnattools \
    maybe-configure-lto-plugin \
    maybe-configure-libcc1 \
    maybe-configure-gotools \
    maybe-configure-libctf
.PHONY: configure-target
configure-target:  \
    maybe-configure-target-libstdc++-v3 \
    maybe-configure-target-libsanitizer \
    maybe-configure-target-libvtv \
    maybe-configure-target-liboffloadmic \
    maybe-configure-target-libssp \
    maybe-configure-target-newlib \
    maybe-configure-target-libgcc \
    maybe-configure-target-libbacktrace \
    maybe-configure-target-libquadmath \
    maybe-configure-target-libgfortran \
    maybe-configure-target-libobjc \
    maybe-configure-target-libgo \
    maybe-configure-target-libphobos \
    maybe-configure-target-libtermcap \
    maybe-configure-target-winsup \
    maybe-configure-target-libgloss \
    maybe-configure-target-libffi \
    maybe-configure-target-zlib \
    maybe-configure-target-rda \
    maybe-configure-target-libada \
    maybe-configure-target-libgomp \
    maybe-configure-target-libitm \
    maybe-configure-target-libatomic

# The target built for a native non-bootstrap build.
.PHONY: all

# --enable-pgo-build enables the PGO build.
# 1. First build with -fprofile-generate.
# 2. Use "make maybe-check-*" to generate profiling data.
# 3. Use "make clean" to remove the previous build.
# 4. Rebuild with -fprofile-use.
all:
	@: $(MAKE); $(unstage)
	+@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) \
		$(PGO_BUILD_GEN_FLAGS_TO_PASS) all-host all-target \
	&& :

.PHONY: all-build

all-build: maybe-all-build-libiberty
all-build: maybe-all-build-bison
all-build: maybe-all-build-flex
all-build: maybe-all-build-m4
all-build: maybe-all-build-texinfo
all-build: maybe-all-build-fixincludes
all-build: maybe-all-build-libcpp

.PHONY: all-host

all-host: maybe-all-bfd
all-host: maybe-all-opcodes
all-host: maybe-all-binutils
all-host: maybe-all-bison
all-host: maybe-all-cgen
all-host: maybe-all-dejagnu
all-host: maybe-all-etc
all-host: maybe-all-fastjar
all-host: maybe-all-fixincludes
all-host: maybe-all-flex
all-host: maybe-all-gas
all-host: maybe-all-gcc
all-host: maybe-all-gmp
all-host: maybe-all-mpfr
all-host: maybe-all-mpc
all-host: maybe-all-isl
all-host: maybe-all-gprof
all-host: maybe-all-intl
all-host: maybe-all-tcl
all-host: maybe-all-itcl
all-host: maybe-all-ld
all-host: maybe-all-libbacktrace
all-host: maybe-all-libcpp
all-host: maybe-all-libcody
all-host: maybe-all-libdecnumber
all-host: maybe-all-libgui
all-host: maybe-all-libiberty
all-host: maybe-all-m4
all-host: maybe-all-readline
all-host: maybe-all-sid
all-host: maybe-all-sim
all-host: maybe-all-texinfo
all-host: maybe-all-zlib
all-host: maybe-all-gnulib
all-host: maybe-all-gdbsupport
all-host: maybe-all-gdbserver
all-host: maybe-all-gdb
all-host: maybe-all-expect
all-host: maybe-all-guile
all-host: maybe-all-tk
all-host: maybe-all-libtermcap
all-host: maybe-all-utils
all-host: maybe-all-c++tools
all-host: maybe-all-gnattools
all-host: maybe-all-lto-plugin
all-host: maybe-all-libcc1
all-host: maybe-all-gotools
all-host: maybe-all-libctf

.PHONY: all-target

all-target: maybe-all-target-libstdc++-v3
all-target: maybe-all-target-libsanitizer
all-target: maybe-all-target-libvtv
all-target: maybe-all-target-liboffloadmic
all-target: maybe-all-target-libssp
all-target: maybe-all-target-newlib
all-target: maybe-all-target-libgcc
all-target: maybe-all-target-libbacktrace
all-target: maybe-all-target-libquadmath
all-target: maybe-all-target-libgfortran
all-target: maybe-all-target-libobjc
all-target: maybe-all-target-libgo
all-target: maybe-all-target-libtermcap
all-target: maybe-all-target-winsup
all-target: maybe-all-target-libgloss
all-target: maybe-all-target-libffi
all-target: maybe-all-target-rda
all-target: maybe-all-target-libada
all-target: maybe-all-target-libgomp
all-target: maybe-all-target-libitm
all-target: maybe-all-target-libatomic

# Do a target for all the subdirectories.  A ``make do-X'' will do a
# ``make X'' in all subdirectories (because, in general, there is a
# dependency (below) of X upon do-X, a ``make X'' will also do this,
# but it may do additional work as well).

.PHONY: do-info
do-info:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) info-host \
	  info-target


.PHONY: info-host

info-host: maybe-info-bfd
info-host: maybe-info-opcodes
info-host: maybe-info-binutils
info-host: maybe-info-bison
info-host: maybe-info-cgen
info-host: maybe-info-dejagnu
info-host: maybe-info-etc
info-host: maybe-info-fastjar
info-host: maybe-info-fixincludes
info-host: maybe-info-flex
info-host: maybe-info-gas
info-host: maybe-info-gcc
info-host: maybe-info-gmp
info-host: maybe-info-mpfr
info-host: maybe-info-mpc
info-host: maybe-info-isl
info-host: maybe-info-libelf
info-host: maybe-info-gold
info-host: maybe-info-gprof
info-host: maybe-info-intl
info-host: maybe-info-tcl
info-host: maybe-info-itcl
info-host: maybe-info-ld
info-host: maybe-info-libbacktrace
info-host: maybe-info-libcpp
info-host: maybe-info-libcody
info-host: maybe-info-libdecnumber
info-host: maybe-info-libgui
info-host: maybe-info-libiberty
info-host: maybe-info-libiberty-linker-plugin
info-host: maybe-info-libiconv
info-host: maybe-info-m4
info-host: maybe-info-readline
info-host: maybe-info-sid
info-host: maybe-info-sim
info-host: maybe-info-texinfo
info-host: maybe-info-zlib
info-host: maybe-info-gnulib
info-host: maybe-info-gdbsupport
info-host: maybe-info-gdbserver
info-host: maybe-info-gdb
info-host: maybe-info-expect
info-host: maybe-info-guile
info-host: maybe-info-tk
info-host: maybe-info-libtermcap
info-host: maybe-info-utils
info-host: maybe-info-c++tools
info-host: maybe-info-gnattools
info-host: maybe-info-lto-plugin
info-host: maybe-info-libcc1
info-host: maybe-info-gotools
info-host: maybe-info-libctf

.PHONY: info-target

info-target: maybe-info-target-libstdc++-v3
info-target: maybe-info-target-libsanitizer
info-target: maybe-info-target-libvtv
info-target: maybe-info-target-liboffloadmic
info-target: maybe-info-target-libssp
info-target: maybe-info-target-newlib
info-target: maybe-info-target-libgcc
info-target: maybe-info-target-libbacktrace
info-target: maybe-info-target-libquadmath
info-target: maybe-info-target-libgfortran
info-target: maybe-info-target-libobjc
info-target: maybe-info-target-libgo
info-target: maybe-info-target-libphobos
info-target: maybe-info-target-libtermcap
info-target: maybe-info-target-winsup
info-target: maybe-info-target-libgloss
info-target: maybe-info-target-libffi
info-target: maybe-info-target-zlib
info-target: maybe-info-target-rda
info-target: maybe-info-target-libada
info-target: maybe-info-target-libgomp
info-target: maybe-info-target-libitm
info-target: maybe-info-target-libatomic

.PHONY: do-dvi
do-dvi:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) dvi-host \
	  dvi-target


.PHONY: dvi-host

dvi-host: maybe-dvi-bfd
dvi-host: maybe-dvi-opcodes
dvi-host: maybe-dvi-binutils
dvi-host: maybe-dvi-bison
dvi-host: maybe-dvi-cgen
dvi-host: maybe-dvi-dejagnu
dvi-host: maybe-dvi-etc
dvi-host: maybe-dvi-fastjar
dvi-host: maybe-dvi-fixincludes
dvi-host: maybe-dvi-flex
dvi-host: maybe-dvi-gas
dvi-host: maybe-dvi-gcc
dvi-host: maybe-dvi-gmp
dvi-host: maybe-dvi-mpfr
dvi-host: maybe-dvi-mpc
dvi-host: maybe-dvi-isl
dvi-host: maybe-dvi-libelf
dvi-host: maybe-dvi-gold
dvi-host: maybe-dvi-gprof
dvi-host: maybe-dvi-intl
dvi-host: maybe-dvi-tcl
dvi-host: maybe-dvi-itcl
dvi-host: maybe-dvi-ld
dvi-host: maybe-dvi-libbacktrace
dvi-host: maybe-dvi-libcpp
dvi-host: maybe-dvi-libcody
dvi-host: maybe-dvi-libdecnumber
dvi-host: maybe-dvi-libgui
dvi-host: maybe-dvi-libiberty
dvi-host: maybe-dvi-libiberty-linker-plugin
dvi-host: maybe-dvi-libiconv
dvi-host: maybe-dvi-m4
dvi-host: maybe-dvi-readline
dvi-host: maybe-dvi-sid
dvi-host: maybe-dvi-sim
dvi-host: maybe-dvi-texinfo
dvi-host: maybe-dvi-zlib
dvi-host: maybe-dvi-gnulib
dvi-host: maybe-dvi-gdbsupport
dvi-host: maybe-dvi-gdbserver
dvi-host: maybe-dvi-gdb
dvi-host: maybe-dvi-expect
dvi-host: maybe-dvi-guile
dvi-host: maybe-dvi-tk
dvi-host: maybe-dvi-libtermcap
dvi-host: maybe-dvi-utils
dvi-host: maybe-dvi-c++tools
dvi-host: maybe-dvi-gnattools
dvi-host: maybe-dvi-lto-plugin
dvi-host: maybe-dvi-libcc1
dvi-host: maybe-dvi-gotools
dvi-host: maybe-dvi-libctf

.PHONY: dvi-target

dvi-target: maybe-dvi-target-libstdc++-v3
dvi-target: maybe-dvi-target-libsanitizer
dvi-target: maybe-dvi-target-libvtv
dvi-target: maybe-dvi-target-liboffloadmic
dvi-target: maybe-dvi-target-libssp
dvi-target: maybe-dvi-target-newlib
dvi-target: maybe-dvi-target-libgcc
dvi-target: maybe-dvi-target-libbacktrace
dvi-target: maybe-dvi-target-libquadmath
dvi-target: maybe-dvi-target-libgfortran
dvi-target: maybe-dvi-target-libobjc
dvi-target: maybe-dvi-target-libgo
dvi-target: maybe-dvi-target-libphobos
dvi-target: maybe-dvi-target-libtermcap
dvi-target: maybe-dvi-target-winsup
dvi-target: maybe-dvi-target-libgloss
dvi-target: maybe-dvi-target-libffi
dvi-target: maybe-dvi-target-zlib
dvi-target: maybe-dvi-target-rda
dvi-target: maybe-dvi-target-libada
dvi-target: maybe-dvi-target-libgomp
dvi-target: maybe-dvi-target-libitm
dvi-target: maybe-dvi-target-libatomic

.PHONY: do-pdf
do-pdf:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) pdf-host \
	  pdf-target


.PHONY: pdf-host

pdf-host: maybe-pdf-bfd
pdf-host: maybe-pdf-opcodes
pdf-host: maybe-pdf-binutils
pdf-host: maybe-pdf-bison
pdf-host: maybe-pdf-cgen
pdf-host: maybe-pdf-dejagnu
pdf-host: maybe-pdf-etc
pdf-host: maybe-pdf-fastjar
pdf-host: maybe-pdf-fixincludes
pdf-host: maybe-pdf-flex
pdf-host: maybe-pdf-gas
pdf-host: maybe-pdf-gcc
pdf-host: maybe-pdf-gmp
pdf-host: maybe-pdf-mpfr
pdf-host: maybe-pdf-mpc
pdf-host: maybe-pdf-isl
pdf-host: maybe-pdf-libelf
pdf-host: maybe-pdf-gold
pdf-host: maybe-pdf-gprof
pdf-host: maybe-pdf-intl
pdf-host: maybe-pdf-tcl
pdf-host: maybe-pdf-itcl
pdf-host: maybe-pdf-ld
pdf-host: maybe-pdf-libbacktrace
pdf-host: maybe-pdf-libcpp
pdf-host: maybe-pdf-libcody
pdf-host: maybe-pdf-libdecnumber
pdf-host: maybe-pdf-libgui
pdf-host: maybe-pdf-libiberty
pdf-host: maybe-pdf-libiberty-linker-plugin
pdf-host: maybe-pdf-libiconv
pdf-host: maybe-pdf-m4
pdf-host: maybe-pdf-readline
pdf-host: maybe-pdf-sid
pdf-host: maybe-pdf-sim
pdf-host: maybe-pdf-texinfo
pdf-host: maybe-pdf-zlib
pdf-host: maybe-pdf-gnulib
pdf-host: maybe-pdf-gdbsupport
pdf-host: maybe-pdf-gdbserver
pdf-host: maybe-pdf-gdb
pdf-host: maybe-pdf-expect
pdf-host: maybe-pdf-guile
pdf-host: maybe-pdf-tk
pdf-host: maybe-pdf-libtermcap
pdf-host: maybe-pdf-utils
pdf-host: maybe-pdf-c++tools
pdf-host: maybe-pdf-gnattools
pdf-host: maybe-pdf-lto-plugin
pdf-host: maybe-pdf-libcc1
pdf-host: maybe-pdf-gotools
pdf-host: maybe-pdf-libctf

.PHONY: pdf-target

pdf-target: maybe-pdf-target-libstdc++-v3
pdf-target: maybe-pdf-target-libsanitizer
pdf-target: maybe-pdf-target-libvtv
pdf-target: maybe-pdf-target-liboffloadmic
pdf-target: maybe-pdf-target-libssp
pdf-target: maybe-pdf-target-newlib
pdf-target: maybe-pdf-target-libgcc
pdf-target: maybe-pdf-target-libbacktrace
pdf-target: maybe-pdf-target-libquadmath
pdf-target: maybe-pdf-target-libgfortran
pdf-target: maybe-pdf-target-libobjc
pdf-target: maybe-pdf-target-libgo
pdf-target: maybe-pdf-target-libphobos
pdf-target: maybe-pdf-target-libtermcap
pdf-target: maybe-pdf-target-winsup
pdf-target: maybe-pdf-target-libgloss
pdf-target: maybe-pdf-target-libffi
pdf-target: maybe-pdf-target-zlib
pdf-target: maybe-pdf-target-rda
pdf-target: maybe-pdf-target-libada
pdf-target: maybe-pdf-target-libgomp
pdf-target: maybe-pdf-target-libitm
pdf-target: maybe-pdf-target-libatomic

.PHONY: do-html
do-html:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) html-host \
	  html-target


.PHONY: html-host

html-host: maybe-html-bfd
html-host: maybe-html-opcodes
html-host: maybe-html-binutils
html-host: maybe-html-bison
html-host: maybe-html-cgen
html-host: maybe-html-dejagnu
html-host: maybe-html-etc
html-host: maybe-html-fastjar
html-host: maybe-html-fixincludes
html-host: maybe-html-flex
html-host: maybe-html-gas
html-host: maybe-html-gcc
html-host: maybe-html-gmp
html-host: maybe-html-mpfr
html-host: maybe-html-mpc
html-host: maybe-html-isl
html-host: maybe-html-libelf
html-host: maybe-html-gold
html-host: maybe-html-gprof
html-host: maybe-html-intl
html-host: maybe-html-tcl
html-host: maybe-html-itcl
html-host: maybe-html-ld
html-host: maybe-html-libbacktrace
html-host: maybe-html-libcpp
html-host: maybe-html-libcody
html-host: maybe-html-libdecnumber
html-host: maybe-html-libgui
html-host: maybe-html-libiberty
html-host: maybe-html-libiberty-linker-plugin
html-host: maybe-html-libiconv
html-host: maybe-html-m4
html-host: maybe-html-readline
html-host: maybe-html-sid
html-host: maybe-html-sim
html-host: maybe-html-texinfo
html-host: maybe-html-zlib
html-host: maybe-html-gnulib
html-host: maybe-html-gdbsupport
html-host: maybe-html-gdbserver
html-host: maybe-html-gdb
html-host: maybe-html-expect
html-host: maybe-html-guile
html-host: maybe-html-tk
html-host: maybe-html-libtermcap
html-host: maybe-html-utils
html-host: maybe-html-c++tools
html-host: maybe-html-gnattools
html-host: maybe-html-lto-plugin
html-host: maybe-html-libcc1
html-host: maybe-html-gotools
html-host: maybe-html-libctf

.PHONY: html-target

html-target: maybe-html-target-libstdc++-v3
html-target: maybe-html-target-libsanitizer
html-target: maybe-html-target-libvtv
html-target: maybe-html-target-liboffloadmic
html-target: maybe-html-target-libssp
html-target: maybe-html-target-newlib
html-target: maybe-html-target-libgcc
html-target: maybe-html-target-libbacktrace
html-target: maybe-html-target-libquadmath
html-target: maybe-html-target-libgfortran
html-target: maybe-html-target-libobjc
html-target: maybe-html-target-libgo
html-target: maybe-html-target-libphobos
html-target: maybe-html-target-libtermcap
html-target: maybe-html-target-winsup
html-target: maybe-html-target-libgloss
html-target: maybe-html-target-libffi
html-target: maybe-html-target-zlib
html-target: maybe-html-target-rda
html-target: maybe-html-target-libada
html-target: maybe-html-target-libgomp
html-target: maybe-html-target-libitm
html-target: maybe-html-target-libatomic

.PHONY: do-TAGS
do-TAGS:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) TAGS-host \
	  TAGS-target


.PHONY: TAGS-host

TAGS-host: maybe-TAGS-bfd
TAGS-host: maybe-TAGS-opcodes
TAGS-host: maybe-TAGS-binutils
TAGS-host: maybe-TAGS-bison
TAGS-host: maybe-TAGS-cgen
TAGS-host: maybe-TAGS-dejagnu
TAGS-host: maybe-TAGS-etc
TAGS-host: maybe-TAGS-fastjar
TAGS-host: maybe-TAGS-fixincludes
TAGS-host: maybe-TAGS-flex
TAGS-host: maybe-TAGS-gas
TAGS-host: maybe-TAGS-gcc
TAGS-host: maybe-TAGS-gmp
TAGS-host: maybe-TAGS-mpfr
TAGS-host: maybe-TAGS-mpc
TAGS-host: maybe-TAGS-isl
TAGS-host: maybe-TAGS-libelf
TAGS-host: maybe-TAGS-gold
TAGS-host: maybe-TAGS-gprof
TAGS-host: maybe-TAGS-intl
TAGS-host: maybe-TAGS-tcl
TAGS-host: maybe-TAGS-itcl
TAGS-host: maybe-TAGS-ld
TAGS-host: maybe-TAGS-libbacktrace
TAGS-host: maybe-TAGS-libcpp
TAGS-host: maybe-TAGS-libcody
TAGS-host: maybe-TAGS-libdecnumber
TAGS-host: maybe-TAGS-libgui
TAGS-host: maybe-TAGS-libiberty
TAGS-host: maybe-TAGS-libiberty-linker-plugin
TAGS-host: maybe-TAGS-libiconv
TAGS-host: maybe-TAGS-m4
TAGS-host: maybe-TAGS-readline
TAGS-host: maybe-TAGS-sid
TAGS-host: maybe-TAGS-sim
TAGS-host: maybe-TAGS-texinfo
TAGS-host: maybe-TAGS-zlib
TAGS-host: maybe-TAGS-gnulib
TAGS-host: maybe-TAGS-gdbsupport
TAGS-host: maybe-TAGS-gdbserver
TAGS-host: maybe-TAGS-gdb
TAGS-host: maybe-TAGS-expect
TAGS-host: maybe-TAGS-guile
TAGS-host: maybe-TAGS-tk
TAGS-host: maybe-TAGS-libtermcap
TAGS-host: maybe-TAGS-utils
TAGS-host: maybe-TAGS-c++tools
TAGS-host: maybe-TAGS-gnattools
TAGS-host: maybe-TAGS-lto-plugin
TAGS-host: maybe-TAGS-libcc1
TAGS-host: maybe-TAGS-gotools
TAGS-host: maybe-TAGS-libctf

.PHONY: TAGS-target

TAGS-target: maybe-TAGS-target-libstdc++-v3
TAGS-target: maybe-TAGS-target-libsanitizer
TAGS-target: maybe-TAGS-target-libvtv
TAGS-target: maybe-TAGS-target-liboffloadmic
TAGS-target: maybe-TAGS-target-libssp
TAGS-target: maybe-TAGS-target-newlib
TAGS-target: maybe-TAGS-target-libgcc
TAGS-target: maybe-TAGS-target-libbacktrace
TAGS-target: maybe-TAGS-target-libquadmath
TAGS-target: maybe-TAGS-target-libgfortran
TAGS-target: maybe-TAGS-target-libobjc
TAGS-target: maybe-TAGS-target-libgo
TAGS-target: maybe-TAGS-target-libphobos
TAGS-target: maybe-TAGS-target-libtermcap
TAGS-target: maybe-TAGS-target-winsup
TAGS-target: maybe-TAGS-target-libgloss
TAGS-target: maybe-TAGS-target-libffi
TAGS-target: maybe-TAGS-target-zlib
TAGS-target: maybe-TAGS-target-rda
TAGS-target: maybe-TAGS-target-libada
TAGS-target: maybe-TAGS-target-libgomp
TAGS-target: maybe-TAGS-target-libitm
TAGS-target: maybe-TAGS-target-libatomic

.PHONY: do-install-info
do-install-info:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) install-info-host \
	  install-info-target


.PHONY: install-info-host

install-info-host: maybe-install-info-bfd
install-info-host: maybe-install-info-opcodes
install-info-host: maybe-install-info-binutils
install-info-host: maybe-install-info-bison
install-info-host: maybe-install-info-cgen
install-info-host: maybe-install-info-dejagnu
install-info-host: maybe-install-info-etc
install-info-host: maybe-install-info-fastjar
install-info-host: maybe-install-info-fixincludes
install-info-host: maybe-install-info-flex
install-info-host: maybe-install-info-gas
install-info-host: maybe-install-info-gcc
install-info-host: maybe-install-info-gmp
install-info-host: maybe-install-info-mpfr
install-info-host: maybe-install-info-mpc
install-info-host: maybe-install-info-isl
install-info-host: maybe-install-info-libelf
install-info-host: maybe-install-info-gold
install-info-host: maybe-install-info-gprof
install-info-host: maybe-install-info-intl
install-info-host: maybe-install-info-tcl
install-info-host: maybe-install-info-itcl
install-info-host: maybe-install-info-ld
install-info-host: maybe-install-info-libbacktrace
install-info-host: maybe-install-info-libcpp
install-info-host: maybe-install-info-libcody
install-info-host: maybe-install-info-libdecnumber
install-info-host: maybe-install-info-libgui
install-info-host: maybe-install-info-libiberty
install-info-host: maybe-install-info-libiberty-linker-plugin
install-info-host: maybe-install-info-libiconv
install-info-host: maybe-install-info-m4
install-info-host: maybe-install-info-readline
install-info-host: maybe-install-info-sid
install-info-host: maybe-install-info-sim
install-info-host: maybe-install-info-texinfo
install-info-host: maybe-install-info-zlib
install-info-host: maybe-install-info-gnulib
install-info-host: maybe-install-info-gdbsupport
install-info-host: maybe-install-info-gdbserver
install-info-host: maybe-install-info-gdb
install-info-host: maybe-install-info-expect
install-info-host: maybe-install-info-guile
install-info-host: maybe-install-info-tk
install-info-host: maybe-install-info-libtermcap
install-info-host: maybe-install-info-utils
install-info-host: maybe-install-info-c++tools
install-info-host: maybe-install-info-gnattools
install-info-host: maybe-install-info-lto-plugin
install-info-host: maybe-install-info-libcc1
install-info-host: maybe-install-info-gotools
install-info-host: maybe-install-info-libctf

.PHONY: install-info-target

install-info-target: maybe-install-info-target-libstdc++-v3
install-info-target: maybe-install-info-target-libsanitizer
install-info-target: maybe-install-info-target-libvtv
install-info-target: maybe-install-info-target-liboffloadmic
install-info-target: maybe-install-info-target-libssp
install-info-target: maybe-install-info-target-newlib
install-info-target: maybe-install-info-target-libgcc
install-info-target: maybe-install-info-target-libbacktrace
install-info-target: maybe-install-info-target-libquadmath
install-info-target: maybe-install-info-target-libgfortran
install-info-target: maybe-install-info-target-libobjc
install-info-target: maybe-install-info-target-libgo
install-info-target: maybe-install-info-target-libphobos
install-info-target: maybe-install-info-target-libtermcap
install-info-target: maybe-install-info-target-winsup
install-info-target: maybe-install-info-target-libgloss
install-info-target: maybe-install-info-target-libffi
install-info-target: maybe-install-info-target-zlib
install-info-target: maybe-install-info-target-rda
install-info-target: maybe-install-info-target-libada
install-info-target: maybe-install-info-target-libgomp
install-info-target: maybe-install-info-target-libitm
install-info-target: maybe-install-info-target-libatomic

.PHONY: do-install-dvi
do-install-dvi:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) install-dvi-host \
	  install-dvi-target


.PHONY: install-dvi-host

install-dvi-host: maybe-install-dvi-bfd
install-dvi-host: maybe-install-dvi-opcodes
install-dvi-host: maybe-install-dvi-binutils
install-dvi-host: maybe-install-dvi-bison
install-dvi-host: maybe-install-dvi-cgen
install-dvi-host: maybe-install-dvi-dejagnu
install-dvi-host: maybe-install-dvi-etc
install-dvi-host: maybe-install-dvi-fastjar
install-dvi-host: maybe-install-dvi-fixincludes
install-dvi-host: maybe-install-dvi-flex
install-dvi-host: maybe-install-dvi-gas
install-dvi-host: maybe-install-dvi-gcc
install-dvi-host: maybe-install-dvi-gmp
install-dvi-host: maybe-install-dvi-mpfr
install-dvi-host: maybe-install-dvi-mpc
install-dvi-host: maybe-install-dvi-isl
install-dvi-host: maybe-install-dvi-libelf
install-dvi-host: maybe-install-dvi-gold
install-dvi-host: maybe-install-dvi-gprof
install-dvi-host: maybe-install-dvi-intl
install-dvi-host: maybe-install-dvi-tcl
install-dvi-host: maybe-install-dvi-itcl
install-dvi-host: maybe-install-dvi-ld
install-dvi-host: maybe-install-dvi-libbacktrace
install-dvi-host: maybe-install-dvi-libcpp
install-dvi-host: maybe-install-dvi-libcody
install-dvi-host: maybe-install-dvi-libdecnumber
install-dvi-host: maybe-install-dvi-libgui
install-dvi-host: maybe-install-dvi-libiberty
install-dvi-host: maybe-install-dvi-libiberty-linker-plugin
install-dvi-host: maybe-install-dvi-libiconv
install-dvi-host: maybe-install-dvi-m4
install-dvi-host: maybe-install-dvi-readline
install-dvi-host: maybe-install-dvi-sid
install-dvi-host: maybe-install-dvi-sim
install-dvi-host: maybe-install-dvi-texinfo
install-dvi-host: maybe-install-dvi-zlib
install-dvi-host: maybe-install-dvi-gnulib
install-dvi-host: maybe-install-dvi-gdbsupport
install-dvi-host: maybe-install-dvi-gdbserver
install-dvi-host: maybe-install-dvi-gdb
install-dvi-host: maybe-install-dvi-expect
install-dvi-host: maybe-install-dvi-guile
install-dvi-host: maybe-install-dvi-tk
install-dvi-host: maybe-install-dvi-libtermcap
install-dvi-host: maybe-install-dvi-utils
install-dvi-host: maybe-install-dvi-c++tools
install-dvi-host: maybe-install-dvi-gnattools
install-dvi-host: maybe-install-dvi-lto-plugin
install-dvi-host: maybe-install-dvi-libcc1
install-dvi-host: maybe-install-dvi-gotools
install-dvi-host: maybe-install-dvi-libctf

.PHONY: install-dvi-target

install-dvi-target: maybe-install-dvi-target-libstdc++-v3
install-dvi-target: maybe-install-dvi-target-libsanitizer
install-dvi-target: maybe-install-dvi-target-libvtv
install-dvi-target: maybe-install-dvi-target-liboffloadmic
install-dvi-target: maybe-install-dvi-target-libssp
install-dvi-target: maybe-install-dvi-target-newlib
install-dvi-target: maybe-install-dvi-target-libgcc
install-dvi-target: maybe-install-dvi-target-libbacktrace
install-dvi-target: maybe-install-dvi-target-libquadmath
install-dvi-target: maybe-install-dvi-target-libgfortran
install-dvi-target: maybe-install-dvi-target-libobjc
install-dvi-target: maybe-install-dvi-target-libgo
install-dvi-target: maybe-install-dvi-target-libphobos
install-dvi-target: maybe-install-dvi-target-libtermcap
install-dvi-target: maybe-install-dvi-target-winsup
install-dvi-target: maybe-install-dvi-target-libgloss
install-dvi-target: maybe-install-dvi-target-libffi
install-dvi-target: maybe-install-dvi-target-zlib
install-dvi-target: maybe-install-dvi-target-rda
install-dvi-target: maybe-install-dvi-target-libada
install-dvi-target: maybe-install-dvi-target-libgomp
install-dvi-target: maybe-install-dvi-target-libitm
install-dvi-target: maybe-install-dvi-target-libatomic

.PHONY: do-install-pdf
do-install-pdf:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) install-pdf-host \
	  install-pdf-target


.PHONY: install-pdf-host

install-pdf-host: maybe-install-pdf-bfd
install-pdf-host: maybe-install-pdf-opcodes
install-pdf-host: maybe-install-pdf-binutils
install-pdf-host: maybe-install-pdf-bison
install-pdf-host: maybe-install-pdf-cgen
install-pdf-host: maybe-install-pdf-dejagnu
install-pdf-host: maybe-install-pdf-etc
install-pdf-host: maybe-install-pdf-fastjar
install-pdf-host: maybe-install-pdf-fixincludes
install-pdf-host: maybe-install-pdf-flex
install-pdf-host: maybe-install-pdf-gas
install-pdf-host: maybe-install-pdf-gcc
install-pdf-host: maybe-install-pdf-gmp
install-pdf-host: maybe-install-pdf-mpfr
install-pdf-host: maybe-install-pdf-mpc
install-pdf-host: maybe-install-pdf-isl
install-pdf-host: maybe-install-pdf-libelf
install-pdf-host: maybe-install-pdf-gold
install-pdf-host: maybe-install-pdf-gprof
install-pdf-host: maybe-install-pdf-intl
install-pdf-host: maybe-install-pdf-tcl
install-pdf-host: maybe-install-pdf-itcl
install-pdf-host: maybe-install-pdf-ld
install-pdf-host: maybe-install-pdf-libbacktrace
install-pdf-host: maybe-install-pdf-libcpp
install-pdf-host: maybe-install-pdf-libcody
install-pdf-host: maybe-install-pdf-libdecnumber
install-pdf-host: maybe-install-pdf-libgui
install-pdf-host: maybe-install-pdf-libiberty
install-pdf-host: maybe-install-pdf-libiberty-linker-plugin
install-pdf-host: maybe-install-pdf-libiconv
install-pdf-host: maybe-install-pdf-m4
install-pdf-host: maybe-install-pdf-readline
install-pdf-host: maybe-install-pdf-sid
install-pdf-host: maybe-install-pdf-sim
install-pdf-host: maybe-install-pdf-texinfo
install-pdf-host: maybe-install-pdf-zlib
install-pdf-host: maybe-install-pdf-gnulib
install-pdf-host: maybe-install-pdf-gdbsupport
install-pdf-host: maybe-install-pdf-gdbserver
install-pdf-host: maybe-install-pdf-gdb
install-pdf-host: maybe-install-pdf-expect
install-pdf-host: maybe-install-pdf-guile
install-pdf-host: maybe-install-pdf-tk
install-pdf-host: maybe-install-pdf-libtermcap
install-pdf-host: maybe-install-pdf-utils
install-pdf-host: maybe-install-pdf-c++tools
install-pdf-host: maybe-install-pdf-gnattools
install-pdf-host: maybe-install-pdf-lto-plugin
install-pdf-host: maybe-install-pdf-libcc1
install-pdf-host: maybe-install-pdf-gotools
install-pdf-host: maybe-install-pdf-libctf

.PHONY: install-pdf-target

install-pdf-target: maybe-install-pdf-target-libstdc++-v3
install-pdf-target: maybe-install-pdf-target-libsanitizer
install-pdf-target: maybe-install-pdf-target-libvtv
install-pdf-target: maybe-install-pdf-target-liboffloadmic
install-pdf-target: maybe-install-pdf-target-libssp
install-pdf-target: maybe-install-pdf-target-newlib
install-pdf-target: maybe-install-pdf-target-libgcc
install-pdf-target: maybe-install-pdf-target-libbacktrace
install-pdf-target: maybe-install-pdf-target-libquadmath
install-pdf-target: maybe-install-pdf-target-libgfortran
install-pdf-target: maybe-install-pdf-target-libobjc
install-pdf-target: maybe-install-pdf-target-libgo
install-pdf-target: maybe-install-pdf-target-libphobos
install-pdf-target: maybe-install-pdf-target-libtermcap
install-pdf-target: maybe-install-pdf-target-winsup
install-pdf-target: maybe-install-pdf-target-libgloss
install-pdf-target: maybe-install-pdf-target-libffi
install-pdf-target: maybe-install-pdf-target-zlib
install-pdf-target: maybe-install-pdf-target-rda
install-pdf-target: maybe-install-pdf-target-libada
install-pdf-target: maybe-install-pdf-target-libgomp
install-pdf-target: maybe-install-pdf-target-libitm
install-pdf-target: maybe-install-pdf-target-libatomic

.PHONY: do-install-html
do-install-html:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) install-html-host \
	  install-html-target


.PHONY: install-html-host

install-html-host: maybe-install-html-bfd
install-html-host: maybe-install-html-opcodes
install-html-host: maybe-install-html-binutils
install-html-host: maybe-install-html-bison
install-html-host: maybe-install-html-cgen
install-html-host: maybe-install-html-dejagnu
install-html-host: maybe-install-html-etc
install-html-host: maybe-install-html-fastjar
install-html-host: maybe-install-html-fixincludes
install-html-host: maybe-install-html-flex
install-html-host: maybe-install-html-gas
install-html-host: maybe-install-html-gcc
install-html-host: maybe-install-html-gmp
install-html-host: maybe-install-html-mpfr
install-html-host: maybe-install-html-mpc
install-html-host: maybe-install-html-isl
install-html-host: maybe-install-html-libelf
install-html-host: maybe-install-html-gold
install-html-host: maybe-install-html-gprof
install-html-host: maybe-install-html-intl
install-html-host: maybe-install-html-tcl
install-html-host: maybe-install-html-itcl
install-html-host: maybe-install-html-ld
install-html-host: maybe-install-html-libbacktrace
install-html-host: maybe-install-html-libcpp
install-html-host: maybe-install-html-libcody
install-html-host: maybe-install-html-libdecnumber
install-html-host: maybe-install-html-libgui
install-html-host: maybe-install-html-libiberty
install-html-host: maybe-install-html-libiberty-linker-plugin
install-html-host: maybe-install-html-libiconv
install-html-host: maybe-install-html-m4
install-html-host: maybe-install-html-readline
install-html-host: maybe-install-html-sid
install-html-host: maybe-install-html-sim
install-html-host: maybe-install-html-texinfo
install-html-host: maybe-install-html-zlib
install-html-host: maybe-install-html-gnulib
install-html-host: maybe-install-html-gdbsupport
install-html-host: maybe-install-html-gdbserver
install-html-host: maybe-install-html-gdb
install-html-host: maybe-install-html-expect
install-html-host: maybe-install-html-guile
install-html-host: maybe-install-html-tk
install-html-host: maybe-install-html-libtermcap
install-html-host: maybe-install-html-utils
install-html-host: maybe-install-html-c++tools
install-html-host: maybe-install-html-gnattools
install-html-host: maybe-install-html-lto-plugin
install-html-host: maybe-install-html-libcc1
install-html-host: maybe-install-html-gotools
install-html-host: maybe-install-html-libctf

.PHONY: install-html-target

install-html-target: maybe-install-html-target-libstdc++-v3
install-html-target: maybe-install-html-target-libsanitizer
install-html-target: maybe-install-html-target-libvtv
install-html-target: maybe-install-html-target-liboffloadmic
install-html-target: maybe-install-html-target-libssp
install-html-target: maybe-install-html-target-newlib
install-html-target: maybe-install-html-target-libgcc
install-html-target: maybe-install-html-target-libbacktrace
install-html-target: maybe-install-html-target-libquadmath
install-html-target: maybe-install-html-target-libgfortran
install-html-target: maybe-install-html-target-libobjc
install-html-target: maybe-install-html-target-libgo
install-html-target: maybe-install-html-target-libphobos
install-html-target: maybe-install-html-target-libtermcap
install-html-target: maybe-install-html-target-winsup
install-html-target: maybe-install-html-target-libgloss
install-html-target: maybe-install-html-target-libffi
install-html-target: maybe-install-html-target-zlib
install-html-target: maybe-install-html-target-rda
install-html-target: maybe-install-html-target-libada
install-html-target: maybe-install-html-target-libgomp
install-html-target: maybe-install-html-target-libitm
install-html-target: maybe-install-html-target-libatomic

.PHONY: do-installcheck
do-installcheck:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) installcheck-host \
	  installcheck-target


.PHONY: installcheck-host

installcheck-host: maybe-installcheck-bfd
installcheck-host: maybe-installcheck-opcodes
installcheck-host: maybe-installcheck-binutils
installcheck-host: maybe-installcheck-bison
installcheck-host: maybe-installcheck-cgen
installcheck-host: maybe-installcheck-dejagnu
installcheck-host: maybe-installcheck-etc
installcheck-host: maybe-installcheck-fastjar
installcheck-host: maybe-installcheck-fixincludes
installcheck-host: maybe-installcheck-flex
installcheck-host: maybe-installcheck-gas
installcheck-host: maybe-installcheck-gcc
installcheck-host: maybe-installcheck-gmp
installcheck-host: maybe-installcheck-mpfr
installcheck-host: maybe-installcheck-mpc
installcheck-host: maybe-installcheck-isl
installcheck-host: maybe-installcheck-libelf
installcheck-host: maybe-installcheck-gold
installcheck-host: maybe-installcheck-gprof
installcheck-host: maybe-installcheck-intl
installcheck-host: maybe-installcheck-tcl
installcheck-host: maybe-installcheck-itcl
installcheck-host: maybe-installcheck-ld
installcheck-host: maybe-installcheck-libbacktrace
installcheck-host: maybe-installcheck-libcpp
installcheck-host: maybe-installcheck-libcody
installcheck-host: maybe-installcheck-libdecnumber
installcheck-host: maybe-installcheck-libgui
installcheck-host: maybe-installcheck-libiberty
installcheck-host: maybe-installcheck-libiberty-linker-plugin
installcheck-host: maybe-installcheck-libiconv
installcheck-host: maybe-installcheck-m4
installcheck-host: maybe-installcheck-readline
installcheck-host: maybe-installcheck-sid
installcheck-host: maybe-installcheck-sim
installcheck-host: maybe-installcheck-texinfo
installcheck-host: maybe-installcheck-zlib
installcheck-host: maybe-installcheck-gnulib
installcheck-host: maybe-installcheck-gdbsupport
installcheck-host: maybe-installcheck-gdbserver
installcheck-host: maybe-installcheck-gdb
installcheck-host: maybe-installcheck-expect
installcheck-host: maybe-installcheck-guile
installcheck-host: maybe-installcheck-tk
installcheck-host: maybe-installcheck-libtermcap
installcheck-host: maybe-installcheck-utils
installcheck-host: maybe-installcheck-c++tools
installcheck-host: maybe-installcheck-gnattools
installcheck-host: maybe-installcheck-lto-plugin
installcheck-host: maybe-installcheck-libcc1
installcheck-host: maybe-installcheck-gotools
installcheck-host: maybe-installcheck-libctf

.PHONY: installcheck-target

installcheck-target: maybe-installcheck-target-libstdc++-v3
installcheck-target: maybe-installcheck-target-libsanitizer
installcheck-target: maybe-installcheck-target-libvtv
installcheck-target: maybe-installcheck-target-liboffloadmic
installcheck-target: maybe-installcheck-target-libssp
installcheck-target: maybe-installcheck-target-newlib
installcheck-target: maybe-installcheck-target-libgcc
installcheck-target: maybe-installcheck-target-libbacktrace
installcheck-target: maybe-installcheck-target-libquadmath
installcheck-target: maybe-installcheck-target-libgfortran
installcheck-target: maybe-installcheck-target-libobjc
installcheck-target: maybe-installcheck-target-libgo
installcheck-target: maybe-installcheck-target-libphobos
installcheck-target: maybe-installcheck-target-libtermcap
installcheck-target: maybe-installcheck-target-winsup
installcheck-target: maybe-installcheck-target-libgloss
installcheck-target: maybe-installcheck-target-libffi
installcheck-target: maybe-installcheck-target-zlib
installcheck-target: maybe-installcheck-target-rda
installcheck-target: maybe-installcheck-target-libada
installcheck-target: maybe-installcheck-target-libgomp
installcheck-target: maybe-installcheck-target-libitm
installcheck-target: maybe-installcheck-target-libatomic

.PHONY: do-mostlyclean
do-mostlyclean:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) mostlyclean-host \
	  mostlyclean-target


.PHONY: mostlyclean-host

mostlyclean-host: maybe-mostlyclean-bfd
mostlyclean-host: maybe-mostlyclean-opcodes
mostlyclean-host: maybe-mostlyclean-binutils
mostlyclean-host: maybe-mostlyclean-bison
mostlyclean-host: maybe-mostlyclean-cgen
mostlyclean-host: maybe-mostlyclean-dejagnu
mostlyclean-host: maybe-mostlyclean-etc
mostlyclean-host: maybe-mostlyclean-fastjar
mostlyclean-host: maybe-mostlyclean-fixincludes
mostlyclean-host: maybe-mostlyclean-flex
mostlyclean-host: maybe-mostlyclean-gas
mostlyclean-host: maybe-mostlyclean-gcc
mostlyclean-host: maybe-mostlyclean-gmp
mostlyclean-host: maybe-mostlyclean-mpfr
mostlyclean-host: maybe-mostlyclean-mpc
mostlyclean-host: maybe-mostlyclean-isl
mostlyclean-host: maybe-mostlyclean-libelf
mostlyclean-host: maybe-mostlyclean-gold
mostlyclean-host: maybe-mostlyclean-gprof
mostlyclean-host: maybe-mostlyclean-intl
mostlyclean-host: maybe-mostlyclean-tcl
mostlyclean-host: maybe-mostlyclean-itcl
mostlyclean-host: maybe-mostlyclean-ld
mostlyclean-host: maybe-mostlyclean-libbacktrace
mostlyclean-host: maybe-mostlyclean-libcpp
mostlyclean-host: maybe-mostlyclean-libcody
mostlyclean-host: maybe-mostlyclean-libdecnumber
mostlyclean-host: maybe-mostlyclean-libgui
mostlyclean-host: maybe-mostlyclean-libiberty
mostlyclean-host: maybe-mostlyclean-libiberty-linker-plugin
mostlyclean-host: maybe-mostlyclean-libiconv
mostlyclean-host: maybe-mostlyclean-m4
mostlyclean-host: maybe-mostlyclean-readline
mostlyclean-host: maybe-mostlyclean-sid
mostlyclean-host: maybe-mostlyclean-sim
mostlyclean-host: maybe-mostlyclean-texinfo
mostlyclean-host: maybe-mostlyclean-zlib
mostlyclean-host: maybe-mostlyclean-gnulib
mostlyclean-host: maybe-mostlyclean-gdbsupport
mostlyclean-host: maybe-mostlyclean-gdbserver
mostlyclean-host: maybe-mostlyclean-gdb
mostlyclean-host: maybe-mostlyclean-expect
mostlyclean-host: maybe-mostlyclean-guile
mostlyclean-host: maybe-mostlyclean-tk
mostlyclean-host: maybe-mostlyclean-libtermcap
mostlyclean-host: maybe-mostlyclean-utils
mostlyclean-host: maybe-mostlyclean-c++tools
mostlyclean-host: maybe-mostlyclean-gnattools
mostlyclean-host: maybe-mostlyclean-lto-plugin
mostlyclean-host: maybe-mostlyclean-libcc1
mostlyclean-host: maybe-mostlyclean-gotools
mostlyclean-host: maybe-mostlyclean-libctf

.PHONY: mostlyclean-target

mostlyclean-target: maybe-mostlyclean-target-libstdc++-v3
mostlyclean-target: maybe-mostlyclean-target-libsanitizer
mostlyclean-target: maybe-mostlyclean-target-libvtv
mostlyclean-target: maybe-mostlyclean-target-liboffloadmic
mostlyclean-target: maybe-mostlyclean-target-libssp
mostlyclean-target: maybe-mostlyclean-target-newlib
mostlyclean-target: maybe-mostlyclean-target-libgcc
mostlyclean-target: maybe-mostlyclean-target-libbacktrace
mostlyclean-target: maybe-mostlyclean-target-libquadmath
mostlyclean-target: maybe-mostlyclean-target-libgfortran
mostlyclean-target: maybe-mostlyclean-target-libobjc
mostlyclean-target: maybe-mostlyclean-target-libgo
mostlyclean-target: maybe-mostlyclean-target-libphobos
mostlyclean-target: maybe-mostlyclean-target-libtermcap
mostlyclean-target: maybe-mostlyclean-target-winsup
mostlyclean-target: maybe-mostlyclean-target-libgloss
mostlyclean-target: maybe-mostlyclean-target-libffi
mostlyclean-target: maybe-mostlyclean-target-zlib
mostlyclean-target: maybe-mostlyclean-target-rda
mostlyclean-target: maybe-mostlyclean-target-libada
mostlyclean-target: maybe-mostlyclean-target-libgomp
mostlyclean-target: maybe-mostlyclean-target-libitm
mostlyclean-target: maybe-mostlyclean-target-libatomic

.PHONY: do-clean
do-clean:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) clean-host \
	  clean-target


.PHONY: clean-host

clean-host: maybe-clean-bfd
clean-host: maybe-clean-opcodes
clean-host: maybe-clean-binutils
clean-host: maybe-clean-bison
clean-host: maybe-clean-cgen
clean-host: maybe-clean-dejagnu
clean-host: maybe-clean-etc
clean-host: maybe-clean-fastjar
clean-host: maybe-clean-fixincludes
clean-host: maybe-clean-flex
clean-host: maybe-clean-gas
clean-host: maybe-clean-gcc
clean-host: maybe-clean-gmp
clean-host: maybe-clean-mpfr
clean-host: maybe-clean-mpc
clean-host: maybe-clean-isl
clean-host: maybe-clean-libelf
clean-host: maybe-clean-gold
clean-host: maybe-clean-gprof
clean-host: maybe-clean-intl
clean-host: maybe-clean-tcl
clean-host: maybe-clean-itcl
clean-host: maybe-clean-ld
clean-host: maybe-clean-libbacktrace
clean-host: maybe-clean-libcpp
clean-host: maybe-clean-libcody
clean-host: maybe-clean-libdecnumber
clean-host: maybe-clean-libgui
clean-host: maybe-clean-libiberty
clean-host: maybe-clean-libiberty-linker-plugin
clean-host: maybe-clean-libiconv
clean-host: maybe-clean-m4
clean-host: maybe-clean-readline
clean-host: maybe-clean-sid
clean-host: maybe-clean-sim
clean-host: maybe-clean-texinfo
clean-host: maybe-clean-zlib
clean-host: maybe-clean-gnulib
clean-host: maybe-clean-gdbsupport
clean-host: maybe-clean-gdbserver
clean-host: maybe-clean-gdb
clean-host: maybe-clean-expect
clean-host: maybe-clean-guile
clean-host: maybe-clean-tk
clean-host: maybe-clean-libtermcap
clean-host: maybe-clean-utils
clean-host: maybe-clean-c++tools
clean-host: maybe-clean-gnattools
clean-host: maybe-clean-lto-plugin
clean-host: maybe-clean-libcc1
clean-host: maybe-clean-gotools
clean-host: maybe-clean-libctf

.PHONY: clean-target

clean-target: maybe-clean-target-libstdc++-v3
clean-target: maybe-clean-target-libsanitizer
clean-target: maybe-clean-target-libvtv
clean-target: maybe-clean-target-liboffloadmic
clean-target: maybe-clean-target-libssp
clean-target: maybe-clean-target-newlib
clean-target: maybe-clean-target-libgcc
clean-target: maybe-clean-target-libbacktrace
clean-target: maybe-clean-target-libquadmath
clean-target: maybe-clean-target-libgfortran
clean-target: maybe-clean-target-libobjc
clean-target: maybe-clean-target-libgo
clean-target: maybe-clean-target-libphobos
clean-target: maybe-clean-target-libtermcap
clean-target: maybe-clean-target-winsup
clean-target: maybe-clean-target-libgloss
clean-target: maybe-clean-target-libffi
clean-target: maybe-clean-target-zlib
clean-target: maybe-clean-target-rda
clean-target: maybe-clean-target-libada
clean-target: maybe-clean-target-libgomp
clean-target: maybe-clean-target-libitm
clean-target: maybe-clean-target-libatomic

.PHONY: do-distclean
do-distclean:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) distclean-host \
	  distclean-target


.PHONY: distclean-host

distclean-host: maybe-distclean-bfd
distclean-host: maybe-distclean-opcodes
distclean-host: maybe-distclean-binutils
distclean-host: maybe-distclean-bison
distclean-host: maybe-distclean-cgen
distclean-host: maybe-distclean-dejagnu
distclean-host: maybe-distclean-etc
distclean-host: maybe-distclean-fastjar
distclean-host: maybe-distclean-fixincludes
distclean-host: maybe-distclean-flex
distclean-host: maybe-distclean-gas
distclean-host: maybe-distclean-gcc
distclean-host: maybe-distclean-gmp
distclean-host: maybe-distclean-mpfr
distclean-host: maybe-distclean-mpc
distclean-host: maybe-distclean-isl
distclean-host: maybe-distclean-libelf
distclean-host: maybe-distclean-gold
distclean-host: maybe-distclean-gprof
distclean-host: maybe-distclean-intl
distclean-host: maybe-distclean-tcl
distclean-host: maybe-distclean-itcl
distclean-host: maybe-distclean-ld
distclean-host: maybe-distclean-libbacktrace
distclean-host: maybe-distclean-libcpp
distclean-host: maybe-distclean-libcody
distclean-host: maybe-distclean-libdecnumber
distclean-host: maybe-distclean-libgui
distclean-host: maybe-distclean-libiberty
distclean-host: maybe-distclean-libiberty-linker-plugin
distclean-host: maybe-distclean-libiconv
distclean-host: maybe-distclean-m4
distclean-host: maybe-distclean-readline
distclean-host: maybe-distclean-sid
distclean-host: maybe-distclean-sim
distclean-host: maybe-distclean-texinfo
distclean-host: maybe-distclean-zlib
distclean-host: maybe-distclean-gnulib
distclean-host: maybe-distclean-gdbsupport
distclean-host: maybe-distclean-gdbserver
distclean-host: maybe-distclean-gdb
distclean-host: maybe-distclean-expect
distclean-host: maybe-distclean-guile
distclean-host: maybe-distclean-tk
distclean-host: maybe-distclean-libtermcap
distclean-host: maybe-distclean-utils
distclean-host: maybe-distclean-c++tools
distclean-host: maybe-distclean-gnattools
distclean-host: maybe-distclean-lto-plugin
distclean-host: maybe-distclean-libcc1
distclean-host: maybe-distclean-gotools
distclean-host: maybe-distclean-libctf

.PHONY: distclean-target

distclean-target: maybe-distclean-target-libstdc++-v3
distclean-target: maybe-distclean-target-libsanitizer
distclean-target: maybe-distclean-target-libvtv
distclean-target: maybe-distclean-target-liboffloadmic
distclean-target: maybe-distclean-target-libssp
distclean-target: maybe-distclean-target-newlib
distclean-target: maybe-distclean-target-libgcc
distclean-target: maybe-distclean-target-libbacktrace
distclean-target: maybe-distclean-target-libquadmath
distclean-target: maybe-distclean-target-libgfortran
distclean-target: maybe-distclean-target-libobjc
distclean-target: maybe-distclean-target-libgo
distclean-target: maybe-distclean-target-libphobos
distclean-target: maybe-distclean-target-libtermcap
distclean-target: maybe-distclean-target-winsup
distclean-target: maybe-distclean-target-libgloss
distclean-target: maybe-distclean-target-libffi
distclean-target: maybe-distclean-target-zlib
distclean-target: maybe-distclean-target-rda
distclean-target: maybe-distclean-target-libada
distclean-target: maybe-distclean-target-libgomp
distclean-target: maybe-distclean-target-libitm
distclean-target: maybe-distclean-target-libatomic

.PHONY: do-maintainer-clean
do-maintainer-clean:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) maintainer-clean-host \
	  maintainer-clean-target


.PHONY: maintainer-clean-host

maintainer-clean-host: maybe-maintainer-clean-bfd
maintainer-clean-host: maybe-maintainer-clean-opcodes
maintainer-clean-host: maybe-maintainer-clean-binutils
maintainer-clean-host: maybe-maintainer-clean-bison
maintainer-clean-host: maybe-maintainer-clean-cgen
maintainer-clean-host: maybe-maintainer-clean-dejagnu
maintainer-clean-host: maybe-maintainer-clean-etc
maintainer-clean-host: maybe-maintainer-clean-fastjar
maintainer-clean-host: maybe-maintainer-clean-fixincludes
maintainer-clean-host: maybe-maintainer-clean-flex
maintainer-clean-host: maybe-maintainer-clean-gas
maintainer-clean-host: maybe-maintainer-clean-gcc
maintainer-clean-host: maybe-maintainer-clean-gmp
maintainer-clean-host: maybe-maintainer-clean-mpfr
maintainer-clean-host: maybe-maintainer-clean-mpc
maintainer-clean-host: maybe-maintainer-clean-isl
maintainer-clean-host: maybe-maintainer-clean-libelf
maintainer-clean-host: maybe-maintainer-clean-gold
maintainer-clean-host: maybe-maintainer-clean-gprof
maintainer-clean-host: maybe-maintainer-clean-intl
maintainer-clean-host: maybe-maintainer-clean-tcl
maintainer-clean-host: maybe-maintainer-clean-itcl
maintainer-clean-host: maybe-maintainer-clean-ld
maintainer-clean-host: maybe-maintainer-clean-libbacktrace
maintainer-clean-host: maybe-maintainer-clean-libcpp
maintainer-clean-host: maybe-maintainer-clean-libcody
maintainer-clean-host: maybe-maintainer-clean-libdecnumber
maintainer-clean-host: maybe-maintainer-clean-libgui
maintainer-clean-host: maybe-maintainer-clean-libiberty
maintainer-clean-host: maybe-maintainer-clean-libiberty-linker-plugin
maintainer-clean-host: maybe-maintainer-clean-libiconv
maintainer-clean-host: maybe-maintainer-clean-m4
maintainer-clean-host: maybe-maintainer-clean-readline
maintainer-clean-host: maybe-maintainer-clean-sid
maintainer-clean-host: maybe-maintainer-clean-sim
maintainer-clean-host: maybe-maintainer-clean-texinfo
maintainer-clean-host: maybe-maintainer-clean-zlib
maintainer-clean-host: maybe-maintainer-clean-gnulib
maintainer-clean-host: maybe-maintainer-clean-gdbsupport
maintainer-clean-host: maybe-maintainer-clean-gdbserver
maintainer-clean-host: maybe-maintainer-clean-gdb
maintainer-clean-host: maybe-maintainer-clean-expect
maintainer-clean-host: maybe-maintainer-clean-guile
maintainer-clean-host: maybe-maintainer-clean-tk
maintainer-clean-host: maybe-maintainer-clean-libtermcap
maintainer-clean-host: maybe-maintainer-clean-utils
maintainer-clean-host: maybe-maintainer-clean-c++tools
maintainer-clean-host: maybe-maintainer-clean-gnattools
maintainer-clean-host: maybe-maintainer-clean-lto-plugin
maintainer-clean-host: maybe-maintainer-clean-libcc1
maintainer-clean-host: maybe-maintainer-clean-gotools
maintainer-clean-host: maybe-maintainer-clean-libctf

.PHONY: maintainer-clean-target

maintainer-clean-target: maybe-maintainer-clean-target-libstdc++-v3
maintainer-clean-target: maybe-maintainer-clean-target-libsanitizer
maintainer-clean-target: maybe-maintainer-clean-target-libvtv
maintainer-clean-target: maybe-maintainer-clean-target-liboffloadmic
maintainer-clean-target: maybe-maintainer-clean-target-libssp
maintainer-clean-target: maybe-maintainer-clean-target-newlib
maintainer-clean-target: maybe-maintainer-clean-target-libgcc
maintainer-clean-target: maybe-maintainer-clean-target-libbacktrace
maintainer-clean-target: maybe-maintainer-clean-target-libquadmath
maintainer-clean-target: maybe-maintainer-clean-target-libgfortran
maintainer-clean-target: maybe-maintainer-clean-target-libobjc
maintainer-clean-target: maybe-maintainer-clean-target-libgo
maintainer-clean-target: maybe-maintainer-clean-target-libphobos
maintainer-clean-target: maybe-maintainer-clean-target-libtermcap
maintainer-clean-target: maybe-maintainer-clean-target-winsup
maintainer-clean-target: maybe-maintainer-clean-target-libgloss
maintainer-clean-target: maybe-maintainer-clean-target-libffi
maintainer-clean-target: maybe-maintainer-clean-target-zlib
maintainer-clean-target: maybe-maintainer-clean-target-rda
maintainer-clean-target: maybe-maintainer-clean-target-libada
maintainer-clean-target: maybe-maintainer-clean-target-libgomp
maintainer-clean-target: maybe-maintainer-clean-target-libitm
maintainer-clean-target: maybe-maintainer-clean-target-libatomic


# Here are the targets which correspond to the do-X targets.

.PHONY: info installcheck dvi pdf html
.PHONY: install-info install-dvi install-pdf install-html
.PHONY: clean distclean mostlyclean maintainer-clean realclean
.PHONY: local-clean local-distclean local-maintainer-clean
info: do-info
installcheck: do-installcheck
dvi: do-dvi
pdf: do-pdf
html: do-html

# Make sure makeinfo is built before we do a `make info', if we're
# in fact building texinfo.
do-info: maybe-all-texinfo

install-info: do-install-info dir.info
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if [ -f dir.info ]; then \
	  $(INSTALL_DATA) dir.info $(DESTDIR)$(infodir)/dir.info; \
	else true; fi

install-dvi: do-install-dvi

install-pdf: do-install-pdf

install-html: do-install-html

local-clean:
	-rm -f *.a TEMP errs core *.o *~ \#* TAGS *.E *.log

local-distclean:
	-rm -f Makefile config.status config.cache mh-frag mt-frag
	-rm -f maybedep.tmp serdep.tmp stage_final
	-if [ "$(TARGET_SUBDIR)" != "." ]; then \
	  rm -rf $(TARGET_SUBDIR); \
	else true; fi
	-rm -rf $(BUILD_SUBDIR)
	-if [ "$(HOST_SUBDIR)" != "." ]; then \
	  rm -rf $(HOST_SUBDIR); \
	else true; fi
	-rm -f texinfo/po/Makefile texinfo/po/Makefile.in texinfo/info/Makefile
	-rm -f texinfo/doc/Makefile texinfo/po/POTFILES
	-rmdir texinfo/doc texinfo/info texinfo/intl texinfo/lib 2>/dev/null
	-rmdir texinfo/makeinfo texinfo/po texinfo/util 2>/dev/null
	-rmdir c++tools fastjar gcc gnattools gotools 2>/dev/null
	-rmdir libcc1 libiberty texinfo zlib 2>/dev/null
	-find . -name config.cache -exec rm -f {} \; \; 2>/dev/null

local-maintainer-clean:
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."

clean: do-clean local-clean
mostlyclean: do-mostlyclean local-clean
distclean: do-distclean local-clean local-distclean
maintainer-clean: local-maintainer-clean do-maintainer-clean local-clean 
maintainer-clean: local-distclean
realclean: maintainer-clean

# Check target.

.PHONY: check do-check
check: do-check

# Only include modules actually being configured and built.
.PHONY: check-host
check-host:  \
    maybe-check-bfd \
    maybe-check-opcodes \
    maybe-check-binutils \
    maybe-check-bison \
    maybe-check-cgen \
    maybe-check-dejagnu \
    maybe-check-etc \
    maybe-check-fastjar \
    maybe-check-fixincludes \
    maybe-check-flex \
    maybe-check-gas \
    maybe-check-gcc \
    maybe-check-gmp \
    maybe-check-mpfr \
    maybe-check-mpc \
    maybe-check-isl \
    maybe-check-libelf \
    maybe-check-gold \
    maybe-check-gprof \
    maybe-check-intl \
    maybe-check-tcl \
    maybe-check-itcl \
    maybe-check-ld \
    maybe-check-libbacktrace \
    maybe-check-libcpp \
    maybe-check-libcody \
    maybe-check-libdecnumber \
    maybe-check-libgui \
    maybe-check-libiberty \
    maybe-check-libiberty-linker-plugin \
    maybe-check-libiconv \
    maybe-check-m4 \
    maybe-check-readline \
    maybe-check-sid \
    maybe-check-sim \
    maybe-check-texinfo \
    maybe-check-zlib \
    maybe-check-gnulib \
    maybe-check-gdbsupport \
    maybe-check-gdbserver \
    maybe-check-gdb \
    maybe-check-expect \
    maybe-check-guile \
    maybe-check-tk \
    maybe-check-libtermcap \
    maybe-check-utils \
    maybe-check-c++tools \
    maybe-check-gnattools \
    maybe-check-lto-plugin \
    maybe-check-libcc1 \
    maybe-check-gotools \
    maybe-check-libctf

.PHONY: check-target
check-target:  \
    maybe-check-target-libstdc++-v3 \
    maybe-check-target-libsanitizer \
    maybe-check-target-libvtv \
    maybe-check-target-liboffloadmic \
    maybe-check-target-libssp \
    maybe-check-target-newlib \
    maybe-check-target-libgcc \
    maybe-check-target-libbacktrace \
    maybe-check-target-libquadmath \
    maybe-check-target-libgfortran \
    maybe-check-target-libobjc \
    maybe-check-target-libgo \
    maybe-check-target-libphobos \
    maybe-check-target-libtermcap \
    maybe-check-target-winsup \
    maybe-check-target-libgloss \
    maybe-check-target-libffi \
    maybe-check-target-zlib \
    maybe-check-target-rda \
    maybe-check-target-libada \
    maybe-check-target-libgomp \
    maybe-check-target-libitm \
    maybe-check-target-libatomic

do-check:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) check-host check-target

# Automated reporting of test results.

warning.log: build.log
	$(srcdir)/contrib/warn_summary build.log > $@

mail-report.log:
	if test x'$(BOOT_CFLAGS)' != x''; then \
	    BOOT_CFLAGS='$(BOOT_CFLAGS)'; export BOOT_CFLAGS; \
	fi; \
	$(srcdir)/contrib/test_summary -t >$@
	chmod +x $@
	echo If you really want to send e-mail, run ./$@ now

mail-report-with-warnings.log: warning.log
	if test x'$(BOOT_CFLAGS)' != x''; then \
	    BOOT_CFLAGS='$(BOOT_CFLAGS)'; export BOOT_CFLAGS; \
	fi; \
	$(srcdir)/contrib/test_summary -t -i warning.log >$@
	chmod +x $@
	echo If you really want to send e-mail, run ./$@ now

# Local Vim config

$(srcdir)/.local.vimrc:
	$(LN_S) contrib/vimrc $@

$(srcdir)/.lvimrc:
	$(LN_S) contrib/vimrc $@

vimrc: $(srcdir)/.local.vimrc $(srcdir)/.lvimrc

.PHONY: vimrc

# clang-format config

$(srcdir)/.clang-format:
	$(LN_S) contrib/clang-format $@

clang-format: $(srcdir)/.clang-format

.PHONY: clang-format

# Installation targets.

.PHONY: install uninstall
install:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) installdirs install-host install-target

.PHONY: install-host-nogcc
install-host-nogcc:  \
    maybe-install-bfd \
    maybe-install-opcodes \
    maybe-install-binutils \
    maybe-install-bison \
    maybe-install-cgen \
    maybe-install-dejagnu \
    maybe-install-etc \
    maybe-install-fastjar \
    maybe-install-fixincludes \
    maybe-install-flex \
    maybe-install-gas \
    maybe-install-gmp \
    maybe-install-mpfr \
    maybe-install-mpc \
    maybe-install-isl \
    maybe-install-libelf \
    maybe-install-gold \
    maybe-install-gprof \
    maybe-install-intl \
    maybe-install-tcl \
    maybe-install-itcl \
    maybe-install-ld \
    maybe-install-libbacktrace \
    maybe-install-libcpp \
    maybe-install-libcody \
    maybe-install-libdecnumber \
    maybe-install-libgui \
    maybe-install-libiberty \
    maybe-install-libiberty-linker-plugin \
    maybe-install-libiconv \
    maybe-install-m4 \
    maybe-install-readline \
    maybe-install-sid \
    maybe-install-sim \
    maybe-install-texinfo \
    maybe-install-zlib \
    maybe-install-gnulib \
    maybe-install-gdbsupport \
    maybe-install-gdbserver \
    maybe-install-gdb \
    maybe-install-expect \
    maybe-install-guile \
    maybe-install-tk \
    maybe-install-libtermcap \
    maybe-install-utils \
    maybe-install-c++tools \
    maybe-install-gnattools \
    maybe-install-lto-plugin \
    maybe-install-libcc1 \
    maybe-install-gotools \
    maybe-install-libctf

.PHONY: install-host
install-host:  \
    maybe-install-bfd \
    maybe-install-opcodes \
    maybe-install-binutils \
    maybe-install-bison \
    maybe-install-cgen \
    maybe-install-dejagnu \
    maybe-install-etc \
    maybe-install-fastjar \
    maybe-install-fixincludes \
    maybe-install-flex \
    maybe-install-gas \
    maybe-install-gcc \
    maybe-install-gmp \
    maybe-install-mpfr \
    maybe-install-mpc \
    maybe-install-isl \
    maybe-install-libelf \
    maybe-install-gold \
    maybe-install-gprof \
    maybe-install-intl \
    maybe-install-tcl \
    maybe-install-itcl \
    maybe-install-ld \
    maybe-install-libbacktrace \
    maybe-install-libcpp \
    maybe-install-libcody \
    maybe-install-libdecnumber \
    maybe-install-libgui \
    maybe-install-libiberty \
    maybe-install-libiberty-linker-plugin \
    maybe-install-libiconv \
    maybe-install-m4 \
    maybe-install-readline \
    maybe-install-sid \
    maybe-install-sim \
    maybe-install-texinfo \
    maybe-install-zlib \
    maybe-install-gnulib \
    maybe-install-gdbsupport \
    maybe-install-gdbserver \
    maybe-install-gdb \
    maybe-install-expect \
    maybe-install-guile \
    maybe-install-tk \
    maybe-install-libtermcap \
    maybe-install-utils \
    maybe-install-c++tools \
    maybe-install-gnattools \
    maybe-install-lto-plugin \
    maybe-install-libcc1 \
    maybe-install-gotools \
    maybe-install-libctf

.PHONY: install-target
install-target:  \
    maybe-install-target-libstdc++-v3 \
    maybe-install-target-libsanitizer \
    maybe-install-target-libvtv \
    maybe-install-target-liboffloadmic \
    maybe-install-target-libssp \
    maybe-install-target-newlib \
    maybe-install-target-libgcc \
    maybe-install-target-libbacktrace \
    maybe-install-target-libquadmath \
    maybe-install-target-libgfortran \
    maybe-install-target-libobjc \
    maybe-install-target-libgo \
    maybe-install-target-libphobos \
    maybe-install-target-libtermcap \
    maybe-install-target-winsup \
    maybe-install-target-libgloss \
    maybe-install-target-libffi \
    maybe-install-target-zlib \
    maybe-install-target-rda \
    maybe-install-target-libada \
    maybe-install-target-libgomp \
    maybe-install-target-libitm \
    maybe-install-target-libatomic

uninstall:
	@echo "the uninstall target is not supported in this tree"

.PHONY: install.all
install.all: install-no-fixedincludes
	@if [ -f ./gcc/Makefile ]; then \
		r=`${PWD_COMMAND}`; export r; \
		s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
		$(HOST_EXPORTS) \
		(cd ./gcc && \
		$(MAKE) $(FLAGS_TO_PASS) install-headers); \
	else \
		true; \
	fi

# install-no-fixedincludes is used to allow the elaboration of binary packages
# suitable for distribution, where we cannot include the fixed system header
# files.
.PHONY: install-no-fixedincludes
install-no-fixedincludes: installdirs install-host-nogcc \
	install-target gcc-install-no-fixedincludes

.PHONY: install-strip
install-strip:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) installdirs install-strip-host install-strip-target

.PHONY: install-strip-host
install-strip-host:  \
    maybe-install-strip-bfd \
    maybe-install-strip-opcodes \
    maybe-install-strip-binutils \
    maybe-install-strip-bison \
    maybe-install-strip-cgen \
    maybe-install-strip-dejagnu \
    maybe-install-strip-etc \
    maybe-install-strip-fastjar \
    maybe-install-strip-fixincludes \
    maybe-install-strip-flex \
    maybe-install-strip-gas \
    maybe-install-strip-gcc \
    maybe-install-strip-gmp \
    maybe-install-strip-mpfr \
    maybe-install-strip-mpc \
    maybe-install-strip-isl \
    maybe-install-strip-libelf \
    maybe-install-strip-gold \
    maybe-install-strip-gprof \
    maybe-install-strip-intl \
    maybe-install-strip-tcl \
    maybe-install-strip-itcl \
    maybe-install-strip-ld \
    maybe-install-strip-libbacktrace \
    maybe-install-strip-libcpp \
    maybe-install-strip-libcody \
    maybe-install-strip-libdecnumber \
    maybe-install-strip-libgui \
    maybe-install-strip-libiberty \
    maybe-install-strip-libiberty-linker-plugin \
    maybe-install-strip-libiconv \
    maybe-install-strip-m4 \
    maybe-install-strip-readline \
    maybe-install-strip-sid \
    maybe-install-strip-sim \
    maybe-install-strip-texinfo \
    maybe-install-strip-zlib \
    maybe-install-strip-gnulib \
    maybe-install-strip-gdbsupport \
    maybe-install-strip-gdbserver \
    maybe-install-strip-gdb \
    maybe-install-strip-expect \
    maybe-install-strip-guile \
    maybe-install-strip-tk \
    maybe-install-strip-libtermcap \
    maybe-install-strip-utils \
    maybe-install-strip-c++tools \
    maybe-install-strip-gnattools \
    maybe-install-strip-lto-plugin \
    maybe-install-strip-libcc1 \
    maybe-install-strip-gotools \
    maybe-install-strip-libctf

.PHONY: install-strip-target
install-strip-target:  \
    maybe-install-strip-target-libstdc++-v3 \
    maybe-install-strip-target-libsanitizer \
    maybe-install-strip-target-libvtv \
    maybe-install-strip-target-liboffloadmic \
    maybe-install-strip-target-libssp \
    maybe-install-strip-target-newlib \
    maybe-install-strip-target-libgcc \
    maybe-install-strip-target-libbacktrace \
    maybe-install-strip-target-libquadmath \
    maybe-install-strip-target-libgfortran \
    maybe-install-strip-target-libobjc \
    maybe-install-strip-target-libgo \
    maybe-install-strip-target-libphobos \
    maybe-install-strip-target-libtermcap \
    maybe-install-strip-target-winsup \
    maybe-install-strip-target-libgloss \
    maybe-install-strip-target-libffi \
    maybe-install-strip-target-zlib \
    maybe-install-strip-target-rda \
    maybe-install-strip-target-libada \
    maybe-install-strip-target-libgomp \
    maybe-install-strip-target-libitm \
    maybe-install-strip-target-libatomic


### other supporting targets

MAKEDIRS= \
	$(DESTDIR)$(prefix) \
	$(DESTDIR)$(exec_prefix)
.PHONY: installdirs
installdirs: mkinstalldirs
	$(SHELL) $(srcdir)/mkinstalldirs $(MAKEDIRS)

dir.info: do-install-info
	if [ -f $(srcdir)/texinfo/gen-info-dir ]; then \
	  $(srcdir)/texinfo/gen-info-dir $(DESTDIR)$(infodir) $(srcdir)/texinfo/dir.info-template > dir.info.new; \
	  mv -f dir.info.new dir.info; \
	else true; \
	fi

dist:
	@echo "Building a full distribution of this tree isn't done"
	@echo "via 'make dist'.  Check out the etc/ subdirectory" 

etags tags: TAGS

# Right now this just builds TAGS in each subdirectory.  emacs19 has the
# ability to use several tags files at once, so there is probably no need
# to combine them into one big TAGS file (like CVS 1.3 does).  We could
# (if we felt like it) have this Makefile write a piece of elisp which
# the user could load to tell emacs19 where all the TAGS files we just
# built are.
TAGS: do-TAGS

# ------------------------------------
# Macros for configure and all targets
# ------------------------------------





# --------------------------------------
# Modules which run on the build machine
# --------------------------------------


.PHONY: configure-build-libiberty maybe-configure-build-libiberty
maybe-configure-build-libiberty:
maybe-configure-build-libiberty: configure-build-libiberty
configure-build-libiberty: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(BUILD_SUBDIR)/libiberty/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(BUILD_SUBDIR)/libiberty; \
	$(BUILD_EXPORTS)  \
	echo Configuring in $(BUILD_SUBDIR)/libiberty; \
	cd "$(BUILD_SUBDIR)/libiberty" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(BUILD_SUBDIR)/libiberty/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libiberty; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(BUILD_CONFIGARGS) --build=${build_alias} --host=${build_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-build-libiberty maybe-all-build-libiberty
maybe-all-build-libiberty:
TARGET-build-libiberty=all
maybe-all-build-libiberty: all-build-libiberty
all-build-libiberty: configure-build-libiberty
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(BUILD_EXPORTS)  \
	(cd $(BUILD_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_BUILD_FLAGS)   \
		$(TARGET-build-libiberty))





.PHONY: configure-build-bison maybe-configure-build-bison
maybe-configure-build-bison:





.PHONY: all-build-bison maybe-all-build-bison
maybe-all-build-bison:





.PHONY: configure-build-flex maybe-configure-build-flex
maybe-configure-build-flex:





.PHONY: all-build-flex maybe-all-build-flex
maybe-all-build-flex:





.PHONY: configure-build-m4 maybe-configure-build-m4
maybe-configure-build-m4:





.PHONY: all-build-m4 maybe-all-build-m4
maybe-all-build-m4:





.PHONY: configure-build-texinfo maybe-configure-build-texinfo
maybe-configure-build-texinfo:





.PHONY: all-build-texinfo maybe-all-build-texinfo
maybe-all-build-texinfo:





.PHONY: configure-build-fixincludes maybe-configure-build-fixincludes
maybe-configure-build-fixincludes:
maybe-configure-build-fixincludes: configure-build-fixincludes
configure-build-fixincludes: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(BUILD_SUBDIR)/fixincludes/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(BUILD_SUBDIR)/fixincludes; \
	$(BUILD_EXPORTS)  \
	echo Configuring in $(BUILD_SUBDIR)/fixincludes; \
	cd "$(BUILD_SUBDIR)/fixincludes" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(BUILD_SUBDIR)/fixincludes/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=fixincludes; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(BUILD_CONFIGARGS) --build=${build_alias} --host=${build_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-build-fixincludes maybe-all-build-fixincludes
maybe-all-build-fixincludes:
TARGET-build-fixincludes=all
maybe-all-build-fixincludes: all-build-fixincludes
all-build-fixincludes: configure-build-fixincludes
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(BUILD_EXPORTS)  \
	(cd $(BUILD_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_BUILD_FLAGS)   \
		$(TARGET-build-fixincludes))





.PHONY: configure-build-libcpp maybe-configure-build-libcpp
maybe-configure-build-libcpp:
maybe-configure-build-libcpp: configure-build-libcpp
configure-build-libcpp: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(BUILD_SUBDIR)/libcpp/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(BUILD_SUBDIR)/libcpp; \
	$(BUILD_EXPORTS)  \
	echo Configuring in $(BUILD_SUBDIR)/libcpp; \
	cd "$(BUILD_SUBDIR)/libcpp" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(BUILD_SUBDIR)/libcpp/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libcpp; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(BUILD_CONFIGARGS) --build=${build_alias} --host=${build_alias} \
	  --target=${target_alias} --disable-nls am_cv_func_iconv=no \
	  || exit 1





.PHONY: all-build-libcpp maybe-all-build-libcpp
maybe-all-build-libcpp:
TARGET-build-libcpp=all
maybe-all-build-libcpp: all-build-libcpp
all-build-libcpp: configure-build-libcpp
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(BUILD_EXPORTS)  \
	(cd $(BUILD_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_BUILD_FLAGS)   \
		$(TARGET-build-libcpp))





# --------------------------------------
# Modules which run on the host machine
# --------------------------------------


.PHONY: configure-bfd maybe-configure-bfd
maybe-configure-bfd:
maybe-configure-bfd: configure-bfd
configure-bfd: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/bfd/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/bfd; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/bfd; \
	cd "$(HOST_SUBDIR)/bfd" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/bfd/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=bfd; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-bfd maybe-configure-stage1-bfd
maybe-configure-stage1-bfd:

.PHONY: configure-stage2-bfd maybe-configure-stage2-bfd
maybe-configure-stage2-bfd:

.PHONY: configure-stage3-bfd maybe-configure-stage3-bfd
maybe-configure-stage3-bfd:

.PHONY: configure-stage4-bfd maybe-configure-stage4-bfd
maybe-configure-stage4-bfd:

.PHONY: configure-stageprofile-bfd maybe-configure-stageprofile-bfd
maybe-configure-stageprofile-bfd:

.PHONY: configure-stagetrain-bfd maybe-configure-stagetrain-bfd
maybe-configure-stagetrain-bfd:

.PHONY: configure-stagefeedback-bfd maybe-configure-stagefeedback-bfd
maybe-configure-stagefeedback-bfd:

.PHONY: configure-stageautoprofile-bfd maybe-configure-stageautoprofile-bfd
maybe-configure-stageautoprofile-bfd:

.PHONY: configure-stageautofeedback-bfd maybe-configure-stageautofeedback-bfd
maybe-configure-stageautofeedback-bfd:





.PHONY: all-bfd maybe-all-bfd
maybe-all-bfd:
TARGET-bfd=all
maybe-all-bfd: all-bfd
all-bfd: configure-bfd
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-bfd))



.PHONY: all-stage1-bfd maybe-all-stage1-bfd
.PHONY: clean-stage1-bfd maybe-clean-stage1-bfd
maybe-all-stage1-bfd:
maybe-clean-stage1-bfd:


.PHONY: all-stage2-bfd maybe-all-stage2-bfd
.PHONY: clean-stage2-bfd maybe-clean-stage2-bfd
maybe-all-stage2-bfd:
maybe-clean-stage2-bfd:


.PHONY: all-stage3-bfd maybe-all-stage3-bfd
.PHONY: clean-stage3-bfd maybe-clean-stage3-bfd
maybe-all-stage3-bfd:
maybe-clean-stage3-bfd:


.PHONY: all-stage4-bfd maybe-all-stage4-bfd
.PHONY: clean-stage4-bfd maybe-clean-stage4-bfd
maybe-all-stage4-bfd:
maybe-clean-stage4-bfd:


.PHONY: all-stageprofile-bfd maybe-all-stageprofile-bfd
.PHONY: clean-stageprofile-bfd maybe-clean-stageprofile-bfd
maybe-all-stageprofile-bfd:
maybe-clean-stageprofile-bfd:


.PHONY: all-stagetrain-bfd maybe-all-stagetrain-bfd
.PHONY: clean-stagetrain-bfd maybe-clean-stagetrain-bfd
maybe-all-stagetrain-bfd:
maybe-clean-stagetrain-bfd:


.PHONY: all-stagefeedback-bfd maybe-all-stagefeedback-bfd
.PHONY: clean-stagefeedback-bfd maybe-clean-stagefeedback-bfd
maybe-all-stagefeedback-bfd:
maybe-clean-stagefeedback-bfd:


.PHONY: all-stageautoprofile-bfd maybe-all-stageautoprofile-bfd
.PHONY: clean-stageautoprofile-bfd maybe-clean-stageautoprofile-bfd
maybe-all-stageautoprofile-bfd:
maybe-clean-stageautoprofile-bfd:


.PHONY: all-stageautofeedback-bfd maybe-all-stageautofeedback-bfd
.PHONY: clean-stageautofeedback-bfd maybe-clean-stageautofeedback-bfd
maybe-all-stageautofeedback-bfd:
maybe-clean-stageautofeedback-bfd:





.PHONY: check-bfd maybe-check-bfd
maybe-check-bfd:
maybe-check-bfd: check-bfd

check-bfd:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-bfd maybe-install-bfd
maybe-install-bfd:
maybe-install-bfd: install-bfd

install-bfd: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-bfd maybe-install-strip-bfd
maybe-install-strip-bfd:
maybe-install-strip-bfd: install-strip-bfd

install-strip-bfd: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-bfd info-bfd
maybe-info-bfd:
maybe-info-bfd: info-bfd

info-bfd: \
    configure-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-bfd dvi-bfd
maybe-dvi-bfd:
maybe-dvi-bfd: dvi-bfd

dvi-bfd: \
    configure-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-bfd pdf-bfd
maybe-pdf-bfd:
maybe-pdf-bfd: pdf-bfd

pdf-bfd: \
    configure-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-bfd html-bfd
maybe-html-bfd:
maybe-html-bfd: html-bfd

html-bfd: \
    configure-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-bfd TAGS-bfd
maybe-TAGS-bfd:
maybe-TAGS-bfd: TAGS-bfd

TAGS-bfd: \
    configure-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-bfd install-info-bfd
maybe-install-info-bfd:
maybe-install-info-bfd: install-info-bfd

install-info-bfd: \
    configure-bfd \
    info-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-bfd install-dvi-bfd
maybe-install-dvi-bfd:
maybe-install-dvi-bfd: install-dvi-bfd

install-dvi-bfd: \
    configure-bfd \
    dvi-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-bfd install-pdf-bfd
maybe-install-pdf-bfd:
maybe-install-pdf-bfd: install-pdf-bfd

install-pdf-bfd: \
    configure-bfd \
    pdf-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-bfd install-html-bfd
maybe-install-html-bfd:
maybe-install-html-bfd: install-html-bfd

install-html-bfd: \
    configure-bfd \
    html-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-bfd installcheck-bfd
maybe-installcheck-bfd:
maybe-installcheck-bfd: installcheck-bfd

installcheck-bfd: \
    configure-bfd 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-bfd mostlyclean-bfd
maybe-mostlyclean-bfd:
maybe-mostlyclean-bfd: mostlyclean-bfd

mostlyclean-bfd: 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-bfd clean-bfd
maybe-clean-bfd:
maybe-clean-bfd: clean-bfd

clean-bfd: 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-bfd distclean-bfd
maybe-distclean-bfd:
maybe-distclean-bfd: distclean-bfd

distclean-bfd: 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-bfd maintainer-clean-bfd
maybe-maintainer-clean-bfd:
maybe-maintainer-clean-bfd: maintainer-clean-bfd

maintainer-clean-bfd: 
	@[ -f ./bfd/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in bfd"; \
	(cd $(HOST_SUBDIR)/bfd && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-opcodes maybe-configure-opcodes
maybe-configure-opcodes:
maybe-configure-opcodes: configure-opcodes
configure-opcodes: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/opcodes/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/opcodes; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/opcodes; \
	cd "$(HOST_SUBDIR)/opcodes" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/opcodes/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=opcodes; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-opcodes maybe-configure-stage1-opcodes
maybe-configure-stage1-opcodes:

.PHONY: configure-stage2-opcodes maybe-configure-stage2-opcodes
maybe-configure-stage2-opcodes:

.PHONY: configure-stage3-opcodes maybe-configure-stage3-opcodes
maybe-configure-stage3-opcodes:

.PHONY: configure-stage4-opcodes maybe-configure-stage4-opcodes
maybe-configure-stage4-opcodes:

.PHONY: configure-stageprofile-opcodes maybe-configure-stageprofile-opcodes
maybe-configure-stageprofile-opcodes:

.PHONY: configure-stagetrain-opcodes maybe-configure-stagetrain-opcodes
maybe-configure-stagetrain-opcodes:

.PHONY: configure-stagefeedback-opcodes maybe-configure-stagefeedback-opcodes
maybe-configure-stagefeedback-opcodes:

.PHONY: configure-stageautoprofile-opcodes maybe-configure-stageautoprofile-opcodes
maybe-configure-stageautoprofile-opcodes:

.PHONY: configure-stageautofeedback-opcodes maybe-configure-stageautofeedback-opcodes
maybe-configure-stageautofeedback-opcodes:





.PHONY: all-opcodes maybe-all-opcodes
maybe-all-opcodes:
TARGET-opcodes=all
maybe-all-opcodes: all-opcodes
all-opcodes: configure-opcodes
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-opcodes))



.PHONY: all-stage1-opcodes maybe-all-stage1-opcodes
.PHONY: clean-stage1-opcodes maybe-clean-stage1-opcodes
maybe-all-stage1-opcodes:
maybe-clean-stage1-opcodes:


.PHONY: all-stage2-opcodes maybe-all-stage2-opcodes
.PHONY: clean-stage2-opcodes maybe-clean-stage2-opcodes
maybe-all-stage2-opcodes:
maybe-clean-stage2-opcodes:


.PHONY: all-stage3-opcodes maybe-all-stage3-opcodes
.PHONY: clean-stage3-opcodes maybe-clean-stage3-opcodes
maybe-all-stage3-opcodes:
maybe-clean-stage3-opcodes:


.PHONY: all-stage4-opcodes maybe-all-stage4-opcodes
.PHONY: clean-stage4-opcodes maybe-clean-stage4-opcodes
maybe-all-stage4-opcodes:
maybe-clean-stage4-opcodes:


.PHONY: all-stageprofile-opcodes maybe-all-stageprofile-opcodes
.PHONY: clean-stageprofile-opcodes maybe-clean-stageprofile-opcodes
maybe-all-stageprofile-opcodes:
maybe-clean-stageprofile-opcodes:


.PHONY: all-stagetrain-opcodes maybe-all-stagetrain-opcodes
.PHONY: clean-stagetrain-opcodes maybe-clean-stagetrain-opcodes
maybe-all-stagetrain-opcodes:
maybe-clean-stagetrain-opcodes:


.PHONY: all-stagefeedback-opcodes maybe-all-stagefeedback-opcodes
.PHONY: clean-stagefeedback-opcodes maybe-clean-stagefeedback-opcodes
maybe-all-stagefeedback-opcodes:
maybe-clean-stagefeedback-opcodes:


.PHONY: all-stageautoprofile-opcodes maybe-all-stageautoprofile-opcodes
.PHONY: clean-stageautoprofile-opcodes maybe-clean-stageautoprofile-opcodes
maybe-all-stageautoprofile-opcodes:
maybe-clean-stageautoprofile-opcodes:


.PHONY: all-stageautofeedback-opcodes maybe-all-stageautofeedback-opcodes
.PHONY: clean-stageautofeedback-opcodes maybe-clean-stageautofeedback-opcodes
maybe-all-stageautofeedback-opcodes:
maybe-clean-stageautofeedback-opcodes:





.PHONY: check-opcodes maybe-check-opcodes
maybe-check-opcodes:
maybe-check-opcodes: check-opcodes

check-opcodes:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-opcodes maybe-install-opcodes
maybe-install-opcodes:
maybe-install-opcodes: install-opcodes

install-opcodes: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-opcodes maybe-install-strip-opcodes
maybe-install-strip-opcodes:
maybe-install-strip-opcodes: install-strip-opcodes

install-strip-opcodes: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-opcodes info-opcodes
maybe-info-opcodes:
maybe-info-opcodes: info-opcodes

info-opcodes: \
    configure-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-opcodes dvi-opcodes
maybe-dvi-opcodes:
maybe-dvi-opcodes: dvi-opcodes

dvi-opcodes: \
    configure-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-opcodes pdf-opcodes
maybe-pdf-opcodes:
maybe-pdf-opcodes: pdf-opcodes

pdf-opcodes: \
    configure-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-opcodes html-opcodes
maybe-html-opcodes:
maybe-html-opcodes: html-opcodes

html-opcodes: \
    configure-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-opcodes TAGS-opcodes
maybe-TAGS-opcodes:
maybe-TAGS-opcodes: TAGS-opcodes

TAGS-opcodes: \
    configure-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-opcodes install-info-opcodes
maybe-install-info-opcodes:
maybe-install-info-opcodes: install-info-opcodes

install-info-opcodes: \
    configure-opcodes \
    info-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-opcodes install-dvi-opcodes
maybe-install-dvi-opcodes:
maybe-install-dvi-opcodes: install-dvi-opcodes

install-dvi-opcodes: \
    configure-opcodes \
    dvi-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-opcodes install-pdf-opcodes
maybe-install-pdf-opcodes:
maybe-install-pdf-opcodes: install-pdf-opcodes

install-pdf-opcodes: \
    configure-opcodes \
    pdf-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-opcodes install-html-opcodes
maybe-install-html-opcodes:
maybe-install-html-opcodes: install-html-opcodes

install-html-opcodes: \
    configure-opcodes \
    html-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-opcodes installcheck-opcodes
maybe-installcheck-opcodes:
maybe-installcheck-opcodes: installcheck-opcodes

installcheck-opcodes: \
    configure-opcodes 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-opcodes mostlyclean-opcodes
maybe-mostlyclean-opcodes:
maybe-mostlyclean-opcodes: mostlyclean-opcodes

mostlyclean-opcodes: 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-opcodes clean-opcodes
maybe-clean-opcodes:
maybe-clean-opcodes: clean-opcodes

clean-opcodes: 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-opcodes distclean-opcodes
maybe-distclean-opcodes:
maybe-distclean-opcodes: distclean-opcodes

distclean-opcodes: 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-opcodes maintainer-clean-opcodes
maybe-maintainer-clean-opcodes:
maybe-maintainer-clean-opcodes: maintainer-clean-opcodes

maintainer-clean-opcodes: 
	@[ -f ./opcodes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in opcodes"; \
	(cd $(HOST_SUBDIR)/opcodes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-binutils maybe-configure-binutils
maybe-configure-binutils:
maybe-configure-binutils: configure-binutils
configure-binutils: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/binutils/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/binutils; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/binutils; \
	cd "$(HOST_SUBDIR)/binutils" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/binutils/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=binutils; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-binutils maybe-configure-stage1-binutils
maybe-configure-stage1-binutils:

.PHONY: configure-stage2-binutils maybe-configure-stage2-binutils
maybe-configure-stage2-binutils:

.PHONY: configure-stage3-binutils maybe-configure-stage3-binutils
maybe-configure-stage3-binutils:

.PHONY: configure-stage4-binutils maybe-configure-stage4-binutils
maybe-configure-stage4-binutils:

.PHONY: configure-stageprofile-binutils maybe-configure-stageprofile-binutils
maybe-configure-stageprofile-binutils:

.PHONY: configure-stagetrain-binutils maybe-configure-stagetrain-binutils
maybe-configure-stagetrain-binutils:

.PHONY: configure-stagefeedback-binutils maybe-configure-stagefeedback-binutils
maybe-configure-stagefeedback-binutils:

.PHONY: configure-stageautoprofile-binutils maybe-configure-stageautoprofile-binutils
maybe-configure-stageautoprofile-binutils:

.PHONY: configure-stageautofeedback-binutils maybe-configure-stageautofeedback-binutils
maybe-configure-stageautofeedback-binutils:





.PHONY: all-binutils maybe-all-binutils
maybe-all-binutils:
TARGET-binutils=all
maybe-all-binutils: all-binutils
all-binutils: configure-binutils
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-binutils))



.PHONY: all-stage1-binutils maybe-all-stage1-binutils
.PHONY: clean-stage1-binutils maybe-clean-stage1-binutils
maybe-all-stage1-binutils:
maybe-clean-stage1-binutils:


.PHONY: all-stage2-binutils maybe-all-stage2-binutils
.PHONY: clean-stage2-binutils maybe-clean-stage2-binutils
maybe-all-stage2-binutils:
maybe-clean-stage2-binutils:


.PHONY: all-stage3-binutils maybe-all-stage3-binutils
.PHONY: clean-stage3-binutils maybe-clean-stage3-binutils
maybe-all-stage3-binutils:
maybe-clean-stage3-binutils:


.PHONY: all-stage4-binutils maybe-all-stage4-binutils
.PHONY: clean-stage4-binutils maybe-clean-stage4-binutils
maybe-all-stage4-binutils:
maybe-clean-stage4-binutils:


.PHONY: all-stageprofile-binutils maybe-all-stageprofile-binutils
.PHONY: clean-stageprofile-binutils maybe-clean-stageprofile-binutils
maybe-all-stageprofile-binutils:
maybe-clean-stageprofile-binutils:


.PHONY: all-stagetrain-binutils maybe-all-stagetrain-binutils
.PHONY: clean-stagetrain-binutils maybe-clean-stagetrain-binutils
maybe-all-stagetrain-binutils:
maybe-clean-stagetrain-binutils:


.PHONY: all-stagefeedback-binutils maybe-all-stagefeedback-binutils
.PHONY: clean-stagefeedback-binutils maybe-clean-stagefeedback-binutils
maybe-all-stagefeedback-binutils:
maybe-clean-stagefeedback-binutils:


.PHONY: all-stageautoprofile-binutils maybe-all-stageautoprofile-binutils
.PHONY: clean-stageautoprofile-binutils maybe-clean-stageautoprofile-binutils
maybe-all-stageautoprofile-binutils:
maybe-clean-stageautoprofile-binutils:


.PHONY: all-stageautofeedback-binutils maybe-all-stageautofeedback-binutils
.PHONY: clean-stageautofeedback-binutils maybe-clean-stageautofeedback-binutils
maybe-all-stageautofeedback-binutils:
maybe-clean-stageautofeedback-binutils:





.PHONY: check-binutils maybe-check-binutils
maybe-check-binutils:
maybe-check-binutils: check-binutils

check-binutils:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-binutils maybe-install-binutils
maybe-install-binutils:
maybe-install-binutils: install-binutils

install-binutils: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-binutils maybe-install-strip-binutils
maybe-install-strip-binutils:
maybe-install-strip-binutils: install-strip-binutils

install-strip-binutils: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-binutils info-binutils
maybe-info-binutils:
maybe-info-binutils: info-binutils

info-binutils: \
    configure-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-binutils dvi-binutils
maybe-dvi-binutils:
maybe-dvi-binutils: dvi-binutils

dvi-binutils: \
    configure-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-binutils pdf-binutils
maybe-pdf-binutils:
maybe-pdf-binutils: pdf-binutils

pdf-binutils: \
    configure-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-binutils html-binutils
maybe-html-binutils:
maybe-html-binutils: html-binutils

html-binutils: \
    configure-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-binutils TAGS-binutils
maybe-TAGS-binutils:
maybe-TAGS-binutils: TAGS-binutils

TAGS-binutils: \
    configure-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-binutils install-info-binutils
maybe-install-info-binutils:
maybe-install-info-binutils: install-info-binutils

install-info-binutils: \
    configure-binutils \
    info-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-binutils install-dvi-binutils
maybe-install-dvi-binutils:
maybe-install-dvi-binutils: install-dvi-binutils

install-dvi-binutils: \
    configure-binutils \
    dvi-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-binutils install-pdf-binutils
maybe-install-pdf-binutils:
maybe-install-pdf-binutils: install-pdf-binutils

install-pdf-binutils: \
    configure-binutils \
    pdf-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-binutils install-html-binutils
maybe-install-html-binutils:
maybe-install-html-binutils: install-html-binutils

install-html-binutils: \
    configure-binutils \
    html-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-binutils installcheck-binutils
maybe-installcheck-binutils:
maybe-installcheck-binutils: installcheck-binutils

installcheck-binutils: \
    configure-binutils 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-binutils mostlyclean-binutils
maybe-mostlyclean-binutils:
maybe-mostlyclean-binutils: mostlyclean-binutils

mostlyclean-binutils: 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-binutils clean-binutils
maybe-clean-binutils:
maybe-clean-binutils: clean-binutils

clean-binutils: 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-binutils distclean-binutils
maybe-distclean-binutils:
maybe-distclean-binutils: distclean-binutils

distclean-binutils: 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-binutils maintainer-clean-binutils
maybe-maintainer-clean-binutils:
maybe-maintainer-clean-binutils: maintainer-clean-binutils

maintainer-clean-binutils: 
	@[ -f ./binutils/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in binutils"; \
	(cd $(HOST_SUBDIR)/binutils && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-bison maybe-configure-bison
maybe-configure-bison:





.PHONY: all-bison maybe-all-bison
maybe-all-bison:




.PHONY: check-bison maybe-check-bison
maybe-check-bison:

.PHONY: install-bison maybe-install-bison
maybe-install-bison:

.PHONY: install-strip-bison maybe-install-strip-bison
maybe-install-strip-bison:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-bison info-bison
maybe-info-bison:

.PHONY: maybe-dvi-bison dvi-bison
maybe-dvi-bison:

.PHONY: maybe-pdf-bison pdf-bison
maybe-pdf-bison:

.PHONY: maybe-html-bison html-bison
maybe-html-bison:

.PHONY: maybe-TAGS-bison TAGS-bison
maybe-TAGS-bison:

.PHONY: maybe-install-info-bison install-info-bison
maybe-install-info-bison:

.PHONY: maybe-install-dvi-bison install-dvi-bison
maybe-install-dvi-bison:

.PHONY: maybe-install-pdf-bison install-pdf-bison
maybe-install-pdf-bison:

.PHONY: maybe-install-html-bison install-html-bison
maybe-install-html-bison:

.PHONY: maybe-installcheck-bison installcheck-bison
maybe-installcheck-bison:

.PHONY: maybe-mostlyclean-bison mostlyclean-bison
maybe-mostlyclean-bison:

.PHONY: maybe-clean-bison clean-bison
maybe-clean-bison:

.PHONY: maybe-distclean-bison distclean-bison
maybe-distclean-bison:

.PHONY: maybe-maintainer-clean-bison maintainer-clean-bison
maybe-maintainer-clean-bison:



.PHONY: configure-cgen maybe-configure-cgen
maybe-configure-cgen:





.PHONY: all-cgen maybe-all-cgen
maybe-all-cgen:




.PHONY: check-cgen maybe-check-cgen
maybe-check-cgen:

.PHONY: install-cgen maybe-install-cgen
maybe-install-cgen:

.PHONY: install-strip-cgen maybe-install-strip-cgen
maybe-install-strip-cgen:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-cgen info-cgen
maybe-info-cgen:

.PHONY: maybe-dvi-cgen dvi-cgen
maybe-dvi-cgen:

.PHONY: maybe-pdf-cgen pdf-cgen
maybe-pdf-cgen:

.PHONY: maybe-html-cgen html-cgen
maybe-html-cgen:

.PHONY: maybe-TAGS-cgen TAGS-cgen
maybe-TAGS-cgen:

.PHONY: maybe-install-info-cgen install-info-cgen
maybe-install-info-cgen:

.PHONY: maybe-install-dvi-cgen install-dvi-cgen
maybe-install-dvi-cgen:

.PHONY: maybe-install-pdf-cgen install-pdf-cgen
maybe-install-pdf-cgen:

.PHONY: maybe-install-html-cgen install-html-cgen
maybe-install-html-cgen:

.PHONY: maybe-installcheck-cgen installcheck-cgen
maybe-installcheck-cgen:

.PHONY: maybe-mostlyclean-cgen mostlyclean-cgen
maybe-mostlyclean-cgen:

.PHONY: maybe-clean-cgen clean-cgen
maybe-clean-cgen:

.PHONY: maybe-distclean-cgen distclean-cgen
maybe-distclean-cgen:

.PHONY: maybe-maintainer-clean-cgen maintainer-clean-cgen
maybe-maintainer-clean-cgen:



.PHONY: configure-dejagnu maybe-configure-dejagnu
maybe-configure-dejagnu:





.PHONY: all-dejagnu maybe-all-dejagnu
maybe-all-dejagnu:




.PHONY: check-dejagnu maybe-check-dejagnu
maybe-check-dejagnu:

.PHONY: install-dejagnu maybe-install-dejagnu
maybe-install-dejagnu:

.PHONY: install-strip-dejagnu maybe-install-strip-dejagnu
maybe-install-strip-dejagnu:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-dejagnu info-dejagnu
maybe-info-dejagnu:

.PHONY: maybe-dvi-dejagnu dvi-dejagnu
maybe-dvi-dejagnu:

.PHONY: maybe-pdf-dejagnu pdf-dejagnu
maybe-pdf-dejagnu:

.PHONY: maybe-html-dejagnu html-dejagnu
maybe-html-dejagnu:

.PHONY: maybe-TAGS-dejagnu TAGS-dejagnu
maybe-TAGS-dejagnu:

.PHONY: maybe-install-info-dejagnu install-info-dejagnu
maybe-install-info-dejagnu:

.PHONY: maybe-install-dvi-dejagnu install-dvi-dejagnu
maybe-install-dvi-dejagnu:

.PHONY: maybe-install-pdf-dejagnu install-pdf-dejagnu
maybe-install-pdf-dejagnu:

.PHONY: maybe-install-html-dejagnu install-html-dejagnu
maybe-install-html-dejagnu:

.PHONY: maybe-installcheck-dejagnu installcheck-dejagnu
maybe-installcheck-dejagnu:

.PHONY: maybe-mostlyclean-dejagnu mostlyclean-dejagnu
maybe-mostlyclean-dejagnu:

.PHONY: maybe-clean-dejagnu clean-dejagnu
maybe-clean-dejagnu:

.PHONY: maybe-distclean-dejagnu distclean-dejagnu
maybe-distclean-dejagnu:

.PHONY: maybe-maintainer-clean-dejagnu maintainer-clean-dejagnu
maybe-maintainer-clean-dejagnu:



.PHONY: configure-etc maybe-configure-etc
maybe-configure-etc:
maybe-configure-etc: configure-etc
configure-etc: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/etc/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/etc; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/etc; \
	cd "$(HOST_SUBDIR)/etc" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/etc/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=etc; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-etc maybe-all-etc
maybe-all-etc:
TARGET-etc=all
maybe-all-etc: all-etc
all-etc: configure-etc
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-etc))




.PHONY: check-etc maybe-check-etc
maybe-check-etc:
maybe-check-etc: check-etc

check-etc:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(FLAGS_TO_PASS)  check)


.PHONY: install-etc maybe-install-etc
maybe-install-etc:
maybe-install-etc: install-etc

install-etc: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-etc maybe-install-strip-etc
maybe-install-strip-etc:
maybe-install-strip-etc: install-strip-etc

install-strip-etc: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-etc info-etc
maybe-info-etc:
maybe-info-etc: info-etc

info-etc: \
    configure-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-etc dvi-etc
maybe-dvi-etc:
maybe-dvi-etc: dvi-etc

dvi-etc: \
    configure-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-etc pdf-etc
maybe-pdf-etc:
maybe-pdf-etc: pdf-etc

pdf-etc: \
    configure-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-etc html-etc
maybe-html-etc:
maybe-html-etc: html-etc

html-etc: \
    configure-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-etc TAGS-etc
maybe-TAGS-etc:
maybe-TAGS-etc: TAGS-etc

TAGS-etc: \
    configure-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-etc install-info-etc
maybe-install-info-etc:
maybe-install-info-etc: install-info-etc

install-info-etc: \
    configure-etc \
    info-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-etc install-dvi-etc
maybe-install-dvi-etc:
maybe-install-dvi-etc: install-dvi-etc

install-dvi-etc: \
    configure-etc \
    dvi-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-etc install-pdf-etc
maybe-install-pdf-etc:
maybe-install-pdf-etc: install-pdf-etc

install-pdf-etc: \
    configure-etc \
    pdf-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-etc install-html-etc
maybe-install-html-etc:
maybe-install-html-etc: install-html-etc

install-html-etc: \
    configure-etc \
    html-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-etc installcheck-etc
maybe-installcheck-etc:
maybe-installcheck-etc: installcheck-etc

installcheck-etc: \
    configure-etc 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-etc mostlyclean-etc
maybe-mostlyclean-etc:
maybe-mostlyclean-etc: mostlyclean-etc

mostlyclean-etc: 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-etc clean-etc
maybe-clean-etc:
maybe-clean-etc: clean-etc

clean-etc: 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-etc distclean-etc
maybe-distclean-etc:
maybe-distclean-etc: distclean-etc

distclean-etc: 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-etc maintainer-clean-etc
maybe-maintainer-clean-etc:
maybe-maintainer-clean-etc: maintainer-clean-etc

maintainer-clean-etc: 
	@: $(MAKE); $(unstage)
	@[ -f ./etc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in etc"; \
	(cd $(HOST_SUBDIR)/etc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-fastjar maybe-configure-fastjar
maybe-configure-fastjar:





.PHONY: all-fastjar maybe-all-fastjar
maybe-all-fastjar:




.PHONY: check-fastjar maybe-check-fastjar
maybe-check-fastjar:

.PHONY: install-fastjar maybe-install-fastjar
maybe-install-fastjar:

.PHONY: install-strip-fastjar maybe-install-strip-fastjar
maybe-install-strip-fastjar:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-fastjar info-fastjar
maybe-info-fastjar:

.PHONY: maybe-dvi-fastjar dvi-fastjar
maybe-dvi-fastjar:

.PHONY: maybe-pdf-fastjar pdf-fastjar
maybe-pdf-fastjar:

.PHONY: maybe-html-fastjar html-fastjar
maybe-html-fastjar:

.PHONY: maybe-TAGS-fastjar TAGS-fastjar
maybe-TAGS-fastjar:

.PHONY: maybe-install-info-fastjar install-info-fastjar
maybe-install-info-fastjar:

.PHONY: maybe-install-dvi-fastjar install-dvi-fastjar
maybe-install-dvi-fastjar:

.PHONY: maybe-install-pdf-fastjar install-pdf-fastjar
maybe-install-pdf-fastjar:

.PHONY: maybe-install-html-fastjar install-html-fastjar
maybe-install-html-fastjar:

.PHONY: maybe-installcheck-fastjar installcheck-fastjar
maybe-installcheck-fastjar:

.PHONY: maybe-mostlyclean-fastjar mostlyclean-fastjar
maybe-mostlyclean-fastjar:

.PHONY: maybe-clean-fastjar clean-fastjar
maybe-clean-fastjar:

.PHONY: maybe-distclean-fastjar distclean-fastjar
maybe-distclean-fastjar:

.PHONY: maybe-maintainer-clean-fastjar maintainer-clean-fastjar
maybe-maintainer-clean-fastjar:



.PHONY: configure-fixincludes maybe-configure-fixincludes
maybe-configure-fixincludes:
maybe-configure-fixincludes: configure-fixincludes
configure-fixincludes: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/fixincludes/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/fixincludes; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/fixincludes; \
	cd "$(HOST_SUBDIR)/fixincludes" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/fixincludes/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=fixincludes; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-fixincludes maybe-configure-stage1-fixincludes
maybe-configure-stage1-fixincludes:

.PHONY: configure-stage2-fixincludes maybe-configure-stage2-fixincludes
maybe-configure-stage2-fixincludes:

.PHONY: configure-stage3-fixincludes maybe-configure-stage3-fixincludes
maybe-configure-stage3-fixincludes:

.PHONY: configure-stage4-fixincludes maybe-configure-stage4-fixincludes
maybe-configure-stage4-fixincludes:

.PHONY: configure-stageprofile-fixincludes maybe-configure-stageprofile-fixincludes
maybe-configure-stageprofile-fixincludes:

.PHONY: configure-stagetrain-fixincludes maybe-configure-stagetrain-fixincludes
maybe-configure-stagetrain-fixincludes:

.PHONY: configure-stagefeedback-fixincludes maybe-configure-stagefeedback-fixincludes
maybe-configure-stagefeedback-fixincludes:

.PHONY: configure-stageautoprofile-fixincludes maybe-configure-stageautoprofile-fixincludes
maybe-configure-stageautoprofile-fixincludes:

.PHONY: configure-stageautofeedback-fixincludes maybe-configure-stageautofeedback-fixincludes
maybe-configure-stageautofeedback-fixincludes:





.PHONY: all-fixincludes maybe-all-fixincludes
maybe-all-fixincludes:
TARGET-fixincludes=all
maybe-all-fixincludes: all-fixincludes
all-fixincludes: configure-fixincludes
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-fixincludes))



.PHONY: all-stage1-fixincludes maybe-all-stage1-fixincludes
.PHONY: clean-stage1-fixincludes maybe-clean-stage1-fixincludes
maybe-all-stage1-fixincludes:
maybe-clean-stage1-fixincludes:


.PHONY: all-stage2-fixincludes maybe-all-stage2-fixincludes
.PHONY: clean-stage2-fixincludes maybe-clean-stage2-fixincludes
maybe-all-stage2-fixincludes:
maybe-clean-stage2-fixincludes:


.PHONY: all-stage3-fixincludes maybe-all-stage3-fixincludes
.PHONY: clean-stage3-fixincludes maybe-clean-stage3-fixincludes
maybe-all-stage3-fixincludes:
maybe-clean-stage3-fixincludes:


.PHONY: all-stage4-fixincludes maybe-all-stage4-fixincludes
.PHONY: clean-stage4-fixincludes maybe-clean-stage4-fixincludes
maybe-all-stage4-fixincludes:
maybe-clean-stage4-fixincludes:


.PHONY: all-stageprofile-fixincludes maybe-all-stageprofile-fixincludes
.PHONY: clean-stageprofile-fixincludes maybe-clean-stageprofile-fixincludes
maybe-all-stageprofile-fixincludes:
maybe-clean-stageprofile-fixincludes:


.PHONY: all-stagetrain-fixincludes maybe-all-stagetrain-fixincludes
.PHONY: clean-stagetrain-fixincludes maybe-clean-stagetrain-fixincludes
maybe-all-stagetrain-fixincludes:
maybe-clean-stagetrain-fixincludes:


.PHONY: all-stagefeedback-fixincludes maybe-all-stagefeedback-fixincludes
.PHONY: clean-stagefeedback-fixincludes maybe-clean-stagefeedback-fixincludes
maybe-all-stagefeedback-fixincludes:
maybe-clean-stagefeedback-fixincludes:


.PHONY: all-stageautoprofile-fixincludes maybe-all-stageautoprofile-fixincludes
.PHONY: clean-stageautoprofile-fixincludes maybe-clean-stageautoprofile-fixincludes
maybe-all-stageautoprofile-fixincludes:
maybe-clean-stageautoprofile-fixincludes:


.PHONY: all-stageautofeedback-fixincludes maybe-all-stageautofeedback-fixincludes
.PHONY: clean-stageautofeedback-fixincludes maybe-clean-stageautofeedback-fixincludes
maybe-all-stageautofeedback-fixincludes:
maybe-clean-stageautofeedback-fixincludes:





.PHONY: check-fixincludes maybe-check-fixincludes
maybe-check-fixincludes:
maybe-check-fixincludes: check-fixincludes

check-fixincludes:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-fixincludes maybe-install-fixincludes
maybe-install-fixincludes:
maybe-install-fixincludes: install-fixincludes

install-fixincludes: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-fixincludes maybe-install-strip-fixincludes
maybe-install-strip-fixincludes:
maybe-install-strip-fixincludes: install-strip-fixincludes

install-strip-fixincludes: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-fixincludes info-fixincludes
maybe-info-fixincludes:
maybe-info-fixincludes: info-fixincludes

info-fixincludes: \
    configure-fixincludes 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-fixincludes dvi-fixincludes
maybe-dvi-fixincludes:
maybe-dvi-fixincludes: dvi-fixincludes

dvi-fixincludes: \
    configure-fixincludes 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-fixincludes pdf-fixincludes
maybe-pdf-fixincludes:
maybe-pdf-fixincludes: pdf-fixincludes

pdf-fixincludes: \
    configure-fixincludes 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-fixincludes html-fixincludes
maybe-html-fixincludes:
maybe-html-fixincludes: html-fixincludes

html-fixincludes: \
    configure-fixincludes 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-fixincludes TAGS-fixincludes
maybe-TAGS-fixincludes:
maybe-TAGS-fixincludes: TAGS-fixincludes

# fixincludes doesn't support TAGS.
TAGS-fixincludes:


.PHONY: maybe-install-info-fixincludes install-info-fixincludes
maybe-install-info-fixincludes:
maybe-install-info-fixincludes: install-info-fixincludes

install-info-fixincludes: \
    configure-fixincludes \
    info-fixincludes 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-fixincludes install-dvi-fixincludes
maybe-install-dvi-fixincludes:
maybe-install-dvi-fixincludes: install-dvi-fixincludes

# fixincludes doesn't support install-dvi.
install-dvi-fixincludes:


.PHONY: maybe-install-pdf-fixincludes install-pdf-fixincludes
maybe-install-pdf-fixincludes:
maybe-install-pdf-fixincludes: install-pdf-fixincludes

install-pdf-fixincludes: \
    configure-fixincludes \
    pdf-fixincludes 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-fixincludes install-html-fixincludes
maybe-install-html-fixincludes:
maybe-install-html-fixincludes: install-html-fixincludes

install-html-fixincludes: \
    configure-fixincludes \
    html-fixincludes 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-fixincludes installcheck-fixincludes
maybe-installcheck-fixincludes:
maybe-installcheck-fixincludes: installcheck-fixincludes

installcheck-fixincludes: \
    configure-fixincludes 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-fixincludes mostlyclean-fixincludes
maybe-mostlyclean-fixincludes:
maybe-mostlyclean-fixincludes: mostlyclean-fixincludes

mostlyclean-fixincludes: 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-fixincludes clean-fixincludes
maybe-clean-fixincludes:
maybe-clean-fixincludes: clean-fixincludes

clean-fixincludes: 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-fixincludes distclean-fixincludes
maybe-distclean-fixincludes:
maybe-distclean-fixincludes: distclean-fixincludes

distclean-fixincludes: 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-fixincludes maintainer-clean-fixincludes
maybe-maintainer-clean-fixincludes:
maybe-maintainer-clean-fixincludes: maintainer-clean-fixincludes

maintainer-clean-fixincludes: 
	@[ -f ./fixincludes/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in fixincludes"; \
	(cd $(HOST_SUBDIR)/fixincludes && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-flex maybe-configure-flex
maybe-configure-flex:





.PHONY: all-flex maybe-all-flex
maybe-all-flex:




.PHONY: check-flex maybe-check-flex
maybe-check-flex:

.PHONY: install-flex maybe-install-flex
maybe-install-flex:

.PHONY: install-strip-flex maybe-install-strip-flex
maybe-install-strip-flex:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-flex info-flex
maybe-info-flex:

.PHONY: maybe-dvi-flex dvi-flex
maybe-dvi-flex:

.PHONY: maybe-pdf-flex pdf-flex
maybe-pdf-flex:

.PHONY: maybe-html-flex html-flex
maybe-html-flex:

.PHONY: maybe-TAGS-flex TAGS-flex
maybe-TAGS-flex:

.PHONY: maybe-install-info-flex install-info-flex
maybe-install-info-flex:

.PHONY: maybe-install-dvi-flex install-dvi-flex
maybe-install-dvi-flex:

.PHONY: maybe-install-pdf-flex install-pdf-flex
maybe-install-pdf-flex:

.PHONY: maybe-install-html-flex install-html-flex
maybe-install-html-flex:

.PHONY: maybe-installcheck-flex installcheck-flex
maybe-installcheck-flex:

.PHONY: maybe-mostlyclean-flex mostlyclean-flex
maybe-mostlyclean-flex:

.PHONY: maybe-clean-flex clean-flex
maybe-clean-flex:

.PHONY: maybe-distclean-flex distclean-flex
maybe-distclean-flex:

.PHONY: maybe-maintainer-clean-flex maintainer-clean-flex
maybe-maintainer-clean-flex:



.PHONY: configure-gas maybe-configure-gas
maybe-configure-gas:
maybe-configure-gas: configure-gas
configure-gas: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/gas/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/gas; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/gas; \
	cd "$(HOST_SUBDIR)/gas" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/gas/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=gas; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-gas maybe-configure-stage1-gas
maybe-configure-stage1-gas:

.PHONY: configure-stage2-gas maybe-configure-stage2-gas
maybe-configure-stage2-gas:

.PHONY: configure-stage3-gas maybe-configure-stage3-gas
maybe-configure-stage3-gas:

.PHONY: configure-stage4-gas maybe-configure-stage4-gas
maybe-configure-stage4-gas:

.PHONY: configure-stageprofile-gas maybe-configure-stageprofile-gas
maybe-configure-stageprofile-gas:

.PHONY: configure-stagetrain-gas maybe-configure-stagetrain-gas
maybe-configure-stagetrain-gas:

.PHONY: configure-stagefeedback-gas maybe-configure-stagefeedback-gas
maybe-configure-stagefeedback-gas:

.PHONY: configure-stageautoprofile-gas maybe-configure-stageautoprofile-gas
maybe-configure-stageautoprofile-gas:

.PHONY: configure-stageautofeedback-gas maybe-configure-stageautofeedback-gas
maybe-configure-stageautofeedback-gas:





.PHONY: all-gas maybe-all-gas
maybe-all-gas:
TARGET-gas=all
maybe-all-gas: all-gas
all-gas: configure-gas
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-gas))



.PHONY: all-stage1-gas maybe-all-stage1-gas
.PHONY: clean-stage1-gas maybe-clean-stage1-gas
maybe-all-stage1-gas:
maybe-clean-stage1-gas:


.PHONY: all-stage2-gas maybe-all-stage2-gas
.PHONY: clean-stage2-gas maybe-clean-stage2-gas
maybe-all-stage2-gas:
maybe-clean-stage2-gas:


.PHONY: all-stage3-gas maybe-all-stage3-gas
.PHONY: clean-stage3-gas maybe-clean-stage3-gas
maybe-all-stage3-gas:
maybe-clean-stage3-gas:


.PHONY: all-stage4-gas maybe-all-stage4-gas
.PHONY: clean-stage4-gas maybe-clean-stage4-gas
maybe-all-stage4-gas:
maybe-clean-stage4-gas:


.PHONY: all-stageprofile-gas maybe-all-stageprofile-gas
.PHONY: clean-stageprofile-gas maybe-clean-stageprofile-gas
maybe-all-stageprofile-gas:
maybe-clean-stageprofile-gas:


.PHONY: all-stagetrain-gas maybe-all-stagetrain-gas
.PHONY: clean-stagetrain-gas maybe-clean-stagetrain-gas
maybe-all-stagetrain-gas:
maybe-clean-stagetrain-gas:


.PHONY: all-stagefeedback-gas maybe-all-stagefeedback-gas
.PHONY: clean-stagefeedback-gas maybe-clean-stagefeedback-gas
maybe-all-stagefeedback-gas:
maybe-clean-stagefeedback-gas:


.PHONY: all-stageautoprofile-gas maybe-all-stageautoprofile-gas
.PHONY: clean-stageautoprofile-gas maybe-clean-stageautoprofile-gas
maybe-all-stageautoprofile-gas:
maybe-clean-stageautoprofile-gas:


.PHONY: all-stageautofeedback-gas maybe-all-stageautofeedback-gas
.PHONY: clean-stageautofeedback-gas maybe-clean-stageautofeedback-gas
maybe-all-stageautofeedback-gas:
maybe-clean-stageautofeedback-gas:





.PHONY: check-gas maybe-check-gas
maybe-check-gas:
maybe-check-gas: check-gas

check-gas:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-gas maybe-install-gas
maybe-install-gas:
maybe-install-gas: install-gas

install-gas: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-gas maybe-install-strip-gas
maybe-install-strip-gas:
maybe-install-strip-gas: install-strip-gas

install-strip-gas: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gas info-gas
maybe-info-gas:
maybe-info-gas: info-gas

info-gas: \
    configure-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-gas dvi-gas
maybe-dvi-gas:
maybe-dvi-gas: dvi-gas

dvi-gas: \
    configure-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-gas pdf-gas
maybe-pdf-gas:
maybe-pdf-gas: pdf-gas

pdf-gas: \
    configure-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-gas html-gas
maybe-html-gas:
maybe-html-gas: html-gas

html-gas: \
    configure-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-gas TAGS-gas
maybe-TAGS-gas:
maybe-TAGS-gas: TAGS-gas

TAGS-gas: \
    configure-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-gas install-info-gas
maybe-install-info-gas:
maybe-install-info-gas: install-info-gas

install-info-gas: \
    configure-gas \
    info-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-gas install-dvi-gas
maybe-install-dvi-gas:
maybe-install-dvi-gas: install-dvi-gas

install-dvi-gas: \
    configure-gas \
    dvi-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-gas install-pdf-gas
maybe-install-pdf-gas:
maybe-install-pdf-gas: install-pdf-gas

install-pdf-gas: \
    configure-gas \
    pdf-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-gas install-html-gas
maybe-install-html-gas:
maybe-install-html-gas: install-html-gas

install-html-gas: \
    configure-gas \
    html-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-gas installcheck-gas
maybe-installcheck-gas:
maybe-installcheck-gas: installcheck-gas

installcheck-gas: \
    configure-gas 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-gas mostlyclean-gas
maybe-mostlyclean-gas:
maybe-mostlyclean-gas: mostlyclean-gas

mostlyclean-gas: 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-gas clean-gas
maybe-clean-gas:
maybe-clean-gas: clean-gas

clean-gas: 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-gas distclean-gas
maybe-distclean-gas:
maybe-distclean-gas: distclean-gas

distclean-gas: 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-gas maintainer-clean-gas
maybe-maintainer-clean-gas:
maybe-maintainer-clean-gas: maintainer-clean-gas

maintainer-clean-gas: 
	@[ -f ./gas/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in gas"; \
	(cd $(HOST_SUBDIR)/gas && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-gcc maybe-configure-gcc
maybe-configure-gcc:
maybe-configure-gcc: configure-gcc
configure-gcc: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/gcc/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/gcc; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/gcc; \
	cd "$(HOST_SUBDIR)/gcc" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/gcc/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=gcc; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-gcc maybe-configure-stage1-gcc
maybe-configure-stage1-gcc:

.PHONY: configure-stage2-gcc maybe-configure-stage2-gcc
maybe-configure-stage2-gcc:

.PHONY: configure-stage3-gcc maybe-configure-stage3-gcc
maybe-configure-stage3-gcc:

.PHONY: configure-stage4-gcc maybe-configure-stage4-gcc
maybe-configure-stage4-gcc:

.PHONY: configure-stageprofile-gcc maybe-configure-stageprofile-gcc
maybe-configure-stageprofile-gcc:

.PHONY: configure-stagetrain-gcc maybe-configure-stagetrain-gcc
maybe-configure-stagetrain-gcc:

.PHONY: configure-stagefeedback-gcc maybe-configure-stagefeedback-gcc
maybe-configure-stagefeedback-gcc:

.PHONY: configure-stageautoprofile-gcc maybe-configure-stageautoprofile-gcc
maybe-configure-stageautoprofile-gcc:

.PHONY: configure-stageautofeedback-gcc maybe-configure-stageautofeedback-gcc
maybe-configure-stageautofeedback-gcc:





.PHONY: all-gcc maybe-all-gcc
maybe-all-gcc:
TARGET-gcc=all
maybe-all-gcc: all-gcc
all-gcc: configure-gcc
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS) $(EXTRA_GCC_FLAGS) \
		$(TARGET-gcc))



.PHONY: all-stage1-gcc maybe-all-stage1-gcc
.PHONY: clean-stage1-gcc maybe-clean-stage1-gcc
maybe-all-stage1-gcc:
maybe-clean-stage1-gcc:


.PHONY: all-stage2-gcc maybe-all-stage2-gcc
.PHONY: clean-stage2-gcc maybe-clean-stage2-gcc
maybe-all-stage2-gcc:
maybe-clean-stage2-gcc:


.PHONY: all-stage3-gcc maybe-all-stage3-gcc
.PHONY: clean-stage3-gcc maybe-clean-stage3-gcc
maybe-all-stage3-gcc:
maybe-clean-stage3-gcc:


.PHONY: all-stage4-gcc maybe-all-stage4-gcc
.PHONY: clean-stage4-gcc maybe-clean-stage4-gcc
maybe-all-stage4-gcc:
maybe-clean-stage4-gcc:


.PHONY: all-stageprofile-gcc maybe-all-stageprofile-gcc
.PHONY: clean-stageprofile-gcc maybe-clean-stageprofile-gcc
maybe-all-stageprofile-gcc:
maybe-clean-stageprofile-gcc:


.PHONY: all-stagetrain-gcc maybe-all-stagetrain-gcc
.PHONY: clean-stagetrain-gcc maybe-clean-stagetrain-gcc
maybe-all-stagetrain-gcc:
maybe-clean-stagetrain-gcc:


.PHONY: all-stagefeedback-gcc maybe-all-stagefeedback-gcc
.PHONY: clean-stagefeedback-gcc maybe-clean-stagefeedback-gcc
maybe-all-stagefeedback-gcc:
maybe-clean-stagefeedback-gcc:


.PHONY: all-stageautoprofile-gcc maybe-all-stageautoprofile-gcc
.PHONY: clean-stageautoprofile-gcc maybe-clean-stageautoprofile-gcc
maybe-all-stageautoprofile-gcc:
maybe-clean-stageautoprofile-gcc:


.PHONY: all-stageautofeedback-gcc maybe-all-stageautofeedback-gcc
.PHONY: clean-stageautofeedback-gcc maybe-clean-stageautofeedback-gcc
maybe-all-stageautofeedback-gcc:
maybe-clean-stageautofeedback-gcc:





.PHONY: check-gcc maybe-check-gcc
maybe-check-gcc:
maybe-check-gcc: check-gcc

check-gcc:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(FLAGS_TO_PASS) $(EXTRA_GCC_FLAGS) $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-gcc maybe-install-gcc
maybe-install-gcc:
maybe-install-gcc: install-gcc

install-gcc: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(FLAGS_TO_PASS) $(EXTRA_GCC_FLAGS) install)


.PHONY: install-strip-gcc maybe-install-strip-gcc
maybe-install-strip-gcc:
maybe-install-strip-gcc: install-strip-gcc

install-strip-gcc: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(FLAGS_TO_PASS) $(EXTRA_GCC_FLAGS) install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gcc info-gcc
maybe-info-gcc:
maybe-info-gcc: info-gcc

info-gcc: \
    configure-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-gcc dvi-gcc
maybe-dvi-gcc:
maybe-dvi-gcc: dvi-gcc

dvi-gcc: \
    configure-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-gcc pdf-gcc
maybe-pdf-gcc:
maybe-pdf-gcc: pdf-gcc

pdf-gcc: \
    configure-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-gcc html-gcc
maybe-html-gcc:
maybe-html-gcc: html-gcc

html-gcc: \
    configure-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-gcc TAGS-gcc
maybe-TAGS-gcc:
maybe-TAGS-gcc: TAGS-gcc

TAGS-gcc: \
    configure-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-gcc install-info-gcc
maybe-install-info-gcc:
maybe-install-info-gcc: install-info-gcc

install-info-gcc: \
    configure-gcc \
    info-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-gcc install-dvi-gcc
maybe-install-dvi-gcc:
maybe-install-dvi-gcc: install-dvi-gcc

install-dvi-gcc: \
    configure-gcc \
    dvi-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-gcc install-pdf-gcc
maybe-install-pdf-gcc:
maybe-install-pdf-gcc: install-pdf-gcc

install-pdf-gcc: \
    configure-gcc \
    pdf-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-gcc install-html-gcc
maybe-install-html-gcc:
maybe-install-html-gcc: install-html-gcc

install-html-gcc: \
    configure-gcc \
    html-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-gcc installcheck-gcc
maybe-installcheck-gcc:
maybe-installcheck-gcc: installcheck-gcc

installcheck-gcc: \
    configure-gcc 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-gcc mostlyclean-gcc
maybe-mostlyclean-gcc:
maybe-mostlyclean-gcc: mostlyclean-gcc

mostlyclean-gcc: 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-gcc clean-gcc
maybe-clean-gcc:
maybe-clean-gcc: clean-gcc

clean-gcc: 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-gcc distclean-gcc
maybe-distclean-gcc:
maybe-distclean-gcc: distclean-gcc

distclean-gcc: 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-gcc maintainer-clean-gcc
maybe-maintainer-clean-gcc:
maybe-maintainer-clean-gcc: maintainer-clean-gcc

maintainer-clean-gcc: 
	@[ -f ./gcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) $(EXTRA_GCC_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in gcc"; \
	(cd $(HOST_SUBDIR)/gcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-gmp maybe-configure-gmp
maybe-configure-gmp:
maybe-configure-gmp: configure-gmp
configure-gmp: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/gmp/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/gmp; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/gmp; \
	cd "$(HOST_SUBDIR)/gmp" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/gmp/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=gmp; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=none-${host_vendor}-${host_os} \
	  --target=none-${host_vendor}-${host_os} --disable-shared LEX="touch lex.yy.c" \
	  || exit 1



.PHONY: configure-stage1-gmp maybe-configure-stage1-gmp
maybe-configure-stage1-gmp:

.PHONY: configure-stage2-gmp maybe-configure-stage2-gmp
maybe-configure-stage2-gmp:

.PHONY: configure-stage3-gmp maybe-configure-stage3-gmp
maybe-configure-stage3-gmp:

.PHONY: configure-stage4-gmp maybe-configure-stage4-gmp
maybe-configure-stage4-gmp:

.PHONY: configure-stageprofile-gmp maybe-configure-stageprofile-gmp
maybe-configure-stageprofile-gmp:

.PHONY: configure-stagetrain-gmp maybe-configure-stagetrain-gmp
maybe-configure-stagetrain-gmp:

.PHONY: configure-stagefeedback-gmp maybe-configure-stagefeedback-gmp
maybe-configure-stagefeedback-gmp:

.PHONY: configure-stageautoprofile-gmp maybe-configure-stageautoprofile-gmp
maybe-configure-stageautoprofile-gmp:

.PHONY: configure-stageautofeedback-gmp maybe-configure-stageautofeedback-gmp
maybe-configure-stageautofeedback-gmp:





.PHONY: all-gmp maybe-all-gmp
maybe-all-gmp:
TARGET-gmp=all
maybe-all-gmp: all-gmp
all-gmp: configure-gmp
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS) AM_CFLAGS="-DNO_ASM" \
		$(TARGET-gmp))



.PHONY: all-stage1-gmp maybe-all-stage1-gmp
.PHONY: clean-stage1-gmp maybe-clean-stage1-gmp
maybe-all-stage1-gmp:
maybe-clean-stage1-gmp:


.PHONY: all-stage2-gmp maybe-all-stage2-gmp
.PHONY: clean-stage2-gmp maybe-clean-stage2-gmp
maybe-all-stage2-gmp:
maybe-clean-stage2-gmp:


.PHONY: all-stage3-gmp maybe-all-stage3-gmp
.PHONY: clean-stage3-gmp maybe-clean-stage3-gmp
maybe-all-stage3-gmp:
maybe-clean-stage3-gmp:


.PHONY: all-stage4-gmp maybe-all-stage4-gmp
.PHONY: clean-stage4-gmp maybe-clean-stage4-gmp
maybe-all-stage4-gmp:
maybe-clean-stage4-gmp:


.PHONY: all-stageprofile-gmp maybe-all-stageprofile-gmp
.PHONY: clean-stageprofile-gmp maybe-clean-stageprofile-gmp
maybe-all-stageprofile-gmp:
maybe-clean-stageprofile-gmp:


.PHONY: all-stagetrain-gmp maybe-all-stagetrain-gmp
.PHONY: clean-stagetrain-gmp maybe-clean-stagetrain-gmp
maybe-all-stagetrain-gmp:
maybe-clean-stagetrain-gmp:


.PHONY: all-stagefeedback-gmp maybe-all-stagefeedback-gmp
.PHONY: clean-stagefeedback-gmp maybe-clean-stagefeedback-gmp
maybe-all-stagefeedback-gmp:
maybe-clean-stagefeedback-gmp:


.PHONY: all-stageautoprofile-gmp maybe-all-stageautoprofile-gmp
.PHONY: clean-stageautoprofile-gmp maybe-clean-stageautoprofile-gmp
maybe-all-stageautoprofile-gmp:
maybe-clean-stageautoprofile-gmp:


.PHONY: all-stageautofeedback-gmp maybe-all-stageautofeedback-gmp
.PHONY: clean-stageautofeedback-gmp maybe-clean-stageautofeedback-gmp
maybe-all-stageautofeedback-gmp:
maybe-clean-stageautofeedback-gmp:





.PHONY: check-gmp maybe-check-gmp
maybe-check-gmp:
maybe-check-gmp: check-gmp

check-gmp:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(FLAGS_TO_PASS) AM_CFLAGS="-DNO_ASM" $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-gmp maybe-install-gmp
maybe-install-gmp:
maybe-install-gmp: install-gmp

install-gmp:


.PHONY: install-strip-gmp maybe-install-strip-gmp
maybe-install-strip-gmp:
maybe-install-strip-gmp: install-strip-gmp

install-strip-gmp:


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gmp info-gmp
maybe-info-gmp:
maybe-info-gmp: info-gmp

info-gmp: \
    configure-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-gmp dvi-gmp
maybe-dvi-gmp:
maybe-dvi-gmp: dvi-gmp

dvi-gmp: \
    configure-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-gmp pdf-gmp
maybe-pdf-gmp:
maybe-pdf-gmp: pdf-gmp

pdf-gmp: \
    configure-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-gmp html-gmp
maybe-html-gmp:
maybe-html-gmp: html-gmp

html-gmp: \
    configure-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-gmp TAGS-gmp
maybe-TAGS-gmp:
maybe-TAGS-gmp: TAGS-gmp

TAGS-gmp: \
    configure-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-gmp install-info-gmp
maybe-install-info-gmp:
maybe-install-info-gmp: install-info-gmp

install-info-gmp: \
    configure-gmp \
    info-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-gmp install-dvi-gmp
maybe-install-dvi-gmp:
maybe-install-dvi-gmp: install-dvi-gmp

install-dvi-gmp: \
    configure-gmp \
    dvi-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-gmp install-pdf-gmp
maybe-install-pdf-gmp:
maybe-install-pdf-gmp: install-pdf-gmp

install-pdf-gmp: \
    configure-gmp \
    pdf-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-gmp install-html-gmp
maybe-install-html-gmp:
maybe-install-html-gmp: install-html-gmp

install-html-gmp: \
    configure-gmp \
    html-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-gmp installcheck-gmp
maybe-installcheck-gmp:
maybe-installcheck-gmp: installcheck-gmp

installcheck-gmp: \
    configure-gmp 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-gmp mostlyclean-gmp
maybe-mostlyclean-gmp:
maybe-mostlyclean-gmp: mostlyclean-gmp

mostlyclean-gmp: 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-gmp clean-gmp
maybe-clean-gmp:
maybe-clean-gmp: clean-gmp

clean-gmp: 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-gmp distclean-gmp
maybe-distclean-gmp:
maybe-distclean-gmp: distclean-gmp

distclean-gmp: 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-gmp maintainer-clean-gmp
maybe-maintainer-clean-gmp:
maybe-maintainer-clean-gmp: maintainer-clean-gmp

maintainer-clean-gmp: 
	@[ -f ./gmp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in gmp"; \
	(cd $(HOST_SUBDIR)/gmp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-mpfr maybe-configure-mpfr
maybe-configure-mpfr:
maybe-configure-mpfr: configure-mpfr
configure-mpfr: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/mpfr/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/mpfr; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/mpfr; \
	cd "$(HOST_SUBDIR)/mpfr" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/mpfr/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=mpfr; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias} --disable-shared --with-gmp-include=$$r/$(HOST_SUBDIR)/gmp --with-gmp-lib=$$r/$(HOST_SUBDIR)/gmp/.libs \
	  || exit 1



.PHONY: configure-stage1-mpfr maybe-configure-stage1-mpfr
maybe-configure-stage1-mpfr:

.PHONY: configure-stage2-mpfr maybe-configure-stage2-mpfr
maybe-configure-stage2-mpfr:

.PHONY: configure-stage3-mpfr maybe-configure-stage3-mpfr
maybe-configure-stage3-mpfr:

.PHONY: configure-stage4-mpfr maybe-configure-stage4-mpfr
maybe-configure-stage4-mpfr:

.PHONY: configure-stageprofile-mpfr maybe-configure-stageprofile-mpfr
maybe-configure-stageprofile-mpfr:

.PHONY: configure-stagetrain-mpfr maybe-configure-stagetrain-mpfr
maybe-configure-stagetrain-mpfr:

.PHONY: configure-stagefeedback-mpfr maybe-configure-stagefeedback-mpfr
maybe-configure-stagefeedback-mpfr:

.PHONY: configure-stageautoprofile-mpfr maybe-configure-stageautoprofile-mpfr
maybe-configure-stageautoprofile-mpfr:

.PHONY: configure-stageautofeedback-mpfr maybe-configure-stageautofeedback-mpfr
maybe-configure-stageautofeedback-mpfr:





.PHONY: all-mpfr maybe-all-mpfr
maybe-all-mpfr:
TARGET-mpfr=all
maybe-all-mpfr: all-mpfr
all-mpfr: configure-mpfr
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS) AM_CFLAGS="-DNO_ASM" \
		$(TARGET-mpfr))



.PHONY: all-stage1-mpfr maybe-all-stage1-mpfr
.PHONY: clean-stage1-mpfr maybe-clean-stage1-mpfr
maybe-all-stage1-mpfr:
maybe-clean-stage1-mpfr:


.PHONY: all-stage2-mpfr maybe-all-stage2-mpfr
.PHONY: clean-stage2-mpfr maybe-clean-stage2-mpfr
maybe-all-stage2-mpfr:
maybe-clean-stage2-mpfr:


.PHONY: all-stage3-mpfr maybe-all-stage3-mpfr
.PHONY: clean-stage3-mpfr maybe-clean-stage3-mpfr
maybe-all-stage3-mpfr:
maybe-clean-stage3-mpfr:


.PHONY: all-stage4-mpfr maybe-all-stage4-mpfr
.PHONY: clean-stage4-mpfr maybe-clean-stage4-mpfr
maybe-all-stage4-mpfr:
maybe-clean-stage4-mpfr:


.PHONY: all-stageprofile-mpfr maybe-all-stageprofile-mpfr
.PHONY: clean-stageprofile-mpfr maybe-clean-stageprofile-mpfr
maybe-all-stageprofile-mpfr:
maybe-clean-stageprofile-mpfr:


.PHONY: all-stagetrain-mpfr maybe-all-stagetrain-mpfr
.PHONY: clean-stagetrain-mpfr maybe-clean-stagetrain-mpfr
maybe-all-stagetrain-mpfr:
maybe-clean-stagetrain-mpfr:


.PHONY: all-stagefeedback-mpfr maybe-all-stagefeedback-mpfr
.PHONY: clean-stagefeedback-mpfr maybe-clean-stagefeedback-mpfr
maybe-all-stagefeedback-mpfr:
maybe-clean-stagefeedback-mpfr:


.PHONY: all-stageautoprofile-mpfr maybe-all-stageautoprofile-mpfr
.PHONY: clean-stageautoprofile-mpfr maybe-clean-stageautoprofile-mpfr
maybe-all-stageautoprofile-mpfr:
maybe-clean-stageautoprofile-mpfr:


.PHONY: all-stageautofeedback-mpfr maybe-all-stageautofeedback-mpfr
.PHONY: clean-stageautofeedback-mpfr maybe-clean-stageautofeedback-mpfr
maybe-all-stageautofeedback-mpfr:
maybe-clean-stageautofeedback-mpfr:





.PHONY: check-mpfr maybe-check-mpfr
maybe-check-mpfr:
maybe-check-mpfr: check-mpfr

check-mpfr:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(FLAGS_TO_PASS) AM_CFLAGS="-DNO_ASM" $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-mpfr maybe-install-mpfr
maybe-install-mpfr:
maybe-install-mpfr: install-mpfr

install-mpfr:


.PHONY: install-strip-mpfr maybe-install-strip-mpfr
maybe-install-strip-mpfr:
maybe-install-strip-mpfr: install-strip-mpfr

install-strip-mpfr:


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-mpfr info-mpfr
maybe-info-mpfr:
maybe-info-mpfr: info-mpfr

info-mpfr: \
    configure-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-mpfr dvi-mpfr
maybe-dvi-mpfr:
maybe-dvi-mpfr: dvi-mpfr

dvi-mpfr: \
    configure-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-mpfr pdf-mpfr
maybe-pdf-mpfr:
maybe-pdf-mpfr: pdf-mpfr

pdf-mpfr: \
    configure-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-mpfr html-mpfr
maybe-html-mpfr:
maybe-html-mpfr: html-mpfr

html-mpfr: \
    configure-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-mpfr TAGS-mpfr
maybe-TAGS-mpfr:
maybe-TAGS-mpfr: TAGS-mpfr

TAGS-mpfr: \
    configure-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-mpfr install-info-mpfr
maybe-install-info-mpfr:
maybe-install-info-mpfr: install-info-mpfr

install-info-mpfr: \
    configure-mpfr \
    info-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-mpfr install-dvi-mpfr
maybe-install-dvi-mpfr:
maybe-install-dvi-mpfr: install-dvi-mpfr

install-dvi-mpfr: \
    configure-mpfr \
    dvi-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-mpfr install-pdf-mpfr
maybe-install-pdf-mpfr:
maybe-install-pdf-mpfr: install-pdf-mpfr

install-pdf-mpfr: \
    configure-mpfr \
    pdf-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-mpfr install-html-mpfr
maybe-install-html-mpfr:
maybe-install-html-mpfr: install-html-mpfr

install-html-mpfr: \
    configure-mpfr \
    html-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-mpfr installcheck-mpfr
maybe-installcheck-mpfr:
maybe-installcheck-mpfr: installcheck-mpfr

installcheck-mpfr: \
    configure-mpfr 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-mpfr mostlyclean-mpfr
maybe-mostlyclean-mpfr:
maybe-mostlyclean-mpfr: mostlyclean-mpfr

mostlyclean-mpfr: 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-mpfr clean-mpfr
maybe-clean-mpfr:
maybe-clean-mpfr: clean-mpfr

clean-mpfr: 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-mpfr distclean-mpfr
maybe-distclean-mpfr:
maybe-distclean-mpfr: distclean-mpfr

distclean-mpfr: 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-mpfr maintainer-clean-mpfr
maybe-maintainer-clean-mpfr:
maybe-maintainer-clean-mpfr: maintainer-clean-mpfr

maintainer-clean-mpfr: 
	@[ -f ./mpfr/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) AM_CFLAGS="-DNO_ASM"; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in mpfr"; \
	(cd $(HOST_SUBDIR)/mpfr && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-mpc maybe-configure-mpc
maybe-configure-mpc:
maybe-configure-mpc: configure-mpc
configure-mpc: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/mpc/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/mpc; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/mpc; \
	cd "$(HOST_SUBDIR)/mpc" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/mpc/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=mpc; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias} --disable-shared --with-gmp-include=$$r/$(HOST_SUBDIR)/gmp --with-gmp-lib=$$r/$(HOST_SUBDIR)/gmp/.libs --with-mpfr-include=$$s/mpfr/src --with-mpfr-lib=$$r/$(HOST_SUBDIR)/mpfr/src/.libs --disable-maintainer-mode \
	  || exit 1



.PHONY: configure-stage1-mpc maybe-configure-stage1-mpc
maybe-configure-stage1-mpc:

.PHONY: configure-stage2-mpc maybe-configure-stage2-mpc
maybe-configure-stage2-mpc:

.PHONY: configure-stage3-mpc maybe-configure-stage3-mpc
maybe-configure-stage3-mpc:

.PHONY: configure-stage4-mpc maybe-configure-stage4-mpc
maybe-configure-stage4-mpc:

.PHONY: configure-stageprofile-mpc maybe-configure-stageprofile-mpc
maybe-configure-stageprofile-mpc:

.PHONY: configure-stagetrain-mpc maybe-configure-stagetrain-mpc
maybe-configure-stagetrain-mpc:

.PHONY: configure-stagefeedback-mpc maybe-configure-stagefeedback-mpc
maybe-configure-stagefeedback-mpc:

.PHONY: configure-stageautoprofile-mpc maybe-configure-stageautoprofile-mpc
maybe-configure-stageautoprofile-mpc:

.PHONY: configure-stageautofeedback-mpc maybe-configure-stageautofeedback-mpc
maybe-configure-stageautofeedback-mpc:





.PHONY: all-mpc maybe-all-mpc
maybe-all-mpc:
TARGET-mpc=all
maybe-all-mpc: all-mpc
all-mpc: configure-mpc
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-mpc))



.PHONY: all-stage1-mpc maybe-all-stage1-mpc
.PHONY: clean-stage1-mpc maybe-clean-stage1-mpc
maybe-all-stage1-mpc:
maybe-clean-stage1-mpc:


.PHONY: all-stage2-mpc maybe-all-stage2-mpc
.PHONY: clean-stage2-mpc maybe-clean-stage2-mpc
maybe-all-stage2-mpc:
maybe-clean-stage2-mpc:


.PHONY: all-stage3-mpc maybe-all-stage3-mpc
.PHONY: clean-stage3-mpc maybe-clean-stage3-mpc
maybe-all-stage3-mpc:
maybe-clean-stage3-mpc:


.PHONY: all-stage4-mpc maybe-all-stage4-mpc
.PHONY: clean-stage4-mpc maybe-clean-stage4-mpc
maybe-all-stage4-mpc:
maybe-clean-stage4-mpc:


.PHONY: all-stageprofile-mpc maybe-all-stageprofile-mpc
.PHONY: clean-stageprofile-mpc maybe-clean-stageprofile-mpc
maybe-all-stageprofile-mpc:
maybe-clean-stageprofile-mpc:


.PHONY: all-stagetrain-mpc maybe-all-stagetrain-mpc
.PHONY: clean-stagetrain-mpc maybe-clean-stagetrain-mpc
maybe-all-stagetrain-mpc:
maybe-clean-stagetrain-mpc:


.PHONY: all-stagefeedback-mpc maybe-all-stagefeedback-mpc
.PHONY: clean-stagefeedback-mpc maybe-clean-stagefeedback-mpc
maybe-all-stagefeedback-mpc:
maybe-clean-stagefeedback-mpc:


.PHONY: all-stageautoprofile-mpc maybe-all-stageautoprofile-mpc
.PHONY: clean-stageautoprofile-mpc maybe-clean-stageautoprofile-mpc
maybe-all-stageautoprofile-mpc:
maybe-clean-stageautoprofile-mpc:


.PHONY: all-stageautofeedback-mpc maybe-all-stageautofeedback-mpc
.PHONY: clean-stageautofeedback-mpc maybe-clean-stageautofeedback-mpc
maybe-all-stageautofeedback-mpc:
maybe-clean-stageautofeedback-mpc:





.PHONY: check-mpc maybe-check-mpc
maybe-check-mpc:
maybe-check-mpc: check-mpc

check-mpc:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-mpc maybe-install-mpc
maybe-install-mpc:
maybe-install-mpc: install-mpc

install-mpc:


.PHONY: install-strip-mpc maybe-install-strip-mpc
maybe-install-strip-mpc:
maybe-install-strip-mpc: install-strip-mpc

install-strip-mpc:


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-mpc info-mpc
maybe-info-mpc:
maybe-info-mpc: info-mpc

info-mpc: \
    configure-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-mpc dvi-mpc
maybe-dvi-mpc:
maybe-dvi-mpc: dvi-mpc

dvi-mpc: \
    configure-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-mpc pdf-mpc
maybe-pdf-mpc:
maybe-pdf-mpc: pdf-mpc

pdf-mpc: \
    configure-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-mpc html-mpc
maybe-html-mpc:
maybe-html-mpc: html-mpc

html-mpc: \
    configure-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-mpc TAGS-mpc
maybe-TAGS-mpc:
maybe-TAGS-mpc: TAGS-mpc

TAGS-mpc: \
    configure-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-mpc install-info-mpc
maybe-install-info-mpc:
maybe-install-info-mpc: install-info-mpc

install-info-mpc: \
    configure-mpc \
    info-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-mpc install-dvi-mpc
maybe-install-dvi-mpc:
maybe-install-dvi-mpc: install-dvi-mpc

install-dvi-mpc: \
    configure-mpc \
    dvi-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-mpc install-pdf-mpc
maybe-install-pdf-mpc:
maybe-install-pdf-mpc: install-pdf-mpc

install-pdf-mpc: \
    configure-mpc \
    pdf-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-mpc install-html-mpc
maybe-install-html-mpc:
maybe-install-html-mpc: install-html-mpc

install-html-mpc: \
    configure-mpc \
    html-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-mpc installcheck-mpc
maybe-installcheck-mpc:
maybe-installcheck-mpc: installcheck-mpc

installcheck-mpc: \
    configure-mpc 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-mpc mostlyclean-mpc
maybe-mostlyclean-mpc:
maybe-mostlyclean-mpc: mostlyclean-mpc

mostlyclean-mpc: 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-mpc clean-mpc
maybe-clean-mpc:
maybe-clean-mpc: clean-mpc

clean-mpc: 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-mpc distclean-mpc
maybe-distclean-mpc:
maybe-distclean-mpc: distclean-mpc

distclean-mpc: 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-mpc maintainer-clean-mpc
maybe-maintainer-clean-mpc:
maybe-maintainer-clean-mpc: maintainer-clean-mpc

maintainer-clean-mpc: 
	@[ -f ./mpc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in mpc"; \
	(cd $(HOST_SUBDIR)/mpc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-isl maybe-configure-isl
maybe-configure-isl:
maybe-configure-isl: configure-isl
configure-isl: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/isl/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/isl; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/isl; \
	cd "$(HOST_SUBDIR)/isl" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/isl/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=isl; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias} --disable-shared --with-gmp-builddir=$$r/$(HOST_SUBDIR)/gmp \
	  || exit 1



.PHONY: configure-stage1-isl maybe-configure-stage1-isl
maybe-configure-stage1-isl:

.PHONY: configure-stage2-isl maybe-configure-stage2-isl
maybe-configure-stage2-isl:

.PHONY: configure-stage3-isl maybe-configure-stage3-isl
maybe-configure-stage3-isl:

.PHONY: configure-stage4-isl maybe-configure-stage4-isl
maybe-configure-stage4-isl:

.PHONY: configure-stageprofile-isl maybe-configure-stageprofile-isl
maybe-configure-stageprofile-isl:

.PHONY: configure-stagetrain-isl maybe-configure-stagetrain-isl
maybe-configure-stagetrain-isl:

.PHONY: configure-stagefeedback-isl maybe-configure-stagefeedback-isl
maybe-configure-stagefeedback-isl:

.PHONY: configure-stageautoprofile-isl maybe-configure-stageautoprofile-isl
maybe-configure-stageautoprofile-isl:

.PHONY: configure-stageautofeedback-isl maybe-configure-stageautofeedback-isl
maybe-configure-stageautofeedback-isl:





.PHONY: all-isl maybe-all-isl
maybe-all-isl:
TARGET-isl=all
maybe-all-isl: all-isl
all-isl: configure-isl
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS) V=1 \
		$(TARGET-isl))



.PHONY: all-stage1-isl maybe-all-stage1-isl
.PHONY: clean-stage1-isl maybe-clean-stage1-isl
maybe-all-stage1-isl:
maybe-clean-stage1-isl:


.PHONY: all-stage2-isl maybe-all-stage2-isl
.PHONY: clean-stage2-isl maybe-clean-stage2-isl
maybe-all-stage2-isl:
maybe-clean-stage2-isl:


.PHONY: all-stage3-isl maybe-all-stage3-isl
.PHONY: clean-stage3-isl maybe-clean-stage3-isl
maybe-all-stage3-isl:
maybe-clean-stage3-isl:


.PHONY: all-stage4-isl maybe-all-stage4-isl
.PHONY: clean-stage4-isl maybe-clean-stage4-isl
maybe-all-stage4-isl:
maybe-clean-stage4-isl:


.PHONY: all-stageprofile-isl maybe-all-stageprofile-isl
.PHONY: clean-stageprofile-isl maybe-clean-stageprofile-isl
maybe-all-stageprofile-isl:
maybe-clean-stageprofile-isl:


.PHONY: all-stagetrain-isl maybe-all-stagetrain-isl
.PHONY: clean-stagetrain-isl maybe-clean-stagetrain-isl
maybe-all-stagetrain-isl:
maybe-clean-stagetrain-isl:


.PHONY: all-stagefeedback-isl maybe-all-stagefeedback-isl
.PHONY: clean-stagefeedback-isl maybe-clean-stagefeedback-isl
maybe-all-stagefeedback-isl:
maybe-clean-stagefeedback-isl:


.PHONY: all-stageautoprofile-isl maybe-all-stageautoprofile-isl
.PHONY: clean-stageautoprofile-isl maybe-clean-stageautoprofile-isl
maybe-all-stageautoprofile-isl:
maybe-clean-stageautoprofile-isl:


.PHONY: all-stageautofeedback-isl maybe-all-stageautofeedback-isl
.PHONY: clean-stageautofeedback-isl maybe-clean-stageautofeedback-isl
maybe-all-stageautofeedback-isl:
maybe-clean-stageautofeedback-isl:





.PHONY: check-isl maybe-check-isl
maybe-check-isl:
maybe-check-isl: check-isl

check-isl:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(FLAGS_TO_PASS) V=1 $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-isl maybe-install-isl
maybe-install-isl:
maybe-install-isl: install-isl

install-isl:


.PHONY: install-strip-isl maybe-install-strip-isl
maybe-install-strip-isl:
maybe-install-strip-isl: install-strip-isl

install-strip-isl:


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-isl info-isl
maybe-info-isl:
maybe-info-isl: info-isl

info-isl: \
    configure-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-isl dvi-isl
maybe-dvi-isl:
maybe-dvi-isl: dvi-isl

dvi-isl: \
    configure-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-isl pdf-isl
maybe-pdf-isl:
maybe-pdf-isl: pdf-isl

pdf-isl: \
    configure-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-isl html-isl
maybe-html-isl:
maybe-html-isl: html-isl

html-isl: \
    configure-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-isl TAGS-isl
maybe-TAGS-isl:
maybe-TAGS-isl: TAGS-isl

TAGS-isl: \
    configure-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-isl install-info-isl
maybe-install-info-isl:
maybe-install-info-isl: install-info-isl

install-info-isl: \
    configure-isl \
    info-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-isl install-dvi-isl
maybe-install-dvi-isl:
maybe-install-dvi-isl: install-dvi-isl

install-dvi-isl: \
    configure-isl \
    dvi-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-isl install-pdf-isl
maybe-install-pdf-isl:
maybe-install-pdf-isl: install-pdf-isl

install-pdf-isl: \
    configure-isl \
    pdf-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-isl install-html-isl
maybe-install-html-isl:
maybe-install-html-isl: install-html-isl

install-html-isl: \
    configure-isl \
    html-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-isl installcheck-isl
maybe-installcheck-isl:
maybe-installcheck-isl: installcheck-isl

installcheck-isl: \
    configure-isl 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-isl mostlyclean-isl
maybe-mostlyclean-isl:
maybe-mostlyclean-isl: mostlyclean-isl

mostlyclean-isl: 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-isl clean-isl
maybe-clean-isl:
maybe-clean-isl: clean-isl

clean-isl: 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-isl distclean-isl
maybe-distclean-isl:
maybe-distclean-isl: distclean-isl

distclean-isl: 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-isl maintainer-clean-isl
maybe-maintainer-clean-isl:
maybe-maintainer-clean-isl: maintainer-clean-isl

maintainer-clean-isl: 
	@[ -f ./isl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) V=1; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in isl"; \
	(cd $(HOST_SUBDIR)/isl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-libelf maybe-configure-libelf
maybe-configure-libelf:



.PHONY: configure-stage1-libelf maybe-configure-stage1-libelf
maybe-configure-stage1-libelf:

.PHONY: configure-stage2-libelf maybe-configure-stage2-libelf
maybe-configure-stage2-libelf:

.PHONY: configure-stage3-libelf maybe-configure-stage3-libelf
maybe-configure-stage3-libelf:

.PHONY: configure-stage4-libelf maybe-configure-stage4-libelf
maybe-configure-stage4-libelf:

.PHONY: configure-stageprofile-libelf maybe-configure-stageprofile-libelf
maybe-configure-stageprofile-libelf:

.PHONY: configure-stagetrain-libelf maybe-configure-stagetrain-libelf
maybe-configure-stagetrain-libelf:

.PHONY: configure-stagefeedback-libelf maybe-configure-stagefeedback-libelf
maybe-configure-stagefeedback-libelf:

.PHONY: configure-stageautoprofile-libelf maybe-configure-stageautoprofile-libelf
maybe-configure-stageautoprofile-libelf:

.PHONY: configure-stageautofeedback-libelf maybe-configure-stageautofeedback-libelf
maybe-configure-stageautofeedback-libelf:





.PHONY: all-libelf maybe-all-libelf
maybe-all-libelf:



.PHONY: all-stage1-libelf maybe-all-stage1-libelf
.PHONY: clean-stage1-libelf maybe-clean-stage1-libelf
maybe-all-stage1-libelf:
maybe-clean-stage1-libelf:


.PHONY: all-stage2-libelf maybe-all-stage2-libelf
.PHONY: clean-stage2-libelf maybe-clean-stage2-libelf
maybe-all-stage2-libelf:
maybe-clean-stage2-libelf:


.PHONY: all-stage3-libelf maybe-all-stage3-libelf
.PHONY: clean-stage3-libelf maybe-clean-stage3-libelf
maybe-all-stage3-libelf:
maybe-clean-stage3-libelf:


.PHONY: all-stage4-libelf maybe-all-stage4-libelf
.PHONY: clean-stage4-libelf maybe-clean-stage4-libelf
maybe-all-stage4-libelf:
maybe-clean-stage4-libelf:


.PHONY: all-stageprofile-libelf maybe-all-stageprofile-libelf
.PHONY: clean-stageprofile-libelf maybe-clean-stageprofile-libelf
maybe-all-stageprofile-libelf:
maybe-clean-stageprofile-libelf:


.PHONY: all-stagetrain-libelf maybe-all-stagetrain-libelf
.PHONY: clean-stagetrain-libelf maybe-clean-stagetrain-libelf
maybe-all-stagetrain-libelf:
maybe-clean-stagetrain-libelf:


.PHONY: all-stagefeedback-libelf maybe-all-stagefeedback-libelf
.PHONY: clean-stagefeedback-libelf maybe-clean-stagefeedback-libelf
maybe-all-stagefeedback-libelf:
maybe-clean-stagefeedback-libelf:


.PHONY: all-stageautoprofile-libelf maybe-all-stageautoprofile-libelf
.PHONY: clean-stageautoprofile-libelf maybe-clean-stageautoprofile-libelf
maybe-all-stageautoprofile-libelf:
maybe-clean-stageautoprofile-libelf:


.PHONY: all-stageautofeedback-libelf maybe-all-stageautofeedback-libelf
.PHONY: clean-stageautofeedback-libelf maybe-clean-stageautofeedback-libelf
maybe-all-stageautofeedback-libelf:
maybe-clean-stageautofeedback-libelf:





.PHONY: check-libelf maybe-check-libelf
maybe-check-libelf:

.PHONY: install-libelf maybe-install-libelf
maybe-install-libelf:

.PHONY: install-strip-libelf maybe-install-strip-libelf
maybe-install-strip-libelf:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libelf info-libelf
maybe-info-libelf:

.PHONY: maybe-dvi-libelf dvi-libelf
maybe-dvi-libelf:

.PHONY: maybe-pdf-libelf pdf-libelf
maybe-pdf-libelf:

.PHONY: maybe-html-libelf html-libelf
maybe-html-libelf:

.PHONY: maybe-TAGS-libelf TAGS-libelf
maybe-TAGS-libelf:

.PHONY: maybe-install-info-libelf install-info-libelf
maybe-install-info-libelf:

.PHONY: maybe-install-dvi-libelf install-dvi-libelf
maybe-install-dvi-libelf:

.PHONY: maybe-install-pdf-libelf install-pdf-libelf
maybe-install-pdf-libelf:

.PHONY: maybe-install-html-libelf install-html-libelf
maybe-install-html-libelf:

.PHONY: maybe-installcheck-libelf installcheck-libelf
maybe-installcheck-libelf:

.PHONY: maybe-mostlyclean-libelf mostlyclean-libelf
maybe-mostlyclean-libelf:

.PHONY: maybe-clean-libelf clean-libelf
maybe-clean-libelf:

.PHONY: maybe-distclean-libelf distclean-libelf
maybe-distclean-libelf:

.PHONY: maybe-maintainer-clean-libelf maintainer-clean-libelf
maybe-maintainer-clean-libelf:



.PHONY: configure-gold maybe-configure-gold
maybe-configure-gold:



.PHONY: configure-stage1-gold maybe-configure-stage1-gold
maybe-configure-stage1-gold:

.PHONY: configure-stage2-gold maybe-configure-stage2-gold
maybe-configure-stage2-gold:

.PHONY: configure-stage3-gold maybe-configure-stage3-gold
maybe-configure-stage3-gold:

.PHONY: configure-stage4-gold maybe-configure-stage4-gold
maybe-configure-stage4-gold:

.PHONY: configure-stageprofile-gold maybe-configure-stageprofile-gold
maybe-configure-stageprofile-gold:

.PHONY: configure-stagetrain-gold maybe-configure-stagetrain-gold
maybe-configure-stagetrain-gold:

.PHONY: configure-stagefeedback-gold maybe-configure-stagefeedback-gold
maybe-configure-stagefeedback-gold:

.PHONY: configure-stageautoprofile-gold maybe-configure-stageautoprofile-gold
maybe-configure-stageautoprofile-gold:

.PHONY: configure-stageautofeedback-gold maybe-configure-stageautofeedback-gold
maybe-configure-stageautofeedback-gold:





.PHONY: all-gold maybe-all-gold
maybe-all-gold:



.PHONY: all-stage1-gold maybe-all-stage1-gold
.PHONY: clean-stage1-gold maybe-clean-stage1-gold
maybe-all-stage1-gold:
maybe-clean-stage1-gold:


.PHONY: all-stage2-gold maybe-all-stage2-gold
.PHONY: clean-stage2-gold maybe-clean-stage2-gold
maybe-all-stage2-gold:
maybe-clean-stage2-gold:


.PHONY: all-stage3-gold maybe-all-stage3-gold
.PHONY: clean-stage3-gold maybe-clean-stage3-gold
maybe-all-stage3-gold:
maybe-clean-stage3-gold:


.PHONY: all-stage4-gold maybe-all-stage4-gold
.PHONY: clean-stage4-gold maybe-clean-stage4-gold
maybe-all-stage4-gold:
maybe-clean-stage4-gold:


.PHONY: all-stageprofile-gold maybe-all-stageprofile-gold
.PHONY: clean-stageprofile-gold maybe-clean-stageprofile-gold
maybe-all-stageprofile-gold:
maybe-clean-stageprofile-gold:


.PHONY: all-stagetrain-gold maybe-all-stagetrain-gold
.PHONY: clean-stagetrain-gold maybe-clean-stagetrain-gold
maybe-all-stagetrain-gold:
maybe-clean-stagetrain-gold:


.PHONY: all-stagefeedback-gold maybe-all-stagefeedback-gold
.PHONY: clean-stagefeedback-gold maybe-clean-stagefeedback-gold
maybe-all-stagefeedback-gold:
maybe-clean-stagefeedback-gold:


.PHONY: all-stageautoprofile-gold maybe-all-stageautoprofile-gold
.PHONY: clean-stageautoprofile-gold maybe-clean-stageautoprofile-gold
maybe-all-stageautoprofile-gold:
maybe-clean-stageautoprofile-gold:


.PHONY: all-stageautofeedback-gold maybe-all-stageautofeedback-gold
.PHONY: clean-stageautofeedback-gold maybe-clean-stageautofeedback-gold
maybe-all-stageautofeedback-gold:
maybe-clean-stageautofeedback-gold:





.PHONY: check-gold maybe-check-gold
maybe-check-gold:

.PHONY: install-gold maybe-install-gold
maybe-install-gold:

.PHONY: install-strip-gold maybe-install-strip-gold
maybe-install-strip-gold:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gold info-gold
maybe-info-gold:

.PHONY: maybe-dvi-gold dvi-gold
maybe-dvi-gold:

.PHONY: maybe-pdf-gold pdf-gold
maybe-pdf-gold:

.PHONY: maybe-html-gold html-gold
maybe-html-gold:

.PHONY: maybe-TAGS-gold TAGS-gold
maybe-TAGS-gold:

.PHONY: maybe-install-info-gold install-info-gold
maybe-install-info-gold:

.PHONY: maybe-install-dvi-gold install-dvi-gold
maybe-install-dvi-gold:

.PHONY: maybe-install-pdf-gold install-pdf-gold
maybe-install-pdf-gold:

.PHONY: maybe-install-html-gold install-html-gold
maybe-install-html-gold:

.PHONY: maybe-installcheck-gold installcheck-gold
maybe-installcheck-gold:

.PHONY: maybe-mostlyclean-gold mostlyclean-gold
maybe-mostlyclean-gold:

.PHONY: maybe-clean-gold clean-gold
maybe-clean-gold:

.PHONY: maybe-distclean-gold distclean-gold
maybe-distclean-gold:

.PHONY: maybe-maintainer-clean-gold maintainer-clean-gold
maybe-maintainer-clean-gold:



.PHONY: configure-gprof maybe-configure-gprof
maybe-configure-gprof:
maybe-configure-gprof: configure-gprof
configure-gprof: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/gprof/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/gprof; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/gprof; \
	cd "$(HOST_SUBDIR)/gprof" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/gprof/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=gprof; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-gprof maybe-all-gprof
maybe-all-gprof:
TARGET-gprof=all
maybe-all-gprof: all-gprof
all-gprof: configure-gprof
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-gprof))




.PHONY: check-gprof maybe-check-gprof
maybe-check-gprof:
maybe-check-gprof: check-gprof

check-gprof:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(FLAGS_TO_PASS)  check)


.PHONY: install-gprof maybe-install-gprof
maybe-install-gprof:
maybe-install-gprof: install-gprof

install-gprof: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-gprof maybe-install-strip-gprof
maybe-install-strip-gprof:
maybe-install-strip-gprof: install-strip-gprof

install-strip-gprof: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gprof info-gprof
maybe-info-gprof:
maybe-info-gprof: info-gprof

info-gprof: \
    configure-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-gprof dvi-gprof
maybe-dvi-gprof:
maybe-dvi-gprof: dvi-gprof

dvi-gprof: \
    configure-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-gprof pdf-gprof
maybe-pdf-gprof:
maybe-pdf-gprof: pdf-gprof

pdf-gprof: \
    configure-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-gprof html-gprof
maybe-html-gprof:
maybe-html-gprof: html-gprof

html-gprof: \
    configure-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-gprof TAGS-gprof
maybe-TAGS-gprof:
maybe-TAGS-gprof: TAGS-gprof

TAGS-gprof: \
    configure-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-gprof install-info-gprof
maybe-install-info-gprof:
maybe-install-info-gprof: install-info-gprof

install-info-gprof: \
    configure-gprof \
    info-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-gprof install-dvi-gprof
maybe-install-dvi-gprof:
maybe-install-dvi-gprof: install-dvi-gprof

install-dvi-gprof: \
    configure-gprof \
    dvi-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-gprof install-pdf-gprof
maybe-install-pdf-gprof:
maybe-install-pdf-gprof: install-pdf-gprof

install-pdf-gprof: \
    configure-gprof \
    pdf-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-gprof install-html-gprof
maybe-install-html-gprof:
maybe-install-html-gprof: install-html-gprof

install-html-gprof: \
    configure-gprof \
    html-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-gprof installcheck-gprof
maybe-installcheck-gprof:
maybe-installcheck-gprof: installcheck-gprof

installcheck-gprof: \
    configure-gprof 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-gprof mostlyclean-gprof
maybe-mostlyclean-gprof:
maybe-mostlyclean-gprof: mostlyclean-gprof

mostlyclean-gprof: 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-gprof clean-gprof
maybe-clean-gprof:
maybe-clean-gprof: clean-gprof

clean-gprof: 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-gprof distclean-gprof
maybe-distclean-gprof:
maybe-distclean-gprof: distclean-gprof

distclean-gprof: 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-gprof maintainer-clean-gprof
maybe-maintainer-clean-gprof:
maybe-maintainer-clean-gprof: maintainer-clean-gprof

maintainer-clean-gprof: 
	@: $(MAKE); $(unstage)
	@[ -f ./gprof/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in gprof"; \
	(cd $(HOST_SUBDIR)/gprof && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-intl maybe-configure-intl
maybe-configure-intl:
maybe-configure-intl: configure-intl
configure-intl: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/intl/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/intl; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/intl; \
	cd "$(HOST_SUBDIR)/intl" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/intl/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=intl; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-intl maybe-configure-stage1-intl
maybe-configure-stage1-intl:

.PHONY: configure-stage2-intl maybe-configure-stage2-intl
maybe-configure-stage2-intl:

.PHONY: configure-stage3-intl maybe-configure-stage3-intl
maybe-configure-stage3-intl:

.PHONY: configure-stage4-intl maybe-configure-stage4-intl
maybe-configure-stage4-intl:

.PHONY: configure-stageprofile-intl maybe-configure-stageprofile-intl
maybe-configure-stageprofile-intl:

.PHONY: configure-stagetrain-intl maybe-configure-stagetrain-intl
maybe-configure-stagetrain-intl:

.PHONY: configure-stagefeedback-intl maybe-configure-stagefeedback-intl
maybe-configure-stagefeedback-intl:

.PHONY: configure-stageautoprofile-intl maybe-configure-stageautoprofile-intl
maybe-configure-stageautoprofile-intl:

.PHONY: configure-stageautofeedback-intl maybe-configure-stageautofeedback-intl
maybe-configure-stageautofeedback-intl:





.PHONY: all-intl maybe-all-intl
maybe-all-intl:
TARGET-intl=all
maybe-all-intl: all-intl
all-intl: configure-intl
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-intl))



.PHONY: all-stage1-intl maybe-all-stage1-intl
.PHONY: clean-stage1-intl maybe-clean-stage1-intl
maybe-all-stage1-intl:
maybe-clean-stage1-intl:


.PHONY: all-stage2-intl maybe-all-stage2-intl
.PHONY: clean-stage2-intl maybe-clean-stage2-intl
maybe-all-stage2-intl:
maybe-clean-stage2-intl:


.PHONY: all-stage3-intl maybe-all-stage3-intl
.PHONY: clean-stage3-intl maybe-clean-stage3-intl
maybe-all-stage3-intl:
maybe-clean-stage3-intl:


.PHONY: all-stage4-intl maybe-all-stage4-intl
.PHONY: clean-stage4-intl maybe-clean-stage4-intl
maybe-all-stage4-intl:
maybe-clean-stage4-intl:


.PHONY: all-stageprofile-intl maybe-all-stageprofile-intl
.PHONY: clean-stageprofile-intl maybe-clean-stageprofile-intl
maybe-all-stageprofile-intl:
maybe-clean-stageprofile-intl:


.PHONY: all-stagetrain-intl maybe-all-stagetrain-intl
.PHONY: clean-stagetrain-intl maybe-clean-stagetrain-intl
maybe-all-stagetrain-intl:
maybe-clean-stagetrain-intl:


.PHONY: all-stagefeedback-intl maybe-all-stagefeedback-intl
.PHONY: clean-stagefeedback-intl maybe-clean-stagefeedback-intl
maybe-all-stagefeedback-intl:
maybe-clean-stagefeedback-intl:


.PHONY: all-stageautoprofile-intl maybe-all-stageautoprofile-intl
.PHONY: clean-stageautoprofile-intl maybe-clean-stageautoprofile-intl
maybe-all-stageautoprofile-intl:
maybe-clean-stageautoprofile-intl:


.PHONY: all-stageautofeedback-intl maybe-all-stageautofeedback-intl
.PHONY: clean-stageautofeedback-intl maybe-clean-stageautofeedback-intl
maybe-all-stageautofeedback-intl:
maybe-clean-stageautofeedback-intl:





.PHONY: check-intl maybe-check-intl
maybe-check-intl:
maybe-check-intl: check-intl

check-intl:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-intl maybe-install-intl
maybe-install-intl:
maybe-install-intl: install-intl

install-intl: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-intl maybe-install-strip-intl
maybe-install-strip-intl:
maybe-install-strip-intl: install-strip-intl

install-strip-intl: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-intl info-intl
maybe-info-intl:
maybe-info-intl: info-intl

info-intl: \
    configure-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-intl dvi-intl
maybe-dvi-intl:
maybe-dvi-intl: dvi-intl

dvi-intl: \
    configure-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-intl pdf-intl
maybe-pdf-intl:
maybe-pdf-intl: pdf-intl

pdf-intl: \
    configure-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-intl html-intl
maybe-html-intl:
maybe-html-intl: html-intl

html-intl: \
    configure-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-intl TAGS-intl
maybe-TAGS-intl:
maybe-TAGS-intl: TAGS-intl

TAGS-intl: \
    configure-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-intl install-info-intl
maybe-install-info-intl:
maybe-install-info-intl: install-info-intl

install-info-intl: \
    configure-intl \
    info-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-intl install-dvi-intl
maybe-install-dvi-intl:
maybe-install-dvi-intl: install-dvi-intl

install-dvi-intl: \
    configure-intl \
    dvi-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-intl install-pdf-intl
maybe-install-pdf-intl:
maybe-install-pdf-intl: install-pdf-intl

install-pdf-intl: \
    configure-intl \
    pdf-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-intl install-html-intl
maybe-install-html-intl:
maybe-install-html-intl: install-html-intl

install-html-intl: \
    configure-intl \
    html-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-intl installcheck-intl
maybe-installcheck-intl:
maybe-installcheck-intl: installcheck-intl

installcheck-intl: \
    configure-intl 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-intl mostlyclean-intl
maybe-mostlyclean-intl:
maybe-mostlyclean-intl: mostlyclean-intl

mostlyclean-intl: 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-intl clean-intl
maybe-clean-intl:
maybe-clean-intl: clean-intl

clean-intl: 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-intl distclean-intl
maybe-distclean-intl:
maybe-distclean-intl: distclean-intl

distclean-intl: 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-intl maintainer-clean-intl
maybe-maintainer-clean-intl:
maybe-maintainer-clean-intl: maintainer-clean-intl

maintainer-clean-intl: 
	@[ -f ./intl/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in intl"; \
	(cd $(HOST_SUBDIR)/intl && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-tcl maybe-configure-tcl
maybe-configure-tcl:





.PHONY: all-tcl maybe-all-tcl
maybe-all-tcl:




.PHONY: check-tcl maybe-check-tcl
maybe-check-tcl:

.PHONY: install-tcl maybe-install-tcl
maybe-install-tcl:

.PHONY: install-strip-tcl maybe-install-strip-tcl
maybe-install-strip-tcl:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-tcl info-tcl
maybe-info-tcl:

.PHONY: maybe-dvi-tcl dvi-tcl
maybe-dvi-tcl:

.PHONY: maybe-pdf-tcl pdf-tcl
maybe-pdf-tcl:

.PHONY: maybe-html-tcl html-tcl
maybe-html-tcl:

.PHONY: maybe-TAGS-tcl TAGS-tcl
maybe-TAGS-tcl:

.PHONY: maybe-install-info-tcl install-info-tcl
maybe-install-info-tcl:

.PHONY: maybe-install-dvi-tcl install-dvi-tcl
maybe-install-dvi-tcl:

.PHONY: maybe-install-pdf-tcl install-pdf-tcl
maybe-install-pdf-tcl:

.PHONY: maybe-install-html-tcl install-html-tcl
maybe-install-html-tcl:

.PHONY: maybe-installcheck-tcl installcheck-tcl
maybe-installcheck-tcl:

.PHONY: maybe-mostlyclean-tcl mostlyclean-tcl
maybe-mostlyclean-tcl:

.PHONY: maybe-clean-tcl clean-tcl
maybe-clean-tcl:

.PHONY: maybe-distclean-tcl distclean-tcl
maybe-distclean-tcl:

.PHONY: maybe-maintainer-clean-tcl maintainer-clean-tcl
maybe-maintainer-clean-tcl:



.PHONY: configure-itcl maybe-configure-itcl
maybe-configure-itcl:





.PHONY: all-itcl maybe-all-itcl
maybe-all-itcl:




.PHONY: check-itcl maybe-check-itcl
maybe-check-itcl:

.PHONY: install-itcl maybe-install-itcl
maybe-install-itcl:

.PHONY: install-strip-itcl maybe-install-strip-itcl
maybe-install-strip-itcl:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-itcl info-itcl
maybe-info-itcl:

.PHONY: maybe-dvi-itcl dvi-itcl
maybe-dvi-itcl:

.PHONY: maybe-pdf-itcl pdf-itcl
maybe-pdf-itcl:

.PHONY: maybe-html-itcl html-itcl
maybe-html-itcl:

.PHONY: maybe-TAGS-itcl TAGS-itcl
maybe-TAGS-itcl:

.PHONY: maybe-install-info-itcl install-info-itcl
maybe-install-info-itcl:

.PHONY: maybe-install-dvi-itcl install-dvi-itcl
maybe-install-dvi-itcl:

.PHONY: maybe-install-pdf-itcl install-pdf-itcl
maybe-install-pdf-itcl:

.PHONY: maybe-install-html-itcl install-html-itcl
maybe-install-html-itcl:

.PHONY: maybe-installcheck-itcl installcheck-itcl
maybe-installcheck-itcl:

.PHONY: maybe-mostlyclean-itcl mostlyclean-itcl
maybe-mostlyclean-itcl:

.PHONY: maybe-clean-itcl clean-itcl
maybe-clean-itcl:

.PHONY: maybe-distclean-itcl distclean-itcl
maybe-distclean-itcl:

.PHONY: maybe-maintainer-clean-itcl maintainer-clean-itcl
maybe-maintainer-clean-itcl:



.PHONY: configure-ld maybe-configure-ld
maybe-configure-ld:
maybe-configure-ld: configure-ld
configure-ld: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/ld/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/ld; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/ld; \
	cd "$(HOST_SUBDIR)/ld" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/ld/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=ld; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-ld maybe-configure-stage1-ld
maybe-configure-stage1-ld:

.PHONY: configure-stage2-ld maybe-configure-stage2-ld
maybe-configure-stage2-ld:

.PHONY: configure-stage3-ld maybe-configure-stage3-ld
maybe-configure-stage3-ld:

.PHONY: configure-stage4-ld maybe-configure-stage4-ld
maybe-configure-stage4-ld:

.PHONY: configure-stageprofile-ld maybe-configure-stageprofile-ld
maybe-configure-stageprofile-ld:

.PHONY: configure-stagetrain-ld maybe-configure-stagetrain-ld
maybe-configure-stagetrain-ld:

.PHONY: configure-stagefeedback-ld maybe-configure-stagefeedback-ld
maybe-configure-stagefeedback-ld:

.PHONY: configure-stageautoprofile-ld maybe-configure-stageautoprofile-ld
maybe-configure-stageautoprofile-ld:

.PHONY: configure-stageautofeedback-ld maybe-configure-stageautofeedback-ld
maybe-configure-stageautofeedback-ld:





.PHONY: all-ld maybe-all-ld
maybe-all-ld:
TARGET-ld=all
maybe-all-ld: all-ld
all-ld: configure-ld
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-ld))



.PHONY: all-stage1-ld maybe-all-stage1-ld
.PHONY: clean-stage1-ld maybe-clean-stage1-ld
maybe-all-stage1-ld:
maybe-clean-stage1-ld:


.PHONY: all-stage2-ld maybe-all-stage2-ld
.PHONY: clean-stage2-ld maybe-clean-stage2-ld
maybe-all-stage2-ld:
maybe-clean-stage2-ld:


.PHONY: all-stage3-ld maybe-all-stage3-ld
.PHONY: clean-stage3-ld maybe-clean-stage3-ld
maybe-all-stage3-ld:
maybe-clean-stage3-ld:


.PHONY: all-stage4-ld maybe-all-stage4-ld
.PHONY: clean-stage4-ld maybe-clean-stage4-ld
maybe-all-stage4-ld:
maybe-clean-stage4-ld:


.PHONY: all-stageprofile-ld maybe-all-stageprofile-ld
.PHONY: clean-stageprofile-ld maybe-clean-stageprofile-ld
maybe-all-stageprofile-ld:
maybe-clean-stageprofile-ld:


.PHONY: all-stagetrain-ld maybe-all-stagetrain-ld
.PHONY: clean-stagetrain-ld maybe-clean-stagetrain-ld
maybe-all-stagetrain-ld:
maybe-clean-stagetrain-ld:


.PHONY: all-stagefeedback-ld maybe-all-stagefeedback-ld
.PHONY: clean-stagefeedback-ld maybe-clean-stagefeedback-ld
maybe-all-stagefeedback-ld:
maybe-clean-stagefeedback-ld:


.PHONY: all-stageautoprofile-ld maybe-all-stageautoprofile-ld
.PHONY: clean-stageautoprofile-ld maybe-clean-stageautoprofile-ld
maybe-all-stageautoprofile-ld:
maybe-clean-stageautoprofile-ld:


.PHONY: all-stageautofeedback-ld maybe-all-stageautofeedback-ld
.PHONY: clean-stageautofeedback-ld maybe-clean-stageautofeedback-ld
maybe-all-stageautofeedback-ld:
maybe-clean-stageautofeedback-ld:





.PHONY: check-ld maybe-check-ld
maybe-check-ld:
maybe-check-ld: check-ld

check-ld:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-ld maybe-install-ld
maybe-install-ld:
maybe-install-ld: install-ld

install-ld: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-ld maybe-install-strip-ld
maybe-install-strip-ld:
maybe-install-strip-ld: install-strip-ld

install-strip-ld: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-ld info-ld
maybe-info-ld:
maybe-info-ld: info-ld

info-ld: \
    configure-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-ld dvi-ld
maybe-dvi-ld:
maybe-dvi-ld: dvi-ld

dvi-ld: \
    configure-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-ld pdf-ld
maybe-pdf-ld:
maybe-pdf-ld: pdf-ld

pdf-ld: \
    configure-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-ld html-ld
maybe-html-ld:
maybe-html-ld: html-ld

html-ld: \
    configure-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-ld TAGS-ld
maybe-TAGS-ld:
maybe-TAGS-ld: TAGS-ld

TAGS-ld: \
    configure-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-ld install-info-ld
maybe-install-info-ld:
maybe-install-info-ld: install-info-ld

install-info-ld: \
    configure-ld \
    info-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-ld install-dvi-ld
maybe-install-dvi-ld:
maybe-install-dvi-ld: install-dvi-ld

install-dvi-ld: \
    configure-ld \
    dvi-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-ld install-pdf-ld
maybe-install-pdf-ld:
maybe-install-pdf-ld: install-pdf-ld

install-pdf-ld: \
    configure-ld \
    pdf-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-ld install-html-ld
maybe-install-html-ld:
maybe-install-html-ld: install-html-ld

install-html-ld: \
    configure-ld \
    html-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-ld installcheck-ld
maybe-installcheck-ld:
maybe-installcheck-ld: installcheck-ld

installcheck-ld: \
    configure-ld 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-ld mostlyclean-ld
maybe-mostlyclean-ld:
maybe-mostlyclean-ld: mostlyclean-ld

mostlyclean-ld: 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-ld clean-ld
maybe-clean-ld:
maybe-clean-ld: clean-ld

clean-ld: 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-ld distclean-ld
maybe-distclean-ld:
maybe-distclean-ld: distclean-ld

distclean-ld: 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-ld maintainer-clean-ld
maybe-maintainer-clean-ld:
maybe-maintainer-clean-ld: maintainer-clean-ld

maintainer-clean-ld: 
	@[ -f ./ld/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in ld"; \
	(cd $(HOST_SUBDIR)/ld && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-libbacktrace maybe-configure-libbacktrace
maybe-configure-libbacktrace:
maybe-configure-libbacktrace: configure-libbacktrace
configure-libbacktrace: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/libbacktrace/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/libbacktrace; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/libbacktrace; \
	cd "$(HOST_SUBDIR)/libbacktrace" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/libbacktrace/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libbacktrace; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-libbacktrace maybe-configure-stage1-libbacktrace
maybe-configure-stage1-libbacktrace:

.PHONY: configure-stage2-libbacktrace maybe-configure-stage2-libbacktrace
maybe-configure-stage2-libbacktrace:

.PHONY: configure-stage3-libbacktrace maybe-configure-stage3-libbacktrace
maybe-configure-stage3-libbacktrace:

.PHONY: configure-stage4-libbacktrace maybe-configure-stage4-libbacktrace
maybe-configure-stage4-libbacktrace:

.PHONY: configure-stageprofile-libbacktrace maybe-configure-stageprofile-libbacktrace
maybe-configure-stageprofile-libbacktrace:

.PHONY: configure-stagetrain-libbacktrace maybe-configure-stagetrain-libbacktrace
maybe-configure-stagetrain-libbacktrace:

.PHONY: configure-stagefeedback-libbacktrace maybe-configure-stagefeedback-libbacktrace
maybe-configure-stagefeedback-libbacktrace:

.PHONY: configure-stageautoprofile-libbacktrace maybe-configure-stageautoprofile-libbacktrace
maybe-configure-stageautoprofile-libbacktrace:

.PHONY: configure-stageautofeedback-libbacktrace maybe-configure-stageautofeedback-libbacktrace
maybe-configure-stageautofeedback-libbacktrace:





.PHONY: all-libbacktrace maybe-all-libbacktrace
maybe-all-libbacktrace:
TARGET-libbacktrace=all
maybe-all-libbacktrace: all-libbacktrace
all-libbacktrace: configure-libbacktrace
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-libbacktrace))



.PHONY: all-stage1-libbacktrace maybe-all-stage1-libbacktrace
.PHONY: clean-stage1-libbacktrace maybe-clean-stage1-libbacktrace
maybe-all-stage1-libbacktrace:
maybe-clean-stage1-libbacktrace:


.PHONY: all-stage2-libbacktrace maybe-all-stage2-libbacktrace
.PHONY: clean-stage2-libbacktrace maybe-clean-stage2-libbacktrace
maybe-all-stage2-libbacktrace:
maybe-clean-stage2-libbacktrace:


.PHONY: all-stage3-libbacktrace maybe-all-stage3-libbacktrace
.PHONY: clean-stage3-libbacktrace maybe-clean-stage3-libbacktrace
maybe-all-stage3-libbacktrace:
maybe-clean-stage3-libbacktrace:


.PHONY: all-stage4-libbacktrace maybe-all-stage4-libbacktrace
.PHONY: clean-stage4-libbacktrace maybe-clean-stage4-libbacktrace
maybe-all-stage4-libbacktrace:
maybe-clean-stage4-libbacktrace:


.PHONY: all-stageprofile-libbacktrace maybe-all-stageprofile-libbacktrace
.PHONY: clean-stageprofile-libbacktrace maybe-clean-stageprofile-libbacktrace
maybe-all-stageprofile-libbacktrace:
maybe-clean-stageprofile-libbacktrace:


.PHONY: all-stagetrain-libbacktrace maybe-all-stagetrain-libbacktrace
.PHONY: clean-stagetrain-libbacktrace maybe-clean-stagetrain-libbacktrace
maybe-all-stagetrain-libbacktrace:
maybe-clean-stagetrain-libbacktrace:


.PHONY: all-stagefeedback-libbacktrace maybe-all-stagefeedback-libbacktrace
.PHONY: clean-stagefeedback-libbacktrace maybe-clean-stagefeedback-libbacktrace
maybe-all-stagefeedback-libbacktrace:
maybe-clean-stagefeedback-libbacktrace:


.PHONY: all-stageautoprofile-libbacktrace maybe-all-stageautoprofile-libbacktrace
.PHONY: clean-stageautoprofile-libbacktrace maybe-clean-stageautoprofile-libbacktrace
maybe-all-stageautoprofile-libbacktrace:
maybe-clean-stageautoprofile-libbacktrace:


.PHONY: all-stageautofeedback-libbacktrace maybe-all-stageautofeedback-libbacktrace
.PHONY: clean-stageautofeedback-libbacktrace maybe-clean-stageautofeedback-libbacktrace
maybe-all-stageautofeedback-libbacktrace:
maybe-clean-stageautofeedback-libbacktrace:





.PHONY: check-libbacktrace maybe-check-libbacktrace
maybe-check-libbacktrace:
maybe-check-libbacktrace: check-libbacktrace

check-libbacktrace:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-libbacktrace maybe-install-libbacktrace
maybe-install-libbacktrace:
maybe-install-libbacktrace: install-libbacktrace

install-libbacktrace: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-libbacktrace maybe-install-strip-libbacktrace
maybe-install-strip-libbacktrace:
maybe-install-strip-libbacktrace: install-strip-libbacktrace

install-strip-libbacktrace: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libbacktrace info-libbacktrace
maybe-info-libbacktrace:
maybe-info-libbacktrace: info-libbacktrace

info-libbacktrace: \
    configure-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-libbacktrace dvi-libbacktrace
maybe-dvi-libbacktrace:
maybe-dvi-libbacktrace: dvi-libbacktrace

dvi-libbacktrace: \
    configure-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-libbacktrace pdf-libbacktrace
maybe-pdf-libbacktrace:
maybe-pdf-libbacktrace: pdf-libbacktrace

pdf-libbacktrace: \
    configure-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-libbacktrace html-libbacktrace
maybe-html-libbacktrace:
maybe-html-libbacktrace: html-libbacktrace

html-libbacktrace: \
    configure-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-libbacktrace TAGS-libbacktrace
maybe-TAGS-libbacktrace:
maybe-TAGS-libbacktrace: TAGS-libbacktrace

TAGS-libbacktrace: \
    configure-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-libbacktrace install-info-libbacktrace
maybe-install-info-libbacktrace:
maybe-install-info-libbacktrace: install-info-libbacktrace

install-info-libbacktrace: \
    configure-libbacktrace \
    info-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-libbacktrace install-dvi-libbacktrace
maybe-install-dvi-libbacktrace:
maybe-install-dvi-libbacktrace: install-dvi-libbacktrace

install-dvi-libbacktrace: \
    configure-libbacktrace \
    dvi-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-libbacktrace install-pdf-libbacktrace
maybe-install-pdf-libbacktrace:
maybe-install-pdf-libbacktrace: install-pdf-libbacktrace

install-pdf-libbacktrace: \
    configure-libbacktrace \
    pdf-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-libbacktrace install-html-libbacktrace
maybe-install-html-libbacktrace:
maybe-install-html-libbacktrace: install-html-libbacktrace

install-html-libbacktrace: \
    configure-libbacktrace \
    html-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-libbacktrace installcheck-libbacktrace
maybe-installcheck-libbacktrace:
maybe-installcheck-libbacktrace: installcheck-libbacktrace

installcheck-libbacktrace: \
    configure-libbacktrace 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-libbacktrace mostlyclean-libbacktrace
maybe-mostlyclean-libbacktrace:
maybe-mostlyclean-libbacktrace: mostlyclean-libbacktrace

mostlyclean-libbacktrace: 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-libbacktrace clean-libbacktrace
maybe-clean-libbacktrace:
maybe-clean-libbacktrace: clean-libbacktrace

clean-libbacktrace: 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-libbacktrace distclean-libbacktrace
maybe-distclean-libbacktrace:
maybe-distclean-libbacktrace: distclean-libbacktrace

distclean-libbacktrace: 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-libbacktrace maintainer-clean-libbacktrace
maybe-maintainer-clean-libbacktrace:
maybe-maintainer-clean-libbacktrace: maintainer-clean-libbacktrace

maintainer-clean-libbacktrace: 
	@[ -f ./libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in libbacktrace"; \
	(cd $(HOST_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-libcpp maybe-configure-libcpp
maybe-configure-libcpp:
maybe-configure-libcpp: configure-libcpp
configure-libcpp: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/libcpp/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/libcpp; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/libcpp; \
	cd "$(HOST_SUBDIR)/libcpp" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/libcpp/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libcpp; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-libcpp maybe-configure-stage1-libcpp
maybe-configure-stage1-libcpp:

.PHONY: configure-stage2-libcpp maybe-configure-stage2-libcpp
maybe-configure-stage2-libcpp:

.PHONY: configure-stage3-libcpp maybe-configure-stage3-libcpp
maybe-configure-stage3-libcpp:

.PHONY: configure-stage4-libcpp maybe-configure-stage4-libcpp
maybe-configure-stage4-libcpp:

.PHONY: configure-stageprofile-libcpp maybe-configure-stageprofile-libcpp
maybe-configure-stageprofile-libcpp:

.PHONY: configure-stagetrain-libcpp maybe-configure-stagetrain-libcpp
maybe-configure-stagetrain-libcpp:

.PHONY: configure-stagefeedback-libcpp maybe-configure-stagefeedback-libcpp
maybe-configure-stagefeedback-libcpp:

.PHONY: configure-stageautoprofile-libcpp maybe-configure-stageautoprofile-libcpp
maybe-configure-stageautoprofile-libcpp:

.PHONY: configure-stageautofeedback-libcpp maybe-configure-stageautofeedback-libcpp
maybe-configure-stageautofeedback-libcpp:





.PHONY: all-libcpp maybe-all-libcpp
maybe-all-libcpp:
TARGET-libcpp=all
maybe-all-libcpp: all-libcpp
all-libcpp: configure-libcpp
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-libcpp))



.PHONY: all-stage1-libcpp maybe-all-stage1-libcpp
.PHONY: clean-stage1-libcpp maybe-clean-stage1-libcpp
maybe-all-stage1-libcpp:
maybe-clean-stage1-libcpp:


.PHONY: all-stage2-libcpp maybe-all-stage2-libcpp
.PHONY: clean-stage2-libcpp maybe-clean-stage2-libcpp
maybe-all-stage2-libcpp:
maybe-clean-stage2-libcpp:


.PHONY: all-stage3-libcpp maybe-all-stage3-libcpp
.PHONY: clean-stage3-libcpp maybe-clean-stage3-libcpp
maybe-all-stage3-libcpp:
maybe-clean-stage3-libcpp:


.PHONY: all-stage4-libcpp maybe-all-stage4-libcpp
.PHONY: clean-stage4-libcpp maybe-clean-stage4-libcpp
maybe-all-stage4-libcpp:
maybe-clean-stage4-libcpp:


.PHONY: all-stageprofile-libcpp maybe-all-stageprofile-libcpp
.PHONY: clean-stageprofile-libcpp maybe-clean-stageprofile-libcpp
maybe-all-stageprofile-libcpp:
maybe-clean-stageprofile-libcpp:


.PHONY: all-stagetrain-libcpp maybe-all-stagetrain-libcpp
.PHONY: clean-stagetrain-libcpp maybe-clean-stagetrain-libcpp
maybe-all-stagetrain-libcpp:
maybe-clean-stagetrain-libcpp:


.PHONY: all-stagefeedback-libcpp maybe-all-stagefeedback-libcpp
.PHONY: clean-stagefeedback-libcpp maybe-clean-stagefeedback-libcpp
maybe-all-stagefeedback-libcpp:
maybe-clean-stagefeedback-libcpp:


.PHONY: all-stageautoprofile-libcpp maybe-all-stageautoprofile-libcpp
.PHONY: clean-stageautoprofile-libcpp maybe-clean-stageautoprofile-libcpp
maybe-all-stageautoprofile-libcpp:
maybe-clean-stageautoprofile-libcpp:


.PHONY: all-stageautofeedback-libcpp maybe-all-stageautofeedback-libcpp
.PHONY: clean-stageautofeedback-libcpp maybe-clean-stageautofeedback-libcpp
maybe-all-stageautofeedback-libcpp:
maybe-clean-stageautofeedback-libcpp:





.PHONY: check-libcpp maybe-check-libcpp
maybe-check-libcpp:
maybe-check-libcpp: check-libcpp

check-libcpp:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-libcpp maybe-install-libcpp
maybe-install-libcpp:
maybe-install-libcpp: install-libcpp

install-libcpp: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-libcpp maybe-install-strip-libcpp
maybe-install-strip-libcpp:
maybe-install-strip-libcpp: install-strip-libcpp

install-strip-libcpp: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libcpp info-libcpp
maybe-info-libcpp:
maybe-info-libcpp: info-libcpp

info-libcpp: \
    configure-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-libcpp dvi-libcpp
maybe-dvi-libcpp:
maybe-dvi-libcpp: dvi-libcpp

dvi-libcpp: \
    configure-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-libcpp pdf-libcpp
maybe-pdf-libcpp:
maybe-pdf-libcpp: pdf-libcpp

pdf-libcpp: \
    configure-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-libcpp html-libcpp
maybe-html-libcpp:
maybe-html-libcpp: html-libcpp

html-libcpp: \
    configure-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-libcpp TAGS-libcpp
maybe-TAGS-libcpp:
maybe-TAGS-libcpp: TAGS-libcpp

TAGS-libcpp: \
    configure-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-libcpp install-info-libcpp
maybe-install-info-libcpp:
maybe-install-info-libcpp: install-info-libcpp

install-info-libcpp: \
    configure-libcpp \
    info-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-libcpp install-dvi-libcpp
maybe-install-dvi-libcpp:
maybe-install-dvi-libcpp: install-dvi-libcpp

install-dvi-libcpp: \
    configure-libcpp \
    dvi-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-libcpp install-pdf-libcpp
maybe-install-pdf-libcpp:
maybe-install-pdf-libcpp: install-pdf-libcpp

install-pdf-libcpp: \
    configure-libcpp \
    pdf-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-libcpp install-html-libcpp
maybe-install-html-libcpp:
maybe-install-html-libcpp: install-html-libcpp

install-html-libcpp: \
    configure-libcpp \
    html-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-libcpp installcheck-libcpp
maybe-installcheck-libcpp:
maybe-installcheck-libcpp: installcheck-libcpp

installcheck-libcpp: \
    configure-libcpp 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-libcpp mostlyclean-libcpp
maybe-mostlyclean-libcpp:
maybe-mostlyclean-libcpp: mostlyclean-libcpp

mostlyclean-libcpp: 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-libcpp clean-libcpp
maybe-clean-libcpp:
maybe-clean-libcpp: clean-libcpp

clean-libcpp: 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-libcpp distclean-libcpp
maybe-distclean-libcpp:
maybe-distclean-libcpp: distclean-libcpp

distclean-libcpp: 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-libcpp maintainer-clean-libcpp
maybe-maintainer-clean-libcpp:
maybe-maintainer-clean-libcpp: maintainer-clean-libcpp

maintainer-clean-libcpp: 
	@[ -f ./libcpp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in libcpp"; \
	(cd $(HOST_SUBDIR)/libcpp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-libcody maybe-configure-libcody
maybe-configure-libcody:
maybe-configure-libcody: configure-libcody
configure-libcody: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/libcody/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/libcody; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/libcody; \
	cd "$(HOST_SUBDIR)/libcody" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/libcody/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libcody; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-libcody maybe-configure-stage1-libcody
maybe-configure-stage1-libcody:

.PHONY: configure-stage2-libcody maybe-configure-stage2-libcody
maybe-configure-stage2-libcody:

.PHONY: configure-stage3-libcody maybe-configure-stage3-libcody
maybe-configure-stage3-libcody:

.PHONY: configure-stage4-libcody maybe-configure-stage4-libcody
maybe-configure-stage4-libcody:

.PHONY: configure-stageprofile-libcody maybe-configure-stageprofile-libcody
maybe-configure-stageprofile-libcody:

.PHONY: configure-stagetrain-libcody maybe-configure-stagetrain-libcody
maybe-configure-stagetrain-libcody:

.PHONY: configure-stagefeedback-libcody maybe-configure-stagefeedback-libcody
maybe-configure-stagefeedback-libcody:

.PHONY: configure-stageautoprofile-libcody maybe-configure-stageautoprofile-libcody
maybe-configure-stageautoprofile-libcody:

.PHONY: configure-stageautofeedback-libcody maybe-configure-stageautofeedback-libcody
maybe-configure-stageautofeedback-libcody:





.PHONY: all-libcody maybe-all-libcody
maybe-all-libcody:
TARGET-libcody=all
maybe-all-libcody: all-libcody
all-libcody: configure-libcody
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/libcody && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-libcody))



.PHONY: all-stage1-libcody maybe-all-stage1-libcody
.PHONY: clean-stage1-libcody maybe-clean-stage1-libcody
maybe-all-stage1-libcody:
maybe-clean-stage1-libcody:


.PHONY: all-stage2-libcody maybe-all-stage2-libcody
.PHONY: clean-stage2-libcody maybe-clean-stage2-libcody
maybe-all-stage2-libcody:
maybe-clean-stage2-libcody:


.PHONY: all-stage3-libcody maybe-all-stage3-libcody
.PHONY: clean-stage3-libcody maybe-clean-stage3-libcody
maybe-all-stage3-libcody:
maybe-clean-stage3-libcody:


.PHONY: all-stage4-libcody maybe-all-stage4-libcody
.PHONY: clean-stage4-libcody maybe-clean-stage4-libcody
maybe-all-stage4-libcody:
maybe-clean-stage4-libcody:


.PHONY: all-stageprofile-libcody maybe-all-stageprofile-libcody
.PHONY: clean-stageprofile-libcody maybe-clean-stageprofile-libcody
maybe-all-stageprofile-libcody:
maybe-clean-stageprofile-libcody:


.PHONY: all-stagetrain-libcody maybe-all-stagetrain-libcody
.PHONY: clean-stagetrain-libcody maybe-clean-stagetrain-libcody
maybe-all-stagetrain-libcody:
maybe-clean-stagetrain-libcody:


.PHONY: all-stagefeedback-libcody maybe-all-stagefeedback-libcody
.PHONY: clean-stagefeedback-libcody maybe-clean-stagefeedback-libcody
maybe-all-stagefeedback-libcody:
maybe-clean-stagefeedback-libcody:


.PHONY: all-stageautoprofile-libcody maybe-all-stageautoprofile-libcody
.PHONY: clean-stageautoprofile-libcody maybe-clean-stageautoprofile-libcody
maybe-all-stageautoprofile-libcody:
maybe-clean-stageautoprofile-libcody:


.PHONY: all-stageautofeedback-libcody maybe-all-stageautofeedback-libcody
.PHONY: clean-stageautofeedback-libcody maybe-clean-stageautofeedback-libcody
maybe-all-stageautofeedback-libcody:
maybe-clean-stageautofeedback-libcody:





.PHONY: check-libcody maybe-check-libcody
maybe-check-libcody:
maybe-check-libcody: check-libcody

check-libcody:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libcody && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-libcody maybe-install-libcody
maybe-install-libcody:
maybe-install-libcody: install-libcody

install-libcody:


.PHONY: install-strip-libcody maybe-install-strip-libcody
maybe-install-strip-libcody:
maybe-install-strip-libcody: install-strip-libcody

install-strip-libcody:


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libcody info-libcody
maybe-info-libcody:
maybe-info-libcody: info-libcody

# libcody doesn't support info.
info-libcody:


.PHONY: maybe-dvi-libcody dvi-libcody
maybe-dvi-libcody:
maybe-dvi-libcody: dvi-libcody

# libcody doesn't support dvi.
dvi-libcody:


.PHONY: maybe-pdf-libcody pdf-libcody
maybe-pdf-libcody:
maybe-pdf-libcody: pdf-libcody

# libcody doesn't support pdf.
pdf-libcody:


.PHONY: maybe-html-libcody html-libcody
maybe-html-libcody:
maybe-html-libcody: html-libcody

# libcody doesn't support html.
html-libcody:


.PHONY: maybe-TAGS-libcody TAGS-libcody
maybe-TAGS-libcody:
maybe-TAGS-libcody: TAGS-libcody

# libcody doesn't support TAGS.
TAGS-libcody:


.PHONY: maybe-install-info-libcody install-info-libcody
maybe-install-info-libcody:
maybe-install-info-libcody: install-info-libcody

# libcody doesn't support install-info.
install-info-libcody:


.PHONY: maybe-install-dvi-libcody install-dvi-libcody
maybe-install-dvi-libcody:
maybe-install-dvi-libcody: install-dvi-libcody

# libcody doesn't support install-dvi.
install-dvi-libcody:


.PHONY: maybe-install-pdf-libcody install-pdf-libcody
maybe-install-pdf-libcody:
maybe-install-pdf-libcody: install-pdf-libcody

# libcody doesn't support install-pdf.
install-pdf-libcody:


.PHONY: maybe-install-html-libcody install-html-libcody
maybe-install-html-libcody:
maybe-install-html-libcody: install-html-libcody

# libcody doesn't support install-html.
install-html-libcody:


.PHONY: maybe-installcheck-libcody installcheck-libcody
maybe-installcheck-libcody:
maybe-installcheck-libcody: installcheck-libcody

installcheck-libcody: \
    configure-libcody 
	@[ -f ./libcody/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in libcody"; \
	(cd $(HOST_SUBDIR)/libcody && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-libcody mostlyclean-libcody
maybe-mostlyclean-libcody:
maybe-mostlyclean-libcody: mostlyclean-libcody

mostlyclean-libcody: 
	@[ -f ./libcody/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in libcody"; \
	(cd $(HOST_SUBDIR)/libcody && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-libcody clean-libcody
maybe-clean-libcody:
maybe-clean-libcody: clean-libcody

clean-libcody: 
	@[ -f ./libcody/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in libcody"; \
	(cd $(HOST_SUBDIR)/libcody && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-libcody distclean-libcody
maybe-distclean-libcody:
maybe-distclean-libcody: distclean-libcody

distclean-libcody: 
	@[ -f ./libcody/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in libcody"; \
	(cd $(HOST_SUBDIR)/libcody && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-libcody maintainer-clean-libcody
maybe-maintainer-clean-libcody:
maybe-maintainer-clean-libcody: maintainer-clean-libcody

maintainer-clean-libcody: 
	@[ -f ./libcody/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in libcody"; \
	(cd $(HOST_SUBDIR)/libcody && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-libdecnumber maybe-configure-libdecnumber
maybe-configure-libdecnumber:
maybe-configure-libdecnumber: configure-libdecnumber
configure-libdecnumber: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/libdecnumber/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/libdecnumber; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/libdecnumber; \
	cd "$(HOST_SUBDIR)/libdecnumber" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/libdecnumber/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libdecnumber; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-libdecnumber maybe-configure-stage1-libdecnumber
maybe-configure-stage1-libdecnumber:

.PHONY: configure-stage2-libdecnumber maybe-configure-stage2-libdecnumber
maybe-configure-stage2-libdecnumber:

.PHONY: configure-stage3-libdecnumber maybe-configure-stage3-libdecnumber
maybe-configure-stage3-libdecnumber:

.PHONY: configure-stage4-libdecnumber maybe-configure-stage4-libdecnumber
maybe-configure-stage4-libdecnumber:

.PHONY: configure-stageprofile-libdecnumber maybe-configure-stageprofile-libdecnumber
maybe-configure-stageprofile-libdecnumber:

.PHONY: configure-stagetrain-libdecnumber maybe-configure-stagetrain-libdecnumber
maybe-configure-stagetrain-libdecnumber:

.PHONY: configure-stagefeedback-libdecnumber maybe-configure-stagefeedback-libdecnumber
maybe-configure-stagefeedback-libdecnumber:

.PHONY: configure-stageautoprofile-libdecnumber maybe-configure-stageautoprofile-libdecnumber
maybe-configure-stageautoprofile-libdecnumber:

.PHONY: configure-stageautofeedback-libdecnumber maybe-configure-stageautofeedback-libdecnumber
maybe-configure-stageautofeedback-libdecnumber:





.PHONY: all-libdecnumber maybe-all-libdecnumber
maybe-all-libdecnumber:
TARGET-libdecnumber=all
maybe-all-libdecnumber: all-libdecnumber
all-libdecnumber: configure-libdecnumber
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-libdecnumber))



.PHONY: all-stage1-libdecnumber maybe-all-stage1-libdecnumber
.PHONY: clean-stage1-libdecnumber maybe-clean-stage1-libdecnumber
maybe-all-stage1-libdecnumber:
maybe-clean-stage1-libdecnumber:


.PHONY: all-stage2-libdecnumber maybe-all-stage2-libdecnumber
.PHONY: clean-stage2-libdecnumber maybe-clean-stage2-libdecnumber
maybe-all-stage2-libdecnumber:
maybe-clean-stage2-libdecnumber:


.PHONY: all-stage3-libdecnumber maybe-all-stage3-libdecnumber
.PHONY: clean-stage3-libdecnumber maybe-clean-stage3-libdecnumber
maybe-all-stage3-libdecnumber:
maybe-clean-stage3-libdecnumber:


.PHONY: all-stage4-libdecnumber maybe-all-stage4-libdecnumber
.PHONY: clean-stage4-libdecnumber maybe-clean-stage4-libdecnumber
maybe-all-stage4-libdecnumber:
maybe-clean-stage4-libdecnumber:


.PHONY: all-stageprofile-libdecnumber maybe-all-stageprofile-libdecnumber
.PHONY: clean-stageprofile-libdecnumber maybe-clean-stageprofile-libdecnumber
maybe-all-stageprofile-libdecnumber:
maybe-clean-stageprofile-libdecnumber:


.PHONY: all-stagetrain-libdecnumber maybe-all-stagetrain-libdecnumber
.PHONY: clean-stagetrain-libdecnumber maybe-clean-stagetrain-libdecnumber
maybe-all-stagetrain-libdecnumber:
maybe-clean-stagetrain-libdecnumber:


.PHONY: all-stagefeedback-libdecnumber maybe-all-stagefeedback-libdecnumber
.PHONY: clean-stagefeedback-libdecnumber maybe-clean-stagefeedback-libdecnumber
maybe-all-stagefeedback-libdecnumber:
maybe-clean-stagefeedback-libdecnumber:


.PHONY: all-stageautoprofile-libdecnumber maybe-all-stageautoprofile-libdecnumber
.PHONY: clean-stageautoprofile-libdecnumber maybe-clean-stageautoprofile-libdecnumber
maybe-all-stageautoprofile-libdecnumber:
maybe-clean-stageautoprofile-libdecnumber:


.PHONY: all-stageautofeedback-libdecnumber maybe-all-stageautofeedback-libdecnumber
.PHONY: clean-stageautofeedback-libdecnumber maybe-clean-stageautofeedback-libdecnumber
maybe-all-stageautofeedback-libdecnumber:
maybe-clean-stageautofeedback-libdecnumber:





.PHONY: check-libdecnumber maybe-check-libdecnumber
maybe-check-libdecnumber:
maybe-check-libdecnumber: check-libdecnumber

check-libdecnumber:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-libdecnumber maybe-install-libdecnumber
maybe-install-libdecnumber:
maybe-install-libdecnumber: install-libdecnumber

install-libdecnumber: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-libdecnumber maybe-install-strip-libdecnumber
maybe-install-strip-libdecnumber:
maybe-install-strip-libdecnumber: install-strip-libdecnumber

install-strip-libdecnumber: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libdecnumber info-libdecnumber
maybe-info-libdecnumber:
maybe-info-libdecnumber: info-libdecnumber

info-libdecnumber: \
    configure-libdecnumber 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-libdecnumber dvi-libdecnumber
maybe-dvi-libdecnumber:
maybe-dvi-libdecnumber: dvi-libdecnumber

dvi-libdecnumber: \
    configure-libdecnumber 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-libdecnumber pdf-libdecnumber
maybe-pdf-libdecnumber:
maybe-pdf-libdecnumber: pdf-libdecnumber

pdf-libdecnumber: \
    configure-libdecnumber 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-libdecnumber html-libdecnumber
maybe-html-libdecnumber:
maybe-html-libdecnumber: html-libdecnumber

html-libdecnumber: \
    configure-libdecnumber 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-libdecnumber TAGS-libdecnumber
maybe-TAGS-libdecnumber:
maybe-TAGS-libdecnumber: TAGS-libdecnumber

# libdecnumber doesn't support TAGS.
TAGS-libdecnumber:


.PHONY: maybe-install-info-libdecnumber install-info-libdecnumber
maybe-install-info-libdecnumber:
maybe-install-info-libdecnumber: install-info-libdecnumber

install-info-libdecnumber: \
    configure-libdecnumber \
    info-libdecnumber 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-libdecnumber install-dvi-libdecnumber
maybe-install-dvi-libdecnumber:
maybe-install-dvi-libdecnumber: install-dvi-libdecnumber

install-dvi-libdecnumber: \
    configure-libdecnumber \
    dvi-libdecnumber 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-libdecnumber install-pdf-libdecnumber
maybe-install-pdf-libdecnumber:
maybe-install-pdf-libdecnumber: install-pdf-libdecnumber

install-pdf-libdecnumber: \
    configure-libdecnumber \
    pdf-libdecnumber 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-libdecnumber install-html-libdecnumber
maybe-install-html-libdecnumber:
maybe-install-html-libdecnumber: install-html-libdecnumber

install-html-libdecnumber: \
    configure-libdecnumber \
    html-libdecnumber 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-libdecnumber installcheck-libdecnumber
maybe-installcheck-libdecnumber:
maybe-installcheck-libdecnumber: installcheck-libdecnumber

installcheck-libdecnumber: \
    configure-libdecnumber 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-libdecnumber mostlyclean-libdecnumber
maybe-mostlyclean-libdecnumber:
maybe-mostlyclean-libdecnumber: mostlyclean-libdecnumber

mostlyclean-libdecnumber: 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-libdecnumber clean-libdecnumber
maybe-clean-libdecnumber:
maybe-clean-libdecnumber: clean-libdecnumber

clean-libdecnumber: 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-libdecnumber distclean-libdecnumber
maybe-distclean-libdecnumber:
maybe-distclean-libdecnumber: distclean-libdecnumber

distclean-libdecnumber: 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-libdecnumber maintainer-clean-libdecnumber
maybe-maintainer-clean-libdecnumber:
maybe-maintainer-clean-libdecnumber: maintainer-clean-libdecnumber

maintainer-clean-libdecnumber: 
	@[ -f ./libdecnumber/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in libdecnumber"; \
	(cd $(HOST_SUBDIR)/libdecnumber && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-libgui maybe-configure-libgui
maybe-configure-libgui:





.PHONY: all-libgui maybe-all-libgui
maybe-all-libgui:




.PHONY: check-libgui maybe-check-libgui
maybe-check-libgui:

.PHONY: install-libgui maybe-install-libgui
maybe-install-libgui:

.PHONY: install-strip-libgui maybe-install-strip-libgui
maybe-install-strip-libgui:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libgui info-libgui
maybe-info-libgui:

.PHONY: maybe-dvi-libgui dvi-libgui
maybe-dvi-libgui:

.PHONY: maybe-pdf-libgui pdf-libgui
maybe-pdf-libgui:

.PHONY: maybe-html-libgui html-libgui
maybe-html-libgui:

.PHONY: maybe-TAGS-libgui TAGS-libgui
maybe-TAGS-libgui:

.PHONY: maybe-install-info-libgui install-info-libgui
maybe-install-info-libgui:

.PHONY: maybe-install-dvi-libgui install-dvi-libgui
maybe-install-dvi-libgui:

.PHONY: maybe-install-pdf-libgui install-pdf-libgui
maybe-install-pdf-libgui:

.PHONY: maybe-install-html-libgui install-html-libgui
maybe-install-html-libgui:

.PHONY: maybe-installcheck-libgui installcheck-libgui
maybe-installcheck-libgui:

.PHONY: maybe-mostlyclean-libgui mostlyclean-libgui
maybe-mostlyclean-libgui:

.PHONY: maybe-clean-libgui clean-libgui
maybe-clean-libgui:

.PHONY: maybe-distclean-libgui distclean-libgui
maybe-distclean-libgui:

.PHONY: maybe-maintainer-clean-libgui maintainer-clean-libgui
maybe-maintainer-clean-libgui:



.PHONY: configure-libiberty maybe-configure-libiberty
maybe-configure-libiberty:
maybe-configure-libiberty: configure-libiberty
configure-libiberty: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/libiberty/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/libiberty; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/libiberty; \
	cd "$(HOST_SUBDIR)/libiberty" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/libiberty/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libiberty; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias} --enable-shared \
	  || exit 1



.PHONY: configure-stage1-libiberty maybe-configure-stage1-libiberty
maybe-configure-stage1-libiberty:

.PHONY: configure-stage2-libiberty maybe-configure-stage2-libiberty
maybe-configure-stage2-libiberty:

.PHONY: configure-stage3-libiberty maybe-configure-stage3-libiberty
maybe-configure-stage3-libiberty:

.PHONY: configure-stage4-libiberty maybe-configure-stage4-libiberty
maybe-configure-stage4-libiberty:

.PHONY: configure-stageprofile-libiberty maybe-configure-stageprofile-libiberty
maybe-configure-stageprofile-libiberty:

.PHONY: configure-stagetrain-libiberty maybe-configure-stagetrain-libiberty
maybe-configure-stagetrain-libiberty:

.PHONY: configure-stagefeedback-libiberty maybe-configure-stagefeedback-libiberty
maybe-configure-stagefeedback-libiberty:

.PHONY: configure-stageautoprofile-libiberty maybe-configure-stageautoprofile-libiberty
maybe-configure-stageautoprofile-libiberty:

.PHONY: configure-stageautofeedback-libiberty maybe-configure-stageautofeedback-libiberty
maybe-configure-stageautofeedback-libiberty:





.PHONY: all-libiberty maybe-all-libiberty
maybe-all-libiberty:
TARGET-libiberty=all
maybe-all-libiberty: all-libiberty
all-libiberty: configure-libiberty
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-libiberty))



.PHONY: all-stage1-libiberty maybe-all-stage1-libiberty
.PHONY: clean-stage1-libiberty maybe-clean-stage1-libiberty
maybe-all-stage1-libiberty:
maybe-clean-stage1-libiberty:


.PHONY: all-stage2-libiberty maybe-all-stage2-libiberty
.PHONY: clean-stage2-libiberty maybe-clean-stage2-libiberty
maybe-all-stage2-libiberty:
maybe-clean-stage2-libiberty:


.PHONY: all-stage3-libiberty maybe-all-stage3-libiberty
.PHONY: clean-stage3-libiberty maybe-clean-stage3-libiberty
maybe-all-stage3-libiberty:
maybe-clean-stage3-libiberty:


.PHONY: all-stage4-libiberty maybe-all-stage4-libiberty
.PHONY: clean-stage4-libiberty maybe-clean-stage4-libiberty
maybe-all-stage4-libiberty:
maybe-clean-stage4-libiberty:


.PHONY: all-stageprofile-libiberty maybe-all-stageprofile-libiberty
.PHONY: clean-stageprofile-libiberty maybe-clean-stageprofile-libiberty
maybe-all-stageprofile-libiberty:
maybe-clean-stageprofile-libiberty:


.PHONY: all-stagetrain-libiberty maybe-all-stagetrain-libiberty
.PHONY: clean-stagetrain-libiberty maybe-clean-stagetrain-libiberty
maybe-all-stagetrain-libiberty:
maybe-clean-stagetrain-libiberty:


.PHONY: all-stagefeedback-libiberty maybe-all-stagefeedback-libiberty
.PHONY: clean-stagefeedback-libiberty maybe-clean-stagefeedback-libiberty
maybe-all-stagefeedback-libiberty:
maybe-clean-stagefeedback-libiberty:


.PHONY: all-stageautoprofile-libiberty maybe-all-stageautoprofile-libiberty
.PHONY: clean-stageautoprofile-libiberty maybe-clean-stageautoprofile-libiberty
maybe-all-stageautoprofile-libiberty:
maybe-clean-stageautoprofile-libiberty:


.PHONY: all-stageautofeedback-libiberty maybe-all-stageautofeedback-libiberty
.PHONY: clean-stageautofeedback-libiberty maybe-clean-stageautofeedback-libiberty
maybe-all-stageautofeedback-libiberty:
maybe-clean-stageautofeedback-libiberty:





.PHONY: check-libiberty maybe-check-libiberty
maybe-check-libiberty:
maybe-check-libiberty: check-libiberty

check-libiberty:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-libiberty maybe-install-libiberty
maybe-install-libiberty:
maybe-install-libiberty: install-libiberty

install-libiberty: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-libiberty maybe-install-strip-libiberty
maybe-install-strip-libiberty:
maybe-install-strip-libiberty: install-strip-libiberty

install-strip-libiberty: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libiberty info-libiberty
maybe-info-libiberty:
maybe-info-libiberty: info-libiberty

info-libiberty: \
    configure-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-libiberty dvi-libiberty
maybe-dvi-libiberty:
maybe-dvi-libiberty: dvi-libiberty

dvi-libiberty: \
    configure-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-libiberty pdf-libiberty
maybe-pdf-libiberty:
maybe-pdf-libiberty: pdf-libiberty

pdf-libiberty: \
    configure-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-libiberty html-libiberty
maybe-html-libiberty:
maybe-html-libiberty: html-libiberty

html-libiberty: \
    configure-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-libiberty TAGS-libiberty
maybe-TAGS-libiberty:
maybe-TAGS-libiberty: TAGS-libiberty

TAGS-libiberty: \
    configure-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-libiberty install-info-libiberty
maybe-install-info-libiberty:
maybe-install-info-libiberty: install-info-libiberty

install-info-libiberty: \
    configure-libiberty \
    info-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-libiberty install-dvi-libiberty
maybe-install-dvi-libiberty:
maybe-install-dvi-libiberty: install-dvi-libiberty

install-dvi-libiberty: \
    configure-libiberty \
    dvi-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-libiberty install-pdf-libiberty
maybe-install-pdf-libiberty:
maybe-install-pdf-libiberty: install-pdf-libiberty

install-pdf-libiberty: \
    configure-libiberty \
    pdf-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-libiberty install-html-libiberty
maybe-install-html-libiberty:
maybe-install-html-libiberty: install-html-libiberty

install-html-libiberty: \
    configure-libiberty \
    html-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-libiberty installcheck-libiberty
maybe-installcheck-libiberty:
maybe-installcheck-libiberty: installcheck-libiberty

installcheck-libiberty: \
    configure-libiberty 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-libiberty mostlyclean-libiberty
maybe-mostlyclean-libiberty:
maybe-mostlyclean-libiberty: mostlyclean-libiberty

mostlyclean-libiberty: 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-libiberty clean-libiberty
maybe-clean-libiberty:
maybe-clean-libiberty: clean-libiberty

clean-libiberty: 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-libiberty distclean-libiberty
maybe-distclean-libiberty:
maybe-distclean-libiberty: distclean-libiberty

distclean-libiberty: 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-libiberty maintainer-clean-libiberty
maybe-maintainer-clean-libiberty:
maybe-maintainer-clean-libiberty: maintainer-clean-libiberty

maintainer-clean-libiberty: 
	@[ -f ./libiberty/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in libiberty"; \
	(cd $(HOST_SUBDIR)/libiberty && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-libiberty-linker-plugin maybe-configure-libiberty-linker-plugin
maybe-configure-libiberty-linker-plugin:



.PHONY: configure-stage1-libiberty-linker-plugin maybe-configure-stage1-libiberty-linker-plugin
maybe-configure-stage1-libiberty-linker-plugin:

.PHONY: configure-stage2-libiberty-linker-plugin maybe-configure-stage2-libiberty-linker-plugin
maybe-configure-stage2-libiberty-linker-plugin:

.PHONY: configure-stage3-libiberty-linker-plugin maybe-configure-stage3-libiberty-linker-plugin
maybe-configure-stage3-libiberty-linker-plugin:

.PHONY: configure-stage4-libiberty-linker-plugin maybe-configure-stage4-libiberty-linker-plugin
maybe-configure-stage4-libiberty-linker-plugin:

.PHONY: configure-stageprofile-libiberty-linker-plugin maybe-configure-stageprofile-libiberty-linker-plugin
maybe-configure-stageprofile-libiberty-linker-plugin:

.PHONY: configure-stagetrain-libiberty-linker-plugin maybe-configure-stagetrain-libiberty-linker-plugin
maybe-configure-stagetrain-libiberty-linker-plugin:

.PHONY: configure-stagefeedback-libiberty-linker-plugin maybe-configure-stagefeedback-libiberty-linker-plugin
maybe-configure-stagefeedback-libiberty-linker-plugin:

.PHONY: configure-stageautoprofile-libiberty-linker-plugin maybe-configure-stageautoprofile-libiberty-linker-plugin
maybe-configure-stageautoprofile-libiberty-linker-plugin:

.PHONY: configure-stageautofeedback-libiberty-linker-plugin maybe-configure-stageautofeedback-libiberty-linker-plugin
maybe-configure-stageautofeedback-libiberty-linker-plugin:





.PHONY: all-libiberty-linker-plugin maybe-all-libiberty-linker-plugin
maybe-all-libiberty-linker-plugin:



.PHONY: all-stage1-libiberty-linker-plugin maybe-all-stage1-libiberty-linker-plugin
.PHONY: clean-stage1-libiberty-linker-plugin maybe-clean-stage1-libiberty-linker-plugin
maybe-all-stage1-libiberty-linker-plugin:
maybe-clean-stage1-libiberty-linker-plugin:


.PHONY: all-stage2-libiberty-linker-plugin maybe-all-stage2-libiberty-linker-plugin
.PHONY: clean-stage2-libiberty-linker-plugin maybe-clean-stage2-libiberty-linker-plugin
maybe-all-stage2-libiberty-linker-plugin:
maybe-clean-stage2-libiberty-linker-plugin:


.PHONY: all-stage3-libiberty-linker-plugin maybe-all-stage3-libiberty-linker-plugin
.PHONY: clean-stage3-libiberty-linker-plugin maybe-clean-stage3-libiberty-linker-plugin
maybe-all-stage3-libiberty-linker-plugin:
maybe-clean-stage3-libiberty-linker-plugin:


.PHONY: all-stage4-libiberty-linker-plugin maybe-all-stage4-libiberty-linker-plugin
.PHONY: clean-stage4-libiberty-linker-plugin maybe-clean-stage4-libiberty-linker-plugin
maybe-all-stage4-libiberty-linker-plugin:
maybe-clean-stage4-libiberty-linker-plugin:


.PHONY: all-stageprofile-libiberty-linker-plugin maybe-all-stageprofile-libiberty-linker-plugin
.PHONY: clean-stageprofile-libiberty-linker-plugin maybe-clean-stageprofile-libiberty-linker-plugin
maybe-all-stageprofile-libiberty-linker-plugin:
maybe-clean-stageprofile-libiberty-linker-plugin:


.PHONY: all-stagetrain-libiberty-linker-plugin maybe-all-stagetrain-libiberty-linker-plugin
.PHONY: clean-stagetrain-libiberty-linker-plugin maybe-clean-stagetrain-libiberty-linker-plugin
maybe-all-stagetrain-libiberty-linker-plugin:
maybe-clean-stagetrain-libiberty-linker-plugin:


.PHONY: all-stagefeedback-libiberty-linker-plugin maybe-all-stagefeedback-libiberty-linker-plugin
.PHONY: clean-stagefeedback-libiberty-linker-plugin maybe-clean-stagefeedback-libiberty-linker-plugin
maybe-all-stagefeedback-libiberty-linker-plugin:
maybe-clean-stagefeedback-libiberty-linker-plugin:


.PHONY: all-stageautoprofile-libiberty-linker-plugin maybe-all-stageautoprofile-libiberty-linker-plugin
.PHONY: clean-stageautoprofile-libiberty-linker-plugin maybe-clean-stageautoprofile-libiberty-linker-plugin
maybe-all-stageautoprofile-libiberty-linker-plugin:
maybe-clean-stageautoprofile-libiberty-linker-plugin:


.PHONY: all-stageautofeedback-libiberty-linker-plugin maybe-all-stageautofeedback-libiberty-linker-plugin
.PHONY: clean-stageautofeedback-libiberty-linker-plugin maybe-clean-stageautofeedback-libiberty-linker-plugin
maybe-all-stageautofeedback-libiberty-linker-plugin:
maybe-clean-stageautofeedback-libiberty-linker-plugin:





.PHONY: check-libiberty-linker-plugin maybe-check-libiberty-linker-plugin
maybe-check-libiberty-linker-plugin:

.PHONY: install-libiberty-linker-plugin maybe-install-libiberty-linker-plugin
maybe-install-libiberty-linker-plugin:

.PHONY: install-strip-libiberty-linker-plugin maybe-install-strip-libiberty-linker-plugin
maybe-install-strip-libiberty-linker-plugin:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libiberty-linker-plugin info-libiberty-linker-plugin
maybe-info-libiberty-linker-plugin:

.PHONY: maybe-dvi-libiberty-linker-plugin dvi-libiberty-linker-plugin
maybe-dvi-libiberty-linker-plugin:

.PHONY: maybe-pdf-libiberty-linker-plugin pdf-libiberty-linker-plugin
maybe-pdf-libiberty-linker-plugin:

.PHONY: maybe-html-libiberty-linker-plugin html-libiberty-linker-plugin
maybe-html-libiberty-linker-plugin:

.PHONY: maybe-TAGS-libiberty-linker-plugin TAGS-libiberty-linker-plugin
maybe-TAGS-libiberty-linker-plugin:

.PHONY: maybe-install-info-libiberty-linker-plugin install-info-libiberty-linker-plugin
maybe-install-info-libiberty-linker-plugin:

.PHONY: maybe-install-dvi-libiberty-linker-plugin install-dvi-libiberty-linker-plugin
maybe-install-dvi-libiberty-linker-plugin:

.PHONY: maybe-install-pdf-libiberty-linker-plugin install-pdf-libiberty-linker-plugin
maybe-install-pdf-libiberty-linker-plugin:

.PHONY: maybe-install-html-libiberty-linker-plugin install-html-libiberty-linker-plugin
maybe-install-html-libiberty-linker-plugin:

.PHONY: maybe-installcheck-libiberty-linker-plugin installcheck-libiberty-linker-plugin
maybe-installcheck-libiberty-linker-plugin:

.PHONY: maybe-mostlyclean-libiberty-linker-plugin mostlyclean-libiberty-linker-plugin
maybe-mostlyclean-libiberty-linker-plugin:

.PHONY: maybe-clean-libiberty-linker-plugin clean-libiberty-linker-plugin
maybe-clean-libiberty-linker-plugin:

.PHONY: maybe-distclean-libiberty-linker-plugin distclean-libiberty-linker-plugin
maybe-distclean-libiberty-linker-plugin:

.PHONY: maybe-maintainer-clean-libiberty-linker-plugin maintainer-clean-libiberty-linker-plugin
maybe-maintainer-clean-libiberty-linker-plugin:



.PHONY: configure-libiconv maybe-configure-libiconv
maybe-configure-libiconv:



.PHONY: configure-stage1-libiconv maybe-configure-stage1-libiconv
maybe-configure-stage1-libiconv:

.PHONY: configure-stage2-libiconv maybe-configure-stage2-libiconv
maybe-configure-stage2-libiconv:

.PHONY: configure-stage3-libiconv maybe-configure-stage3-libiconv
maybe-configure-stage3-libiconv:

.PHONY: configure-stage4-libiconv maybe-configure-stage4-libiconv
maybe-configure-stage4-libiconv:

.PHONY: configure-stageprofile-libiconv maybe-configure-stageprofile-libiconv
maybe-configure-stageprofile-libiconv:

.PHONY: configure-stagetrain-libiconv maybe-configure-stagetrain-libiconv
maybe-configure-stagetrain-libiconv:

.PHONY: configure-stagefeedback-libiconv maybe-configure-stagefeedback-libiconv
maybe-configure-stagefeedback-libiconv:

.PHONY: configure-stageautoprofile-libiconv maybe-configure-stageautoprofile-libiconv
maybe-configure-stageautoprofile-libiconv:

.PHONY: configure-stageautofeedback-libiconv maybe-configure-stageautofeedback-libiconv
maybe-configure-stageautofeedback-libiconv:





.PHONY: all-libiconv maybe-all-libiconv
maybe-all-libiconv:



.PHONY: all-stage1-libiconv maybe-all-stage1-libiconv
.PHONY: clean-stage1-libiconv maybe-clean-stage1-libiconv
maybe-all-stage1-libiconv:
maybe-clean-stage1-libiconv:


.PHONY: all-stage2-libiconv maybe-all-stage2-libiconv
.PHONY: clean-stage2-libiconv maybe-clean-stage2-libiconv
maybe-all-stage2-libiconv:
maybe-clean-stage2-libiconv:


.PHONY: all-stage3-libiconv maybe-all-stage3-libiconv
.PHONY: clean-stage3-libiconv maybe-clean-stage3-libiconv
maybe-all-stage3-libiconv:
maybe-clean-stage3-libiconv:


.PHONY: all-stage4-libiconv maybe-all-stage4-libiconv
.PHONY: clean-stage4-libiconv maybe-clean-stage4-libiconv
maybe-all-stage4-libiconv:
maybe-clean-stage4-libiconv:


.PHONY: all-stageprofile-libiconv maybe-all-stageprofile-libiconv
.PHONY: clean-stageprofile-libiconv maybe-clean-stageprofile-libiconv
maybe-all-stageprofile-libiconv:
maybe-clean-stageprofile-libiconv:


.PHONY: all-stagetrain-libiconv maybe-all-stagetrain-libiconv
.PHONY: clean-stagetrain-libiconv maybe-clean-stagetrain-libiconv
maybe-all-stagetrain-libiconv:
maybe-clean-stagetrain-libiconv:


.PHONY: all-stagefeedback-libiconv maybe-all-stagefeedback-libiconv
.PHONY: clean-stagefeedback-libiconv maybe-clean-stagefeedback-libiconv
maybe-all-stagefeedback-libiconv:
maybe-clean-stagefeedback-libiconv:


.PHONY: all-stageautoprofile-libiconv maybe-all-stageautoprofile-libiconv
.PHONY: clean-stageautoprofile-libiconv maybe-clean-stageautoprofile-libiconv
maybe-all-stageautoprofile-libiconv:
maybe-clean-stageautoprofile-libiconv:


.PHONY: all-stageautofeedback-libiconv maybe-all-stageautofeedback-libiconv
.PHONY: clean-stageautofeedback-libiconv maybe-clean-stageautofeedback-libiconv
maybe-all-stageautofeedback-libiconv:
maybe-clean-stageautofeedback-libiconv:





.PHONY: check-libiconv maybe-check-libiconv
maybe-check-libiconv:

.PHONY: install-libiconv maybe-install-libiconv
maybe-install-libiconv:

.PHONY: install-strip-libiconv maybe-install-strip-libiconv
maybe-install-strip-libiconv:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libiconv info-libiconv
maybe-info-libiconv:

.PHONY: maybe-dvi-libiconv dvi-libiconv
maybe-dvi-libiconv:

.PHONY: maybe-pdf-libiconv pdf-libiconv
maybe-pdf-libiconv:

.PHONY: maybe-html-libiconv html-libiconv
maybe-html-libiconv:

.PHONY: maybe-TAGS-libiconv TAGS-libiconv
maybe-TAGS-libiconv:

.PHONY: maybe-install-info-libiconv install-info-libiconv
maybe-install-info-libiconv:

.PHONY: maybe-install-dvi-libiconv install-dvi-libiconv
maybe-install-dvi-libiconv:

.PHONY: maybe-install-pdf-libiconv install-pdf-libiconv
maybe-install-pdf-libiconv:

.PHONY: maybe-install-html-libiconv install-html-libiconv
maybe-install-html-libiconv:

.PHONY: maybe-installcheck-libiconv installcheck-libiconv
maybe-installcheck-libiconv:

.PHONY: maybe-mostlyclean-libiconv mostlyclean-libiconv
maybe-mostlyclean-libiconv:

.PHONY: maybe-clean-libiconv clean-libiconv
maybe-clean-libiconv:

.PHONY: maybe-distclean-libiconv distclean-libiconv
maybe-distclean-libiconv:

.PHONY: maybe-maintainer-clean-libiconv maintainer-clean-libiconv
maybe-maintainer-clean-libiconv:



.PHONY: configure-m4 maybe-configure-m4
maybe-configure-m4:





.PHONY: all-m4 maybe-all-m4
maybe-all-m4:




.PHONY: check-m4 maybe-check-m4
maybe-check-m4:

.PHONY: install-m4 maybe-install-m4
maybe-install-m4:

.PHONY: install-strip-m4 maybe-install-strip-m4
maybe-install-strip-m4:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-m4 info-m4
maybe-info-m4:

.PHONY: maybe-dvi-m4 dvi-m4
maybe-dvi-m4:

.PHONY: maybe-pdf-m4 pdf-m4
maybe-pdf-m4:

.PHONY: maybe-html-m4 html-m4
maybe-html-m4:

.PHONY: maybe-TAGS-m4 TAGS-m4
maybe-TAGS-m4:

.PHONY: maybe-install-info-m4 install-info-m4
maybe-install-info-m4:

.PHONY: maybe-install-dvi-m4 install-dvi-m4
maybe-install-dvi-m4:

.PHONY: maybe-install-pdf-m4 install-pdf-m4
maybe-install-pdf-m4:

.PHONY: maybe-install-html-m4 install-html-m4
maybe-install-html-m4:

.PHONY: maybe-installcheck-m4 installcheck-m4
maybe-installcheck-m4:

.PHONY: maybe-mostlyclean-m4 mostlyclean-m4
maybe-mostlyclean-m4:

.PHONY: maybe-clean-m4 clean-m4
maybe-clean-m4:

.PHONY: maybe-distclean-m4 distclean-m4
maybe-distclean-m4:

.PHONY: maybe-maintainer-clean-m4 maintainer-clean-m4
maybe-maintainer-clean-m4:



.PHONY: configure-readline maybe-configure-readline
maybe-configure-readline:





.PHONY: all-readline maybe-all-readline
maybe-all-readline:




.PHONY: check-readline maybe-check-readline
maybe-check-readline:

.PHONY: install-readline maybe-install-readline
maybe-install-readline:

.PHONY: install-strip-readline maybe-install-strip-readline
maybe-install-strip-readline:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-readline info-readline
maybe-info-readline:

.PHONY: maybe-dvi-readline dvi-readline
maybe-dvi-readline:

.PHONY: maybe-pdf-readline pdf-readline
maybe-pdf-readline:

.PHONY: maybe-html-readline html-readline
maybe-html-readline:

.PHONY: maybe-TAGS-readline TAGS-readline
maybe-TAGS-readline:

.PHONY: maybe-install-info-readline install-info-readline
maybe-install-info-readline:

.PHONY: maybe-install-dvi-readline install-dvi-readline
maybe-install-dvi-readline:

.PHONY: maybe-install-pdf-readline install-pdf-readline
maybe-install-pdf-readline:

.PHONY: maybe-install-html-readline install-html-readline
maybe-install-html-readline:

.PHONY: maybe-installcheck-readline installcheck-readline
maybe-installcheck-readline:

.PHONY: maybe-mostlyclean-readline mostlyclean-readline
maybe-mostlyclean-readline:

.PHONY: maybe-clean-readline clean-readline
maybe-clean-readline:

.PHONY: maybe-distclean-readline distclean-readline
maybe-distclean-readline:

.PHONY: maybe-maintainer-clean-readline maintainer-clean-readline
maybe-maintainer-clean-readline:



.PHONY: configure-sid maybe-configure-sid
maybe-configure-sid:





.PHONY: all-sid maybe-all-sid
maybe-all-sid:




.PHONY: check-sid maybe-check-sid
maybe-check-sid:

.PHONY: install-sid maybe-install-sid
maybe-install-sid:

.PHONY: install-strip-sid maybe-install-strip-sid
maybe-install-strip-sid:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-sid info-sid
maybe-info-sid:

.PHONY: maybe-dvi-sid dvi-sid
maybe-dvi-sid:

.PHONY: maybe-pdf-sid pdf-sid
maybe-pdf-sid:

.PHONY: maybe-html-sid html-sid
maybe-html-sid:

.PHONY: maybe-TAGS-sid TAGS-sid
maybe-TAGS-sid:

.PHONY: maybe-install-info-sid install-info-sid
maybe-install-info-sid:

.PHONY: maybe-install-dvi-sid install-dvi-sid
maybe-install-dvi-sid:

.PHONY: maybe-install-pdf-sid install-pdf-sid
maybe-install-pdf-sid:

.PHONY: maybe-install-html-sid install-html-sid
maybe-install-html-sid:

.PHONY: maybe-installcheck-sid installcheck-sid
maybe-installcheck-sid:

.PHONY: maybe-mostlyclean-sid mostlyclean-sid
maybe-mostlyclean-sid:

.PHONY: maybe-clean-sid clean-sid
maybe-clean-sid:

.PHONY: maybe-distclean-sid distclean-sid
maybe-distclean-sid:

.PHONY: maybe-maintainer-clean-sid maintainer-clean-sid
maybe-maintainer-clean-sid:



.PHONY: configure-sim maybe-configure-sim
maybe-configure-sim:





.PHONY: all-sim maybe-all-sim
maybe-all-sim:




.PHONY: check-sim maybe-check-sim
maybe-check-sim:

.PHONY: install-sim maybe-install-sim
maybe-install-sim:

.PHONY: install-strip-sim maybe-install-strip-sim
maybe-install-strip-sim:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-sim info-sim
maybe-info-sim:

.PHONY: maybe-dvi-sim dvi-sim
maybe-dvi-sim:

.PHONY: maybe-pdf-sim pdf-sim
maybe-pdf-sim:

.PHONY: maybe-html-sim html-sim
maybe-html-sim:

.PHONY: maybe-TAGS-sim TAGS-sim
maybe-TAGS-sim:

.PHONY: maybe-install-info-sim install-info-sim
maybe-install-info-sim:

.PHONY: maybe-install-dvi-sim install-dvi-sim
maybe-install-dvi-sim:

.PHONY: maybe-install-pdf-sim install-pdf-sim
maybe-install-pdf-sim:

.PHONY: maybe-install-html-sim install-html-sim
maybe-install-html-sim:

.PHONY: maybe-installcheck-sim installcheck-sim
maybe-installcheck-sim:

.PHONY: maybe-mostlyclean-sim mostlyclean-sim
maybe-mostlyclean-sim:

.PHONY: maybe-clean-sim clean-sim
maybe-clean-sim:

.PHONY: maybe-distclean-sim distclean-sim
maybe-distclean-sim:

.PHONY: maybe-maintainer-clean-sim maintainer-clean-sim
maybe-maintainer-clean-sim:



.PHONY: configure-texinfo maybe-configure-texinfo
maybe-configure-texinfo:





.PHONY: all-texinfo maybe-all-texinfo
maybe-all-texinfo:




.PHONY: check-texinfo maybe-check-texinfo
maybe-check-texinfo:

.PHONY: install-texinfo maybe-install-texinfo
maybe-install-texinfo:

.PHONY: install-strip-texinfo maybe-install-strip-texinfo
maybe-install-strip-texinfo:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-texinfo info-texinfo
maybe-info-texinfo:

.PHONY: maybe-dvi-texinfo dvi-texinfo
maybe-dvi-texinfo:

.PHONY: maybe-pdf-texinfo pdf-texinfo
maybe-pdf-texinfo:

.PHONY: maybe-html-texinfo html-texinfo
maybe-html-texinfo:

.PHONY: maybe-TAGS-texinfo TAGS-texinfo
maybe-TAGS-texinfo:

.PHONY: maybe-install-info-texinfo install-info-texinfo
maybe-install-info-texinfo:

.PHONY: maybe-install-dvi-texinfo install-dvi-texinfo
maybe-install-dvi-texinfo:

.PHONY: maybe-install-pdf-texinfo install-pdf-texinfo
maybe-install-pdf-texinfo:

.PHONY: maybe-install-html-texinfo install-html-texinfo
maybe-install-html-texinfo:

.PHONY: maybe-installcheck-texinfo installcheck-texinfo
maybe-installcheck-texinfo:

.PHONY: maybe-mostlyclean-texinfo mostlyclean-texinfo
maybe-mostlyclean-texinfo:

.PHONY: maybe-clean-texinfo clean-texinfo
maybe-clean-texinfo:

.PHONY: maybe-distclean-texinfo distclean-texinfo
maybe-distclean-texinfo:

.PHONY: maybe-maintainer-clean-texinfo maintainer-clean-texinfo
maybe-maintainer-clean-texinfo:



.PHONY: configure-zlib maybe-configure-zlib
maybe-configure-zlib:
maybe-configure-zlib: configure-zlib
configure-zlib: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/zlib/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/zlib; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/zlib; \
	cd "$(HOST_SUBDIR)/zlib" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/zlib/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=zlib; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-zlib maybe-configure-stage1-zlib
maybe-configure-stage1-zlib:

.PHONY: configure-stage2-zlib maybe-configure-stage2-zlib
maybe-configure-stage2-zlib:

.PHONY: configure-stage3-zlib maybe-configure-stage3-zlib
maybe-configure-stage3-zlib:

.PHONY: configure-stage4-zlib maybe-configure-stage4-zlib
maybe-configure-stage4-zlib:

.PHONY: configure-stageprofile-zlib maybe-configure-stageprofile-zlib
maybe-configure-stageprofile-zlib:

.PHONY: configure-stagetrain-zlib maybe-configure-stagetrain-zlib
maybe-configure-stagetrain-zlib:

.PHONY: configure-stagefeedback-zlib maybe-configure-stagefeedback-zlib
maybe-configure-stagefeedback-zlib:

.PHONY: configure-stageautoprofile-zlib maybe-configure-stageautoprofile-zlib
maybe-configure-stageautoprofile-zlib:

.PHONY: configure-stageautofeedback-zlib maybe-configure-stageautofeedback-zlib
maybe-configure-stageautofeedback-zlib:





.PHONY: all-zlib maybe-all-zlib
maybe-all-zlib:
TARGET-zlib=all
maybe-all-zlib: all-zlib
all-zlib: configure-zlib
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-zlib))



.PHONY: all-stage1-zlib maybe-all-stage1-zlib
.PHONY: clean-stage1-zlib maybe-clean-stage1-zlib
maybe-all-stage1-zlib:
maybe-clean-stage1-zlib:


.PHONY: all-stage2-zlib maybe-all-stage2-zlib
.PHONY: clean-stage2-zlib maybe-clean-stage2-zlib
maybe-all-stage2-zlib:
maybe-clean-stage2-zlib:


.PHONY: all-stage3-zlib maybe-all-stage3-zlib
.PHONY: clean-stage3-zlib maybe-clean-stage3-zlib
maybe-all-stage3-zlib:
maybe-clean-stage3-zlib:


.PHONY: all-stage4-zlib maybe-all-stage4-zlib
.PHONY: clean-stage4-zlib maybe-clean-stage4-zlib
maybe-all-stage4-zlib:
maybe-clean-stage4-zlib:


.PHONY: all-stageprofile-zlib maybe-all-stageprofile-zlib
.PHONY: clean-stageprofile-zlib maybe-clean-stageprofile-zlib
maybe-all-stageprofile-zlib:
maybe-clean-stageprofile-zlib:


.PHONY: all-stagetrain-zlib maybe-all-stagetrain-zlib
.PHONY: clean-stagetrain-zlib maybe-clean-stagetrain-zlib
maybe-all-stagetrain-zlib:
maybe-clean-stagetrain-zlib:


.PHONY: all-stagefeedback-zlib maybe-all-stagefeedback-zlib
.PHONY: clean-stagefeedback-zlib maybe-clean-stagefeedback-zlib
maybe-all-stagefeedback-zlib:
maybe-clean-stagefeedback-zlib:


.PHONY: all-stageautoprofile-zlib maybe-all-stageautoprofile-zlib
.PHONY: clean-stageautoprofile-zlib maybe-clean-stageautoprofile-zlib
maybe-all-stageautoprofile-zlib:
maybe-clean-stageautoprofile-zlib:


.PHONY: all-stageautofeedback-zlib maybe-all-stageautofeedback-zlib
.PHONY: clean-stageautofeedback-zlib maybe-clean-stageautofeedback-zlib
maybe-all-stageautofeedback-zlib:
maybe-clean-stageautofeedback-zlib:





.PHONY: check-zlib maybe-check-zlib
maybe-check-zlib:
maybe-check-zlib: check-zlib

check-zlib:


.PHONY: install-zlib maybe-install-zlib
maybe-install-zlib:
maybe-install-zlib: install-zlib

install-zlib:


.PHONY: install-strip-zlib maybe-install-strip-zlib
maybe-install-strip-zlib:
maybe-install-strip-zlib: install-strip-zlib

install-strip-zlib:


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-zlib info-zlib
maybe-info-zlib:
maybe-info-zlib: info-zlib

info-zlib: \
    configure-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-zlib dvi-zlib
maybe-dvi-zlib:
maybe-dvi-zlib: dvi-zlib

dvi-zlib: \
    configure-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-zlib pdf-zlib
maybe-pdf-zlib:
maybe-pdf-zlib: pdf-zlib

pdf-zlib: \
    configure-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-zlib html-zlib
maybe-html-zlib:
maybe-html-zlib: html-zlib

html-zlib: \
    configure-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-zlib TAGS-zlib
maybe-TAGS-zlib:
maybe-TAGS-zlib: TAGS-zlib

TAGS-zlib: \
    configure-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-zlib install-info-zlib
maybe-install-info-zlib:
maybe-install-info-zlib: install-info-zlib

install-info-zlib: \
    configure-zlib \
    info-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-zlib install-dvi-zlib
maybe-install-dvi-zlib:
maybe-install-dvi-zlib: install-dvi-zlib

install-dvi-zlib: \
    configure-zlib \
    dvi-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-zlib install-pdf-zlib
maybe-install-pdf-zlib:
maybe-install-pdf-zlib: install-pdf-zlib

install-pdf-zlib: \
    configure-zlib \
    pdf-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-zlib install-html-zlib
maybe-install-html-zlib:
maybe-install-html-zlib: install-html-zlib

install-html-zlib: \
    configure-zlib \
    html-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-zlib installcheck-zlib
maybe-installcheck-zlib:
maybe-installcheck-zlib: installcheck-zlib

installcheck-zlib: \
    configure-zlib 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-zlib mostlyclean-zlib
maybe-mostlyclean-zlib:
maybe-mostlyclean-zlib: mostlyclean-zlib

mostlyclean-zlib: 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-zlib clean-zlib
maybe-clean-zlib:
maybe-clean-zlib: clean-zlib

clean-zlib: 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-zlib distclean-zlib
maybe-distclean-zlib:
maybe-distclean-zlib: distclean-zlib

distclean-zlib: 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-zlib maintainer-clean-zlib
maybe-maintainer-clean-zlib:
maybe-maintainer-clean-zlib: maintainer-clean-zlib

maintainer-clean-zlib: 
	@[ -f ./zlib/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in zlib"; \
	(cd $(HOST_SUBDIR)/zlib && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-gnulib maybe-configure-gnulib
maybe-configure-gnulib:





.PHONY: all-gnulib maybe-all-gnulib
maybe-all-gnulib:




.PHONY: check-gnulib maybe-check-gnulib
maybe-check-gnulib:

.PHONY: install-gnulib maybe-install-gnulib
maybe-install-gnulib:

.PHONY: install-strip-gnulib maybe-install-strip-gnulib
maybe-install-strip-gnulib:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gnulib info-gnulib
maybe-info-gnulib:

.PHONY: maybe-dvi-gnulib dvi-gnulib
maybe-dvi-gnulib:

.PHONY: maybe-pdf-gnulib pdf-gnulib
maybe-pdf-gnulib:

.PHONY: maybe-html-gnulib html-gnulib
maybe-html-gnulib:

.PHONY: maybe-TAGS-gnulib TAGS-gnulib
maybe-TAGS-gnulib:

.PHONY: maybe-install-info-gnulib install-info-gnulib
maybe-install-info-gnulib:

.PHONY: maybe-install-dvi-gnulib install-dvi-gnulib
maybe-install-dvi-gnulib:

.PHONY: maybe-install-pdf-gnulib install-pdf-gnulib
maybe-install-pdf-gnulib:

.PHONY: maybe-install-html-gnulib install-html-gnulib
maybe-install-html-gnulib:

.PHONY: maybe-installcheck-gnulib installcheck-gnulib
maybe-installcheck-gnulib:

.PHONY: maybe-mostlyclean-gnulib mostlyclean-gnulib
maybe-mostlyclean-gnulib:

.PHONY: maybe-clean-gnulib clean-gnulib
maybe-clean-gnulib:

.PHONY: maybe-distclean-gnulib distclean-gnulib
maybe-distclean-gnulib:

.PHONY: maybe-maintainer-clean-gnulib maintainer-clean-gnulib
maybe-maintainer-clean-gnulib:



.PHONY: configure-gdbsupport maybe-configure-gdbsupport
maybe-configure-gdbsupport:





.PHONY: all-gdbsupport maybe-all-gdbsupport
maybe-all-gdbsupport:




.PHONY: check-gdbsupport maybe-check-gdbsupport
maybe-check-gdbsupport:

.PHONY: install-gdbsupport maybe-install-gdbsupport
maybe-install-gdbsupport:

.PHONY: install-strip-gdbsupport maybe-install-strip-gdbsupport
maybe-install-strip-gdbsupport:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gdbsupport info-gdbsupport
maybe-info-gdbsupport:

.PHONY: maybe-dvi-gdbsupport dvi-gdbsupport
maybe-dvi-gdbsupport:

.PHONY: maybe-pdf-gdbsupport pdf-gdbsupport
maybe-pdf-gdbsupport:

.PHONY: maybe-html-gdbsupport html-gdbsupport
maybe-html-gdbsupport:

.PHONY: maybe-TAGS-gdbsupport TAGS-gdbsupport
maybe-TAGS-gdbsupport:

.PHONY: maybe-install-info-gdbsupport install-info-gdbsupport
maybe-install-info-gdbsupport:

.PHONY: maybe-install-dvi-gdbsupport install-dvi-gdbsupport
maybe-install-dvi-gdbsupport:

.PHONY: maybe-install-pdf-gdbsupport install-pdf-gdbsupport
maybe-install-pdf-gdbsupport:

.PHONY: maybe-install-html-gdbsupport install-html-gdbsupport
maybe-install-html-gdbsupport:

.PHONY: maybe-installcheck-gdbsupport installcheck-gdbsupport
maybe-installcheck-gdbsupport:

.PHONY: maybe-mostlyclean-gdbsupport mostlyclean-gdbsupport
maybe-mostlyclean-gdbsupport:

.PHONY: maybe-clean-gdbsupport clean-gdbsupport
maybe-clean-gdbsupport:

.PHONY: maybe-distclean-gdbsupport distclean-gdbsupport
maybe-distclean-gdbsupport:

.PHONY: maybe-maintainer-clean-gdbsupport maintainer-clean-gdbsupport
maybe-maintainer-clean-gdbsupport:



.PHONY: configure-gdbserver maybe-configure-gdbserver
maybe-configure-gdbserver:





.PHONY: all-gdbserver maybe-all-gdbserver
maybe-all-gdbserver:




.PHONY: check-gdbserver maybe-check-gdbserver
maybe-check-gdbserver:

.PHONY: install-gdbserver maybe-install-gdbserver
maybe-install-gdbserver:

.PHONY: install-strip-gdbserver maybe-install-strip-gdbserver
maybe-install-strip-gdbserver:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gdbserver info-gdbserver
maybe-info-gdbserver:

.PHONY: maybe-dvi-gdbserver dvi-gdbserver
maybe-dvi-gdbserver:

.PHONY: maybe-pdf-gdbserver pdf-gdbserver
maybe-pdf-gdbserver:

.PHONY: maybe-html-gdbserver html-gdbserver
maybe-html-gdbserver:

.PHONY: maybe-TAGS-gdbserver TAGS-gdbserver
maybe-TAGS-gdbserver:

.PHONY: maybe-install-info-gdbserver install-info-gdbserver
maybe-install-info-gdbserver:

.PHONY: maybe-install-dvi-gdbserver install-dvi-gdbserver
maybe-install-dvi-gdbserver:

.PHONY: maybe-install-pdf-gdbserver install-pdf-gdbserver
maybe-install-pdf-gdbserver:

.PHONY: maybe-install-html-gdbserver install-html-gdbserver
maybe-install-html-gdbserver:

.PHONY: maybe-installcheck-gdbserver installcheck-gdbserver
maybe-installcheck-gdbserver:

.PHONY: maybe-mostlyclean-gdbserver mostlyclean-gdbserver
maybe-mostlyclean-gdbserver:

.PHONY: maybe-clean-gdbserver clean-gdbserver
maybe-clean-gdbserver:

.PHONY: maybe-distclean-gdbserver distclean-gdbserver
maybe-distclean-gdbserver:

.PHONY: maybe-maintainer-clean-gdbserver maintainer-clean-gdbserver
maybe-maintainer-clean-gdbserver:



.PHONY: configure-gdb maybe-configure-gdb
maybe-configure-gdb:





.PHONY: all-gdb maybe-all-gdb
maybe-all-gdb:




.PHONY: check-gdb maybe-check-gdb
maybe-check-gdb:

.PHONY: install-gdb maybe-install-gdb
maybe-install-gdb:

.PHONY: install-strip-gdb maybe-install-strip-gdb
maybe-install-strip-gdb:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gdb info-gdb
maybe-info-gdb:

.PHONY: maybe-dvi-gdb dvi-gdb
maybe-dvi-gdb:

.PHONY: maybe-pdf-gdb pdf-gdb
maybe-pdf-gdb:

.PHONY: maybe-html-gdb html-gdb
maybe-html-gdb:

.PHONY: maybe-TAGS-gdb TAGS-gdb
maybe-TAGS-gdb:

.PHONY: maybe-install-info-gdb install-info-gdb
maybe-install-info-gdb:

.PHONY: maybe-install-dvi-gdb install-dvi-gdb
maybe-install-dvi-gdb:

.PHONY: maybe-install-pdf-gdb install-pdf-gdb
maybe-install-pdf-gdb:

.PHONY: maybe-install-html-gdb install-html-gdb
maybe-install-html-gdb:

.PHONY: maybe-installcheck-gdb installcheck-gdb
maybe-installcheck-gdb:

.PHONY: maybe-mostlyclean-gdb mostlyclean-gdb
maybe-mostlyclean-gdb:

.PHONY: maybe-clean-gdb clean-gdb
maybe-clean-gdb:

.PHONY: maybe-distclean-gdb distclean-gdb
maybe-distclean-gdb:

.PHONY: maybe-maintainer-clean-gdb maintainer-clean-gdb
maybe-maintainer-clean-gdb:



.PHONY: configure-expect maybe-configure-expect
maybe-configure-expect:





.PHONY: all-expect maybe-all-expect
maybe-all-expect:




.PHONY: check-expect maybe-check-expect
maybe-check-expect:

.PHONY: install-expect maybe-install-expect
maybe-install-expect:

.PHONY: install-strip-expect maybe-install-strip-expect
maybe-install-strip-expect:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-expect info-expect
maybe-info-expect:

.PHONY: maybe-dvi-expect dvi-expect
maybe-dvi-expect:

.PHONY: maybe-pdf-expect pdf-expect
maybe-pdf-expect:

.PHONY: maybe-html-expect html-expect
maybe-html-expect:

.PHONY: maybe-TAGS-expect TAGS-expect
maybe-TAGS-expect:

.PHONY: maybe-install-info-expect install-info-expect
maybe-install-info-expect:

.PHONY: maybe-install-dvi-expect install-dvi-expect
maybe-install-dvi-expect:

.PHONY: maybe-install-pdf-expect install-pdf-expect
maybe-install-pdf-expect:

.PHONY: maybe-install-html-expect install-html-expect
maybe-install-html-expect:

.PHONY: maybe-installcheck-expect installcheck-expect
maybe-installcheck-expect:

.PHONY: maybe-mostlyclean-expect mostlyclean-expect
maybe-mostlyclean-expect:

.PHONY: maybe-clean-expect clean-expect
maybe-clean-expect:

.PHONY: maybe-distclean-expect distclean-expect
maybe-distclean-expect:

.PHONY: maybe-maintainer-clean-expect maintainer-clean-expect
maybe-maintainer-clean-expect:



.PHONY: configure-guile maybe-configure-guile
maybe-configure-guile:





.PHONY: all-guile maybe-all-guile
maybe-all-guile:




.PHONY: check-guile maybe-check-guile
maybe-check-guile:

.PHONY: install-guile maybe-install-guile
maybe-install-guile:

.PHONY: install-strip-guile maybe-install-strip-guile
maybe-install-strip-guile:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-guile info-guile
maybe-info-guile:

.PHONY: maybe-dvi-guile dvi-guile
maybe-dvi-guile:

.PHONY: maybe-pdf-guile pdf-guile
maybe-pdf-guile:

.PHONY: maybe-html-guile html-guile
maybe-html-guile:

.PHONY: maybe-TAGS-guile TAGS-guile
maybe-TAGS-guile:

.PHONY: maybe-install-info-guile install-info-guile
maybe-install-info-guile:

.PHONY: maybe-install-dvi-guile install-dvi-guile
maybe-install-dvi-guile:

.PHONY: maybe-install-pdf-guile install-pdf-guile
maybe-install-pdf-guile:

.PHONY: maybe-install-html-guile install-html-guile
maybe-install-html-guile:

.PHONY: maybe-installcheck-guile installcheck-guile
maybe-installcheck-guile:

.PHONY: maybe-mostlyclean-guile mostlyclean-guile
maybe-mostlyclean-guile:

.PHONY: maybe-clean-guile clean-guile
maybe-clean-guile:

.PHONY: maybe-distclean-guile distclean-guile
maybe-distclean-guile:

.PHONY: maybe-maintainer-clean-guile maintainer-clean-guile
maybe-maintainer-clean-guile:



.PHONY: configure-tk maybe-configure-tk
maybe-configure-tk:





.PHONY: all-tk maybe-all-tk
maybe-all-tk:




.PHONY: check-tk maybe-check-tk
maybe-check-tk:

.PHONY: install-tk maybe-install-tk
maybe-install-tk:

.PHONY: install-strip-tk maybe-install-strip-tk
maybe-install-strip-tk:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-tk info-tk
maybe-info-tk:

.PHONY: maybe-dvi-tk dvi-tk
maybe-dvi-tk:

.PHONY: maybe-pdf-tk pdf-tk
maybe-pdf-tk:

.PHONY: maybe-html-tk html-tk
maybe-html-tk:

.PHONY: maybe-TAGS-tk TAGS-tk
maybe-TAGS-tk:

.PHONY: maybe-install-info-tk install-info-tk
maybe-install-info-tk:

.PHONY: maybe-install-dvi-tk install-dvi-tk
maybe-install-dvi-tk:

.PHONY: maybe-install-pdf-tk install-pdf-tk
maybe-install-pdf-tk:

.PHONY: maybe-install-html-tk install-html-tk
maybe-install-html-tk:

.PHONY: maybe-installcheck-tk installcheck-tk
maybe-installcheck-tk:

.PHONY: maybe-mostlyclean-tk mostlyclean-tk
maybe-mostlyclean-tk:

.PHONY: maybe-clean-tk clean-tk
maybe-clean-tk:

.PHONY: maybe-distclean-tk distclean-tk
maybe-distclean-tk:

.PHONY: maybe-maintainer-clean-tk maintainer-clean-tk
maybe-maintainer-clean-tk:



.PHONY: configure-libtermcap maybe-configure-libtermcap
maybe-configure-libtermcap:





.PHONY: all-libtermcap maybe-all-libtermcap
maybe-all-libtermcap:




.PHONY: check-libtermcap maybe-check-libtermcap
maybe-check-libtermcap:

.PHONY: install-libtermcap maybe-install-libtermcap
maybe-install-libtermcap:

.PHONY: install-strip-libtermcap maybe-install-strip-libtermcap
maybe-install-strip-libtermcap:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libtermcap info-libtermcap
maybe-info-libtermcap:

.PHONY: maybe-dvi-libtermcap dvi-libtermcap
maybe-dvi-libtermcap:

.PHONY: maybe-pdf-libtermcap pdf-libtermcap
maybe-pdf-libtermcap:

.PHONY: maybe-html-libtermcap html-libtermcap
maybe-html-libtermcap:

.PHONY: maybe-TAGS-libtermcap TAGS-libtermcap
maybe-TAGS-libtermcap:

.PHONY: maybe-install-info-libtermcap install-info-libtermcap
maybe-install-info-libtermcap:

.PHONY: maybe-install-dvi-libtermcap install-dvi-libtermcap
maybe-install-dvi-libtermcap:

.PHONY: maybe-install-pdf-libtermcap install-pdf-libtermcap
maybe-install-pdf-libtermcap:

.PHONY: maybe-install-html-libtermcap install-html-libtermcap
maybe-install-html-libtermcap:

.PHONY: maybe-installcheck-libtermcap installcheck-libtermcap
maybe-installcheck-libtermcap:

.PHONY: maybe-mostlyclean-libtermcap mostlyclean-libtermcap
maybe-mostlyclean-libtermcap:

.PHONY: maybe-clean-libtermcap clean-libtermcap
maybe-clean-libtermcap:

.PHONY: maybe-distclean-libtermcap distclean-libtermcap
maybe-distclean-libtermcap:

.PHONY: maybe-maintainer-clean-libtermcap maintainer-clean-libtermcap
maybe-maintainer-clean-libtermcap:



.PHONY: configure-utils maybe-configure-utils
maybe-configure-utils:





.PHONY: all-utils maybe-all-utils
maybe-all-utils:




.PHONY: check-utils maybe-check-utils
maybe-check-utils:

.PHONY: install-utils maybe-install-utils
maybe-install-utils:

.PHONY: install-strip-utils maybe-install-strip-utils
maybe-install-strip-utils:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-utils info-utils
maybe-info-utils:

.PHONY: maybe-dvi-utils dvi-utils
maybe-dvi-utils:

.PHONY: maybe-pdf-utils pdf-utils
maybe-pdf-utils:

.PHONY: maybe-html-utils html-utils
maybe-html-utils:

.PHONY: maybe-TAGS-utils TAGS-utils
maybe-TAGS-utils:

.PHONY: maybe-install-info-utils install-info-utils
maybe-install-info-utils:

.PHONY: maybe-install-dvi-utils install-dvi-utils
maybe-install-dvi-utils:

.PHONY: maybe-install-pdf-utils install-pdf-utils
maybe-install-pdf-utils:

.PHONY: maybe-install-html-utils install-html-utils
maybe-install-html-utils:

.PHONY: maybe-installcheck-utils installcheck-utils
maybe-installcheck-utils:

.PHONY: maybe-mostlyclean-utils mostlyclean-utils
maybe-mostlyclean-utils:

.PHONY: maybe-clean-utils clean-utils
maybe-clean-utils:

.PHONY: maybe-distclean-utils distclean-utils
maybe-distclean-utils:

.PHONY: maybe-maintainer-clean-utils maintainer-clean-utils
maybe-maintainer-clean-utils:



.PHONY: configure-c++tools maybe-configure-c++tools
maybe-configure-c++tools:
maybe-configure-c++tools: configure-c++tools
configure-c++tools: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/c++tools/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/c++tools; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/c++tools; \
	cd "$(HOST_SUBDIR)/c++tools" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/c++tools/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=c++tools; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-c++tools maybe-all-c++tools
maybe-all-c++tools:
TARGET-c++tools=all
maybe-all-c++tools: all-c++tools
all-c++tools: configure-c++tools
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-c++tools))




.PHONY: check-c++tools maybe-check-c++tools
maybe-check-c++tools:
maybe-check-c++tools: check-c++tools

check-c++tools:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(FLAGS_TO_PASS)  check)


.PHONY: install-c++tools maybe-install-c++tools
maybe-install-c++tools:
maybe-install-c++tools: install-c++tools

install-c++tools: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-c++tools maybe-install-strip-c++tools
maybe-install-strip-c++tools:
maybe-install-strip-c++tools: install-strip-c++tools

install-strip-c++tools: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-c++tools info-c++tools
maybe-info-c++tools:
maybe-info-c++tools: info-c++tools

info-c++tools: \
    configure-c++tools 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-c++tools dvi-c++tools
maybe-dvi-c++tools:
maybe-dvi-c++tools: dvi-c++tools

dvi-c++tools: \
    configure-c++tools 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-c++tools pdf-c++tools
maybe-pdf-c++tools:
maybe-pdf-c++tools: pdf-c++tools

pdf-c++tools: \
    configure-c++tools 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-c++tools html-c++tools
maybe-html-c++tools:
maybe-html-c++tools: html-c++tools

html-c++tools: \
    configure-c++tools 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-c++tools TAGS-c++tools
maybe-TAGS-c++tools:
maybe-TAGS-c++tools: TAGS-c++tools

# c++tools doesn't support TAGS.
TAGS-c++tools:


.PHONY: maybe-install-info-c++tools install-info-c++tools
maybe-install-info-c++tools:
maybe-install-info-c++tools: install-info-c++tools

install-info-c++tools: \
    configure-c++tools \
    info-c++tools 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-c++tools install-dvi-c++tools
maybe-install-dvi-c++tools:
maybe-install-dvi-c++tools: install-dvi-c++tools

install-dvi-c++tools: \
    configure-c++tools \
    dvi-c++tools 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-c++tools install-pdf-c++tools
maybe-install-pdf-c++tools:
maybe-install-pdf-c++tools: install-pdf-c++tools

install-pdf-c++tools: \
    configure-c++tools \
    pdf-c++tools 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-c++tools install-html-c++tools
maybe-install-html-c++tools:
maybe-install-html-c++tools: install-html-c++tools

install-html-c++tools: \
    configure-c++tools \
    html-c++tools 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-c++tools installcheck-c++tools
maybe-installcheck-c++tools:
maybe-installcheck-c++tools: installcheck-c++tools

installcheck-c++tools: \
    configure-c++tools 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-c++tools mostlyclean-c++tools
maybe-mostlyclean-c++tools:
maybe-mostlyclean-c++tools: mostlyclean-c++tools

mostlyclean-c++tools: 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-c++tools clean-c++tools
maybe-clean-c++tools:
maybe-clean-c++tools: clean-c++tools

clean-c++tools: 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-c++tools distclean-c++tools
maybe-distclean-c++tools:
maybe-distclean-c++tools: distclean-c++tools

distclean-c++tools: 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-c++tools maintainer-clean-c++tools
maybe-maintainer-clean-c++tools:
maybe-maintainer-clean-c++tools: maintainer-clean-c++tools

maintainer-clean-c++tools: 
	@: $(MAKE); $(unstage)
	@[ -f ./c++tools/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in c++tools"; \
	(cd $(HOST_SUBDIR)/c++tools && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-gnattools maybe-configure-gnattools
maybe-configure-gnattools:





.PHONY: all-gnattools maybe-all-gnattools
maybe-all-gnattools:




.PHONY: check-gnattools maybe-check-gnattools
maybe-check-gnattools:

.PHONY: install-gnattools maybe-install-gnattools
maybe-install-gnattools:

.PHONY: install-strip-gnattools maybe-install-strip-gnattools
maybe-install-strip-gnattools:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gnattools info-gnattools
maybe-info-gnattools:

.PHONY: maybe-dvi-gnattools dvi-gnattools
maybe-dvi-gnattools:

.PHONY: maybe-pdf-gnattools pdf-gnattools
maybe-pdf-gnattools:

.PHONY: maybe-html-gnattools html-gnattools
maybe-html-gnattools:

.PHONY: maybe-TAGS-gnattools TAGS-gnattools
maybe-TAGS-gnattools:

.PHONY: maybe-install-info-gnattools install-info-gnattools
maybe-install-info-gnattools:

.PHONY: maybe-install-dvi-gnattools install-dvi-gnattools
maybe-install-dvi-gnattools:

.PHONY: maybe-install-pdf-gnattools install-pdf-gnattools
maybe-install-pdf-gnattools:

.PHONY: maybe-install-html-gnattools install-html-gnattools
maybe-install-html-gnattools:

.PHONY: maybe-installcheck-gnattools installcheck-gnattools
maybe-installcheck-gnattools:

.PHONY: maybe-mostlyclean-gnattools mostlyclean-gnattools
maybe-mostlyclean-gnattools:

.PHONY: maybe-clean-gnattools clean-gnattools
maybe-clean-gnattools:

.PHONY: maybe-distclean-gnattools distclean-gnattools
maybe-distclean-gnattools:

.PHONY: maybe-maintainer-clean-gnattools maintainer-clean-gnattools
maybe-maintainer-clean-gnattools:



.PHONY: configure-lto-plugin maybe-configure-lto-plugin
maybe-configure-lto-plugin:
maybe-configure-lto-plugin: configure-lto-plugin
configure-lto-plugin: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/lto-plugin/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/lto-plugin; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/lto-plugin; \
	cd "$(HOST_SUBDIR)/lto-plugin" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/lto-plugin/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=lto-plugin; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias} --enable-shared   \
	  || exit 1



.PHONY: configure-stage1-lto-plugin maybe-configure-stage1-lto-plugin
maybe-configure-stage1-lto-plugin:

.PHONY: configure-stage2-lto-plugin maybe-configure-stage2-lto-plugin
maybe-configure-stage2-lto-plugin:

.PHONY: configure-stage3-lto-plugin maybe-configure-stage3-lto-plugin
maybe-configure-stage3-lto-plugin:

.PHONY: configure-stage4-lto-plugin maybe-configure-stage4-lto-plugin
maybe-configure-stage4-lto-plugin:

.PHONY: configure-stageprofile-lto-plugin maybe-configure-stageprofile-lto-plugin
maybe-configure-stageprofile-lto-plugin:

.PHONY: configure-stagetrain-lto-plugin maybe-configure-stagetrain-lto-plugin
maybe-configure-stagetrain-lto-plugin:

.PHONY: configure-stagefeedback-lto-plugin maybe-configure-stagefeedback-lto-plugin
maybe-configure-stagefeedback-lto-plugin:

.PHONY: configure-stageautoprofile-lto-plugin maybe-configure-stageautoprofile-lto-plugin
maybe-configure-stageautoprofile-lto-plugin:

.PHONY: configure-stageautofeedback-lto-plugin maybe-configure-stageautofeedback-lto-plugin
maybe-configure-stageautofeedback-lto-plugin:





.PHONY: all-lto-plugin maybe-all-lto-plugin
maybe-all-lto-plugin:
TARGET-lto-plugin=all
maybe-all-lto-plugin: all-lto-plugin
all-lto-plugin: configure-lto-plugin
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-lto-plugin))



.PHONY: all-stage1-lto-plugin maybe-all-stage1-lto-plugin
.PHONY: clean-stage1-lto-plugin maybe-clean-stage1-lto-plugin
maybe-all-stage1-lto-plugin:
maybe-clean-stage1-lto-plugin:


.PHONY: all-stage2-lto-plugin maybe-all-stage2-lto-plugin
.PHONY: clean-stage2-lto-plugin maybe-clean-stage2-lto-plugin
maybe-all-stage2-lto-plugin:
maybe-clean-stage2-lto-plugin:


.PHONY: all-stage3-lto-plugin maybe-all-stage3-lto-plugin
.PHONY: clean-stage3-lto-plugin maybe-clean-stage3-lto-plugin
maybe-all-stage3-lto-plugin:
maybe-clean-stage3-lto-plugin:


.PHONY: all-stage4-lto-plugin maybe-all-stage4-lto-plugin
.PHONY: clean-stage4-lto-plugin maybe-clean-stage4-lto-plugin
maybe-all-stage4-lto-plugin:
maybe-clean-stage4-lto-plugin:


.PHONY: all-stageprofile-lto-plugin maybe-all-stageprofile-lto-plugin
.PHONY: clean-stageprofile-lto-plugin maybe-clean-stageprofile-lto-plugin
maybe-all-stageprofile-lto-plugin:
maybe-clean-stageprofile-lto-plugin:


.PHONY: all-stagetrain-lto-plugin maybe-all-stagetrain-lto-plugin
.PHONY: clean-stagetrain-lto-plugin maybe-clean-stagetrain-lto-plugin
maybe-all-stagetrain-lto-plugin:
maybe-clean-stagetrain-lto-plugin:


.PHONY: all-stagefeedback-lto-plugin maybe-all-stagefeedback-lto-plugin
.PHONY: clean-stagefeedback-lto-plugin maybe-clean-stagefeedback-lto-plugin
maybe-all-stagefeedback-lto-plugin:
maybe-clean-stagefeedback-lto-plugin:


.PHONY: all-stageautoprofile-lto-plugin maybe-all-stageautoprofile-lto-plugin
.PHONY: clean-stageautoprofile-lto-plugin maybe-clean-stageautoprofile-lto-plugin
maybe-all-stageautoprofile-lto-plugin:
maybe-clean-stageautoprofile-lto-plugin:


.PHONY: all-stageautofeedback-lto-plugin maybe-all-stageautofeedback-lto-plugin
.PHONY: clean-stageautofeedback-lto-plugin maybe-clean-stageautofeedback-lto-plugin
maybe-all-stageautofeedback-lto-plugin:
maybe-clean-stageautofeedback-lto-plugin:





.PHONY: check-lto-plugin maybe-check-lto-plugin
maybe-check-lto-plugin:
maybe-check-lto-plugin: check-lto-plugin

check-lto-plugin:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-lto-plugin maybe-install-lto-plugin
maybe-install-lto-plugin:
maybe-install-lto-plugin: install-lto-plugin

install-lto-plugin: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-lto-plugin maybe-install-strip-lto-plugin
maybe-install-strip-lto-plugin:
maybe-install-strip-lto-plugin: install-strip-lto-plugin

install-strip-lto-plugin: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-lto-plugin info-lto-plugin
maybe-info-lto-plugin:
maybe-info-lto-plugin: info-lto-plugin

info-lto-plugin: \
    configure-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-lto-plugin dvi-lto-plugin
maybe-dvi-lto-plugin:
maybe-dvi-lto-plugin: dvi-lto-plugin

dvi-lto-plugin: \
    configure-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-lto-plugin pdf-lto-plugin
maybe-pdf-lto-plugin:
maybe-pdf-lto-plugin: pdf-lto-plugin

pdf-lto-plugin: \
    configure-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-lto-plugin html-lto-plugin
maybe-html-lto-plugin:
maybe-html-lto-plugin: html-lto-plugin

html-lto-plugin: \
    configure-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-lto-plugin TAGS-lto-plugin
maybe-TAGS-lto-plugin:
maybe-TAGS-lto-plugin: TAGS-lto-plugin

TAGS-lto-plugin: \
    configure-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-lto-plugin install-info-lto-plugin
maybe-install-info-lto-plugin:
maybe-install-info-lto-plugin: install-info-lto-plugin

install-info-lto-plugin: \
    configure-lto-plugin \
    info-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-lto-plugin install-dvi-lto-plugin
maybe-install-dvi-lto-plugin:
maybe-install-dvi-lto-plugin: install-dvi-lto-plugin

install-dvi-lto-plugin: \
    configure-lto-plugin \
    dvi-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-lto-plugin install-pdf-lto-plugin
maybe-install-pdf-lto-plugin:
maybe-install-pdf-lto-plugin: install-pdf-lto-plugin

install-pdf-lto-plugin: \
    configure-lto-plugin \
    pdf-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-lto-plugin install-html-lto-plugin
maybe-install-html-lto-plugin:
maybe-install-html-lto-plugin: install-html-lto-plugin

install-html-lto-plugin: \
    configure-lto-plugin \
    html-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-lto-plugin installcheck-lto-plugin
maybe-installcheck-lto-plugin:
maybe-installcheck-lto-plugin: installcheck-lto-plugin

installcheck-lto-plugin: \
    configure-lto-plugin 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-lto-plugin mostlyclean-lto-plugin
maybe-mostlyclean-lto-plugin:
maybe-mostlyclean-lto-plugin: mostlyclean-lto-plugin

mostlyclean-lto-plugin: 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-lto-plugin clean-lto-plugin
maybe-clean-lto-plugin:
maybe-clean-lto-plugin: clean-lto-plugin

clean-lto-plugin: 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-lto-plugin distclean-lto-plugin
maybe-distclean-lto-plugin:
maybe-distclean-lto-plugin: distclean-lto-plugin

distclean-lto-plugin: 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-lto-plugin maintainer-clean-lto-plugin
maybe-maintainer-clean-lto-plugin:
maybe-maintainer-clean-lto-plugin: maintainer-clean-lto-plugin

maintainer-clean-lto-plugin: 
	@[ -f ./lto-plugin/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in lto-plugin"; \
	(cd $(HOST_SUBDIR)/lto-plugin && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-libcc1 maybe-configure-libcc1
maybe-configure-libcc1:
maybe-configure-libcc1: configure-libcc1
configure-libcc1: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/libcc1/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/libcc1; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/libcc1; \
	cd "$(HOST_SUBDIR)/libcc1" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/libcc1/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libcc1; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias} --enable-shared \
	  || exit 1





.PHONY: all-libcc1 maybe-all-libcc1
maybe-all-libcc1:
TARGET-libcc1=all
maybe-all-libcc1: all-libcc1
all-libcc1: configure-libcc1
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-libcc1))




.PHONY: check-libcc1 maybe-check-libcc1
maybe-check-libcc1:
maybe-check-libcc1: check-libcc1

check-libcc1:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(FLAGS_TO_PASS)  check)


.PHONY: install-libcc1 maybe-install-libcc1
maybe-install-libcc1:
maybe-install-libcc1: install-libcc1

install-libcc1: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-libcc1 maybe-install-strip-libcc1
maybe-install-strip-libcc1:
maybe-install-strip-libcc1: install-strip-libcc1

install-strip-libcc1: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libcc1 info-libcc1
maybe-info-libcc1:
maybe-info-libcc1: info-libcc1

info-libcc1: \
    configure-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-libcc1 dvi-libcc1
maybe-dvi-libcc1:
maybe-dvi-libcc1: dvi-libcc1

dvi-libcc1: \
    configure-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-libcc1 pdf-libcc1
maybe-pdf-libcc1:
maybe-pdf-libcc1: pdf-libcc1

pdf-libcc1: \
    configure-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-libcc1 html-libcc1
maybe-html-libcc1:
maybe-html-libcc1: html-libcc1

html-libcc1: \
    configure-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-libcc1 TAGS-libcc1
maybe-TAGS-libcc1:
maybe-TAGS-libcc1: TAGS-libcc1

TAGS-libcc1: \
    configure-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-libcc1 install-info-libcc1
maybe-install-info-libcc1:
maybe-install-info-libcc1: install-info-libcc1

install-info-libcc1: \
    configure-libcc1 \
    info-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-libcc1 install-dvi-libcc1
maybe-install-dvi-libcc1:
maybe-install-dvi-libcc1: install-dvi-libcc1

install-dvi-libcc1: \
    configure-libcc1 \
    dvi-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-libcc1 install-pdf-libcc1
maybe-install-pdf-libcc1:
maybe-install-pdf-libcc1: install-pdf-libcc1

install-pdf-libcc1: \
    configure-libcc1 \
    pdf-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-libcc1 install-html-libcc1
maybe-install-html-libcc1:
maybe-install-html-libcc1: install-html-libcc1

install-html-libcc1: \
    configure-libcc1 \
    html-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-libcc1 installcheck-libcc1
maybe-installcheck-libcc1:
maybe-installcheck-libcc1: installcheck-libcc1

installcheck-libcc1: \
    configure-libcc1 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-libcc1 mostlyclean-libcc1
maybe-mostlyclean-libcc1:
maybe-mostlyclean-libcc1: mostlyclean-libcc1

mostlyclean-libcc1: 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-libcc1 clean-libcc1
maybe-clean-libcc1:
maybe-clean-libcc1: clean-libcc1

clean-libcc1: 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-libcc1 distclean-libcc1
maybe-distclean-libcc1:
maybe-distclean-libcc1: distclean-libcc1

distclean-libcc1: 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-libcc1 maintainer-clean-libcc1
maybe-maintainer-clean-libcc1:
maybe-maintainer-clean-libcc1: maintainer-clean-libcc1

maintainer-clean-libcc1: 
	@: $(MAKE); $(unstage)
	@[ -f ./libcc1/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in libcc1"; \
	(cd $(HOST_SUBDIR)/libcc1 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




.PHONY: configure-gotools maybe-configure-gotools
maybe-configure-gotools:





.PHONY: all-gotools maybe-all-gotools
maybe-all-gotools:




.PHONY: check-gotools maybe-check-gotools
maybe-check-gotools:

.PHONY: install-gotools maybe-install-gotools
maybe-install-gotools:

.PHONY: install-strip-gotools maybe-install-strip-gotools
maybe-install-strip-gotools:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-gotools info-gotools
maybe-info-gotools:

.PHONY: maybe-dvi-gotools dvi-gotools
maybe-dvi-gotools:

.PHONY: maybe-pdf-gotools pdf-gotools
maybe-pdf-gotools:

.PHONY: maybe-html-gotools html-gotools
maybe-html-gotools:

.PHONY: maybe-TAGS-gotools TAGS-gotools
maybe-TAGS-gotools:

.PHONY: maybe-install-info-gotools install-info-gotools
maybe-install-info-gotools:

.PHONY: maybe-install-dvi-gotools install-dvi-gotools
maybe-install-dvi-gotools:

.PHONY: maybe-install-pdf-gotools install-pdf-gotools
maybe-install-pdf-gotools:

.PHONY: maybe-install-html-gotools install-html-gotools
maybe-install-html-gotools:

.PHONY: maybe-installcheck-gotools installcheck-gotools
maybe-installcheck-gotools:

.PHONY: maybe-mostlyclean-gotools mostlyclean-gotools
maybe-mostlyclean-gotools:

.PHONY: maybe-clean-gotools clean-gotools
maybe-clean-gotools:

.PHONY: maybe-distclean-gotools distclean-gotools
maybe-distclean-gotools:

.PHONY: maybe-maintainer-clean-gotools maintainer-clean-gotools
maybe-maintainer-clean-gotools:



.PHONY: configure-libctf maybe-configure-libctf
maybe-configure-libctf:
maybe-configure-libctf: configure-libctf
configure-libctf: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	test ! -f $(HOST_SUBDIR)/libctf/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)/libctf; \
	$(HOST_EXPORTS)  \
	echo Configuring in $(HOST_SUBDIR)/libctf; \
	cd "$(HOST_SUBDIR)/libctf" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(HOST_SUBDIR)/libctf/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libctf; \
	$(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(HOST_CONFIGARGS) --build=${build_alias} --host=${host_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-libctf maybe-configure-stage1-libctf
maybe-configure-stage1-libctf:

.PHONY: configure-stage2-libctf maybe-configure-stage2-libctf
maybe-configure-stage2-libctf:

.PHONY: configure-stage3-libctf maybe-configure-stage3-libctf
maybe-configure-stage3-libctf:

.PHONY: configure-stage4-libctf maybe-configure-stage4-libctf
maybe-configure-stage4-libctf:

.PHONY: configure-stageprofile-libctf maybe-configure-stageprofile-libctf
maybe-configure-stageprofile-libctf:

.PHONY: configure-stagetrain-libctf maybe-configure-stagetrain-libctf
maybe-configure-stagetrain-libctf:

.PHONY: configure-stagefeedback-libctf maybe-configure-stagefeedback-libctf
maybe-configure-stagefeedback-libctf:

.PHONY: configure-stageautoprofile-libctf maybe-configure-stageautoprofile-libctf
maybe-configure-stageautoprofile-libctf:

.PHONY: configure-stageautofeedback-libctf maybe-configure-stageautofeedback-libctf
maybe-configure-stageautofeedback-libctf:





.PHONY: all-libctf maybe-all-libctf
maybe-all-libctf:
TARGET-libctf=all
maybe-all-libctf: all-libctf
all-libctf: configure-libctf
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS)  \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_HOST_FLAGS) $(STAGE1_FLAGS_TO_PASS)  \
		$(TARGET-libctf))



.PHONY: all-stage1-libctf maybe-all-stage1-libctf
.PHONY: clean-stage1-libctf maybe-clean-stage1-libctf
maybe-all-stage1-libctf:
maybe-clean-stage1-libctf:


.PHONY: all-stage2-libctf maybe-all-stage2-libctf
.PHONY: clean-stage2-libctf maybe-clean-stage2-libctf
maybe-all-stage2-libctf:
maybe-clean-stage2-libctf:


.PHONY: all-stage3-libctf maybe-all-stage3-libctf
.PHONY: clean-stage3-libctf maybe-clean-stage3-libctf
maybe-all-stage3-libctf:
maybe-clean-stage3-libctf:


.PHONY: all-stage4-libctf maybe-all-stage4-libctf
.PHONY: clean-stage4-libctf maybe-clean-stage4-libctf
maybe-all-stage4-libctf:
maybe-clean-stage4-libctf:


.PHONY: all-stageprofile-libctf maybe-all-stageprofile-libctf
.PHONY: clean-stageprofile-libctf maybe-clean-stageprofile-libctf
maybe-all-stageprofile-libctf:
maybe-clean-stageprofile-libctf:


.PHONY: all-stagetrain-libctf maybe-all-stagetrain-libctf
.PHONY: clean-stagetrain-libctf maybe-clean-stagetrain-libctf
maybe-all-stagetrain-libctf:
maybe-clean-stagetrain-libctf:


.PHONY: all-stagefeedback-libctf maybe-all-stagefeedback-libctf
.PHONY: clean-stagefeedback-libctf maybe-clean-stagefeedback-libctf
maybe-all-stagefeedback-libctf:
maybe-clean-stagefeedback-libctf:


.PHONY: all-stageautoprofile-libctf maybe-all-stageautoprofile-libctf
.PHONY: clean-stageautoprofile-libctf maybe-clean-stageautoprofile-libctf
maybe-all-stageautoprofile-libctf:
maybe-clean-stageautoprofile-libctf:


.PHONY: all-stageautofeedback-libctf maybe-all-stageautofeedback-libctf
.PHONY: clean-stageautofeedback-libctf maybe-clean-stageautofeedback-libctf
maybe-all-stageautofeedback-libctf:
maybe-clean-stageautofeedback-libctf:





.PHONY: check-libctf maybe-check-libctf
maybe-check-libctf:
maybe-check-libctf: check-libctf

check-libctf:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) $(EXTRA_HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(FLAGS_TO_PASS)  $(EXTRA_BOOTSTRAP_FLAGS) check)


.PHONY: install-libctf maybe-install-libctf
maybe-install-libctf:
maybe-install-libctf: install-libctf

install-libctf: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(FLAGS_TO_PASS)  install)


.PHONY: install-strip-libctf maybe-install-strip-libctf
maybe-install-strip-libctf:
maybe-install-strip-libctf: install-strip-libctf

install-strip-libctf: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-libctf info-libctf
maybe-info-libctf:
maybe-info-libctf: info-libctf

info-libctf: \
    configure-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing info in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          info) \
	  || exit 1


.PHONY: maybe-dvi-libctf dvi-libctf
maybe-dvi-libctf:
maybe-dvi-libctf: dvi-libctf

dvi-libctf: \
    configure-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing dvi in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          dvi) \
	  || exit 1


.PHONY: maybe-pdf-libctf pdf-libctf
maybe-pdf-libctf:
maybe-pdf-libctf: pdf-libctf

pdf-libctf: \
    configure-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing pdf in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          pdf) \
	  || exit 1


.PHONY: maybe-html-libctf html-libctf
maybe-html-libctf:
maybe-html-libctf: html-libctf

html-libctf: \
    configure-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing html in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          html) \
	  || exit 1


.PHONY: maybe-TAGS-libctf TAGS-libctf
maybe-TAGS-libctf:
maybe-TAGS-libctf: TAGS-libctf

TAGS-libctf: \
    configure-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing TAGS in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          TAGS) \
	  || exit 1


.PHONY: maybe-install-info-libctf install-info-libctf
maybe-install-info-libctf:
maybe-install-info-libctf: install-info-libctf

install-info-libctf: \
    configure-libctf \
    info-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-info in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-libctf install-dvi-libctf
maybe-install-dvi-libctf:
maybe-install-dvi-libctf: install-dvi-libctf

install-dvi-libctf: \
    configure-libctf \
    dvi-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-dvi in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-libctf install-pdf-libctf
maybe-install-pdf-libctf:
maybe-install-pdf-libctf: install-pdf-libctf

install-pdf-libctf: \
    configure-libctf \
    pdf-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-pdf in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-libctf install-html-libctf
maybe-install-html-libctf:
maybe-install-html-libctf: install-html-libctf

install-html-libctf: \
    configure-libctf \
    html-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing install-html in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          install-html) \
	  || exit 1


.PHONY: maybe-installcheck-libctf installcheck-libctf
maybe-installcheck-libctf:
maybe-installcheck-libctf: installcheck-libctf

installcheck-libctf: \
    configure-libctf 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing installcheck in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-libctf mostlyclean-libctf
maybe-mostlyclean-libctf:
maybe-mostlyclean-libctf: mostlyclean-libctf

mostlyclean-libctf: 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing mostlyclean in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-libctf clean-libctf
maybe-clean-libctf:
maybe-clean-libctf: clean-libctf

clean-libctf: 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing clean in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          clean) \
	  || exit 1


.PHONY: maybe-distclean-libctf distclean-libctf
maybe-distclean-libctf:
maybe-distclean-libctf: distclean-libctf

distclean-libctf: 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing distclean in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-libctf maintainer-clean-libctf
maybe-maintainer-clean-libctf:
maybe-maintainer-clean-libctf: maintainer-clean-libctf

maintainer-clean-libctf: 
	@[ -f ./libctf/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	for flag in $(EXTRA_HOST_FLAGS) ; do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	echo "Doing maintainer-clean in libctf"; \
	(cd $(HOST_SUBDIR)/libctf && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	          maintainer-clean) \
	  || exit 1




# ---------------------------------------
# Modules which run on the target machine
# ---------------------------------------




.PHONY: configure-target-libstdc++-v3 maybe-configure-target-libstdc++-v3
maybe-configure-target-libstdc++-v3:
maybe-configure-target-libstdc++-v3: configure-target-libstdc++-v3
configure-target-libstdc++-v3: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libstdc++-v3..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libstdc++-v3; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libstdc++-v3/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libstdc++-v3/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libstdc++-v3/multilib.tmp $(TARGET_SUBDIR)/libstdc++-v3/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libstdc++-v3/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile; \
	    mv $(TARGET_SUBDIR)/libstdc++-v3/multilib.tmp $(TARGET_SUBDIR)/libstdc++-v3/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libstdc++-v3/multilib.tmp $(TARGET_SUBDIR)/libstdc++-v3/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libstdc++-v3; \
	$(RAW_CXX_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libstdc++-v3; \
	cd "$(TARGET_SUBDIR)/libstdc++-v3" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libstdc++-v3/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libstdc++-v3; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-target-libstdc++-v3 maybe-configure-stage1-target-libstdc++-v3
maybe-configure-stage1-target-libstdc++-v3:

.PHONY: configure-stage2-target-libstdc++-v3 maybe-configure-stage2-target-libstdc++-v3
maybe-configure-stage2-target-libstdc++-v3:

.PHONY: configure-stage3-target-libstdc++-v3 maybe-configure-stage3-target-libstdc++-v3
maybe-configure-stage3-target-libstdc++-v3:

.PHONY: configure-stage4-target-libstdc++-v3 maybe-configure-stage4-target-libstdc++-v3
maybe-configure-stage4-target-libstdc++-v3:

.PHONY: configure-stageprofile-target-libstdc++-v3 maybe-configure-stageprofile-target-libstdc++-v3
maybe-configure-stageprofile-target-libstdc++-v3:

.PHONY: configure-stagetrain-target-libstdc++-v3 maybe-configure-stagetrain-target-libstdc++-v3
maybe-configure-stagetrain-target-libstdc++-v3:

.PHONY: configure-stagefeedback-target-libstdc++-v3 maybe-configure-stagefeedback-target-libstdc++-v3
maybe-configure-stagefeedback-target-libstdc++-v3:

.PHONY: configure-stageautoprofile-target-libstdc++-v3 maybe-configure-stageautoprofile-target-libstdc++-v3
maybe-configure-stageautoprofile-target-libstdc++-v3:

.PHONY: configure-stageautofeedback-target-libstdc++-v3 maybe-configure-stageautofeedback-target-libstdc++-v3
maybe-configure-stageautofeedback-target-libstdc++-v3:





.PHONY: all-target-libstdc++-v3 maybe-all-target-libstdc++-v3
maybe-all-target-libstdc++-v3:
TARGET-target-libstdc++-v3=all
maybe-all-target-libstdc++-v3: all-target-libstdc++-v3
all-target-libstdc++-v3: configure-target-libstdc++-v3
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS) 'CXX=$$(RAW_CXX_FOR_TARGET)' 'CXX_FOR_TARGET=$$(RAW_CXX_FOR_TARGET)'   \
		$(TARGET-target-libstdc++-v3))



.PHONY: all-stage1-target-libstdc++-v3 maybe-all-stage1-target-libstdc++-v3
.PHONY: clean-stage1-target-libstdc++-v3 maybe-clean-stage1-target-libstdc++-v3
maybe-all-stage1-target-libstdc++-v3:
maybe-clean-stage1-target-libstdc++-v3:


.PHONY: all-stage2-target-libstdc++-v3 maybe-all-stage2-target-libstdc++-v3
.PHONY: clean-stage2-target-libstdc++-v3 maybe-clean-stage2-target-libstdc++-v3
maybe-all-stage2-target-libstdc++-v3:
maybe-clean-stage2-target-libstdc++-v3:


.PHONY: all-stage3-target-libstdc++-v3 maybe-all-stage3-target-libstdc++-v3
.PHONY: clean-stage3-target-libstdc++-v3 maybe-clean-stage3-target-libstdc++-v3
maybe-all-stage3-target-libstdc++-v3:
maybe-clean-stage3-target-libstdc++-v3:


.PHONY: all-stage4-target-libstdc++-v3 maybe-all-stage4-target-libstdc++-v3
.PHONY: clean-stage4-target-libstdc++-v3 maybe-clean-stage4-target-libstdc++-v3
maybe-all-stage4-target-libstdc++-v3:
maybe-clean-stage4-target-libstdc++-v3:


.PHONY: all-stageprofile-target-libstdc++-v3 maybe-all-stageprofile-target-libstdc++-v3
.PHONY: clean-stageprofile-target-libstdc++-v3 maybe-clean-stageprofile-target-libstdc++-v3
maybe-all-stageprofile-target-libstdc++-v3:
maybe-clean-stageprofile-target-libstdc++-v3:


.PHONY: all-stagetrain-target-libstdc++-v3 maybe-all-stagetrain-target-libstdc++-v3
.PHONY: clean-stagetrain-target-libstdc++-v3 maybe-clean-stagetrain-target-libstdc++-v3
maybe-all-stagetrain-target-libstdc++-v3:
maybe-clean-stagetrain-target-libstdc++-v3:


.PHONY: all-stagefeedback-target-libstdc++-v3 maybe-all-stagefeedback-target-libstdc++-v3
.PHONY: clean-stagefeedback-target-libstdc++-v3 maybe-clean-stagefeedback-target-libstdc++-v3
maybe-all-stagefeedback-target-libstdc++-v3:
maybe-clean-stagefeedback-target-libstdc++-v3:


.PHONY: all-stageautoprofile-target-libstdc++-v3 maybe-all-stageautoprofile-target-libstdc++-v3
.PHONY: clean-stageautoprofile-target-libstdc++-v3 maybe-clean-stageautoprofile-target-libstdc++-v3
maybe-all-stageautoprofile-target-libstdc++-v3:
maybe-clean-stageautoprofile-target-libstdc++-v3:


.PHONY: all-stageautofeedback-target-libstdc++-v3 maybe-all-stageautofeedback-target-libstdc++-v3
.PHONY: clean-stageautofeedback-target-libstdc++-v3 maybe-clean-stageautofeedback-target-libstdc++-v3
maybe-all-stageautofeedback-target-libstdc++-v3:
maybe-clean-stageautofeedback-target-libstdc++-v3:






.PHONY: check-target-libstdc++-v3 maybe-check-target-libstdc++-v3
maybe-check-target-libstdc++-v3:
maybe-check-target-libstdc++-v3: check-target-libstdc++-v3

check-target-libstdc++-v3:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  'CXX=$$(RAW_CXX_FOR_TARGET)' 'CXX_FOR_TARGET=$$(RAW_CXX_FOR_TARGET)'   check)


.PHONY: install-target-libstdc++-v3 maybe-install-target-libstdc++-v3
maybe-install-target-libstdc++-v3:
maybe-install-target-libstdc++-v3: install-target-libstdc++-v3

install-target-libstdc++-v3: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libstdc++-v3 maybe-install-strip-target-libstdc++-v3
maybe-install-strip-target-libstdc++-v3:
maybe-install-strip-target-libstdc++-v3: install-strip-target-libstdc++-v3

install-strip-target-libstdc++-v3: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libstdc++-v3 info-target-libstdc++-v3
maybe-info-target-libstdc++-v3:
maybe-info-target-libstdc++-v3: info-target-libstdc++-v3

info-target-libstdc++-v3: \
    configure-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libstdc++-v3 dvi-target-libstdc++-v3
maybe-dvi-target-libstdc++-v3:
maybe-dvi-target-libstdc++-v3: dvi-target-libstdc++-v3

dvi-target-libstdc++-v3: \
    configure-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libstdc++-v3 pdf-target-libstdc++-v3
maybe-pdf-target-libstdc++-v3:
maybe-pdf-target-libstdc++-v3: pdf-target-libstdc++-v3

pdf-target-libstdc++-v3: \
    configure-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libstdc++-v3 html-target-libstdc++-v3
maybe-html-target-libstdc++-v3:
maybe-html-target-libstdc++-v3: html-target-libstdc++-v3

html-target-libstdc++-v3: \
    configure-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libstdc++-v3 TAGS-target-libstdc++-v3
maybe-TAGS-target-libstdc++-v3:
maybe-TAGS-target-libstdc++-v3: TAGS-target-libstdc++-v3

TAGS-target-libstdc++-v3: \
    configure-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libstdc++-v3 install-info-target-libstdc++-v3
maybe-install-info-target-libstdc++-v3:
maybe-install-info-target-libstdc++-v3: install-info-target-libstdc++-v3

install-info-target-libstdc++-v3: \
    configure-target-libstdc++-v3 \
    info-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libstdc++-v3 install-dvi-target-libstdc++-v3
maybe-install-dvi-target-libstdc++-v3:
maybe-install-dvi-target-libstdc++-v3: install-dvi-target-libstdc++-v3

install-dvi-target-libstdc++-v3: \
    configure-target-libstdc++-v3 \
    dvi-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libstdc++-v3 install-pdf-target-libstdc++-v3
maybe-install-pdf-target-libstdc++-v3:
maybe-install-pdf-target-libstdc++-v3: install-pdf-target-libstdc++-v3

install-pdf-target-libstdc++-v3: \
    configure-target-libstdc++-v3 \
    pdf-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libstdc++-v3 install-html-target-libstdc++-v3
maybe-install-html-target-libstdc++-v3:
maybe-install-html-target-libstdc++-v3: install-html-target-libstdc++-v3

install-html-target-libstdc++-v3: \
    configure-target-libstdc++-v3 \
    html-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libstdc++-v3 installcheck-target-libstdc++-v3
maybe-installcheck-target-libstdc++-v3:
maybe-installcheck-target-libstdc++-v3: installcheck-target-libstdc++-v3

installcheck-target-libstdc++-v3: \
    configure-target-libstdc++-v3 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libstdc++-v3 mostlyclean-target-libstdc++-v3
maybe-mostlyclean-target-libstdc++-v3:
maybe-mostlyclean-target-libstdc++-v3: mostlyclean-target-libstdc++-v3

mostlyclean-target-libstdc++-v3: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libstdc++-v3 clean-target-libstdc++-v3
maybe-clean-target-libstdc++-v3:
maybe-clean-target-libstdc++-v3: clean-target-libstdc++-v3

clean-target-libstdc++-v3: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libstdc++-v3 distclean-target-libstdc++-v3
maybe-distclean-target-libstdc++-v3:
maybe-distclean-target-libstdc++-v3: distclean-target-libstdc++-v3

distclean-target-libstdc++-v3: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libstdc++-v3 maintainer-clean-target-libstdc++-v3
maybe-maintainer-clean-target-libstdc++-v3:
maybe-maintainer-clean-target-libstdc++-v3: maintainer-clean-target-libstdc++-v3

maintainer-clean-target-libstdc++-v3: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libstdc++-v3/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libstdc++-v3"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libstdc++-v3 && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-libsanitizer maybe-configure-target-libsanitizer
maybe-configure-target-libsanitizer:
maybe-configure-target-libsanitizer: configure-target-libsanitizer
configure-target-libsanitizer: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libsanitizer..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libsanitizer; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libsanitizer/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libsanitizer/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libsanitizer/multilib.tmp $(TARGET_SUBDIR)/libsanitizer/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libsanitizer/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libsanitizer/Makefile; \
	    mv $(TARGET_SUBDIR)/libsanitizer/multilib.tmp $(TARGET_SUBDIR)/libsanitizer/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libsanitizer/multilib.tmp $(TARGET_SUBDIR)/libsanitizer/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libsanitizer/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libsanitizer; \
	$(RAW_CXX_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libsanitizer; \
	cd "$(TARGET_SUBDIR)/libsanitizer" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libsanitizer/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libsanitizer; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-target-libsanitizer maybe-configure-stage1-target-libsanitizer
maybe-configure-stage1-target-libsanitizer:

.PHONY: configure-stage2-target-libsanitizer maybe-configure-stage2-target-libsanitizer
maybe-configure-stage2-target-libsanitizer:

.PHONY: configure-stage3-target-libsanitizer maybe-configure-stage3-target-libsanitizer
maybe-configure-stage3-target-libsanitizer:

.PHONY: configure-stage4-target-libsanitizer maybe-configure-stage4-target-libsanitizer
maybe-configure-stage4-target-libsanitizer:

.PHONY: configure-stageprofile-target-libsanitizer maybe-configure-stageprofile-target-libsanitizer
maybe-configure-stageprofile-target-libsanitizer:

.PHONY: configure-stagetrain-target-libsanitizer maybe-configure-stagetrain-target-libsanitizer
maybe-configure-stagetrain-target-libsanitizer:

.PHONY: configure-stagefeedback-target-libsanitizer maybe-configure-stagefeedback-target-libsanitizer
maybe-configure-stagefeedback-target-libsanitizer:

.PHONY: configure-stageautoprofile-target-libsanitizer maybe-configure-stageautoprofile-target-libsanitizer
maybe-configure-stageautoprofile-target-libsanitizer:

.PHONY: configure-stageautofeedback-target-libsanitizer maybe-configure-stageautofeedback-target-libsanitizer
maybe-configure-stageautofeedback-target-libsanitizer:





.PHONY: all-target-libsanitizer maybe-all-target-libsanitizer
maybe-all-target-libsanitizer:
TARGET-target-libsanitizer=all
maybe-all-target-libsanitizer: all-target-libsanitizer
all-target-libsanitizer: configure-target-libsanitizer
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS) 'CXX=$$(RAW_CXX_FOR_TARGET)' 'CXX_FOR_TARGET=$$(RAW_CXX_FOR_TARGET)'   \
		$(TARGET-target-libsanitizer))



.PHONY: all-stage1-target-libsanitizer maybe-all-stage1-target-libsanitizer
.PHONY: clean-stage1-target-libsanitizer maybe-clean-stage1-target-libsanitizer
maybe-all-stage1-target-libsanitizer:
maybe-clean-stage1-target-libsanitizer:


.PHONY: all-stage2-target-libsanitizer maybe-all-stage2-target-libsanitizer
.PHONY: clean-stage2-target-libsanitizer maybe-clean-stage2-target-libsanitizer
maybe-all-stage2-target-libsanitizer:
maybe-clean-stage2-target-libsanitizer:


.PHONY: all-stage3-target-libsanitizer maybe-all-stage3-target-libsanitizer
.PHONY: clean-stage3-target-libsanitizer maybe-clean-stage3-target-libsanitizer
maybe-all-stage3-target-libsanitizer:
maybe-clean-stage3-target-libsanitizer:


.PHONY: all-stage4-target-libsanitizer maybe-all-stage4-target-libsanitizer
.PHONY: clean-stage4-target-libsanitizer maybe-clean-stage4-target-libsanitizer
maybe-all-stage4-target-libsanitizer:
maybe-clean-stage4-target-libsanitizer:


.PHONY: all-stageprofile-target-libsanitizer maybe-all-stageprofile-target-libsanitizer
.PHONY: clean-stageprofile-target-libsanitizer maybe-clean-stageprofile-target-libsanitizer
maybe-all-stageprofile-target-libsanitizer:
maybe-clean-stageprofile-target-libsanitizer:


.PHONY: all-stagetrain-target-libsanitizer maybe-all-stagetrain-target-libsanitizer
.PHONY: clean-stagetrain-target-libsanitizer maybe-clean-stagetrain-target-libsanitizer
maybe-all-stagetrain-target-libsanitizer:
maybe-clean-stagetrain-target-libsanitizer:


.PHONY: all-stagefeedback-target-libsanitizer maybe-all-stagefeedback-target-libsanitizer
.PHONY: clean-stagefeedback-target-libsanitizer maybe-clean-stagefeedback-target-libsanitizer
maybe-all-stagefeedback-target-libsanitizer:
maybe-clean-stagefeedback-target-libsanitizer:


.PHONY: all-stageautoprofile-target-libsanitizer maybe-all-stageautoprofile-target-libsanitizer
.PHONY: clean-stageautoprofile-target-libsanitizer maybe-clean-stageautoprofile-target-libsanitizer
maybe-all-stageautoprofile-target-libsanitizer:
maybe-clean-stageautoprofile-target-libsanitizer:


.PHONY: all-stageautofeedback-target-libsanitizer maybe-all-stageautofeedback-target-libsanitizer
.PHONY: clean-stageautofeedback-target-libsanitizer maybe-clean-stageautofeedback-target-libsanitizer
maybe-all-stageautofeedback-target-libsanitizer:
maybe-clean-stageautofeedback-target-libsanitizer:






.PHONY: check-target-libsanitizer maybe-check-target-libsanitizer
maybe-check-target-libsanitizer:
maybe-check-target-libsanitizer: check-target-libsanitizer

check-target-libsanitizer:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  'CXX=$$(RAW_CXX_FOR_TARGET)' 'CXX_FOR_TARGET=$$(RAW_CXX_FOR_TARGET)'   check)


.PHONY: install-target-libsanitizer maybe-install-target-libsanitizer
maybe-install-target-libsanitizer:
maybe-install-target-libsanitizer: install-target-libsanitizer

install-target-libsanitizer: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libsanitizer maybe-install-strip-target-libsanitizer
maybe-install-strip-target-libsanitizer:
maybe-install-strip-target-libsanitizer: install-strip-target-libsanitizer

install-strip-target-libsanitizer: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libsanitizer info-target-libsanitizer
maybe-info-target-libsanitizer:
maybe-info-target-libsanitizer: info-target-libsanitizer

info-target-libsanitizer: \
    configure-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libsanitizer dvi-target-libsanitizer
maybe-dvi-target-libsanitizer:
maybe-dvi-target-libsanitizer: dvi-target-libsanitizer

dvi-target-libsanitizer: \
    configure-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libsanitizer pdf-target-libsanitizer
maybe-pdf-target-libsanitizer:
maybe-pdf-target-libsanitizer: pdf-target-libsanitizer

pdf-target-libsanitizer: \
    configure-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libsanitizer html-target-libsanitizer
maybe-html-target-libsanitizer:
maybe-html-target-libsanitizer: html-target-libsanitizer

html-target-libsanitizer: \
    configure-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libsanitizer TAGS-target-libsanitizer
maybe-TAGS-target-libsanitizer:
maybe-TAGS-target-libsanitizer: TAGS-target-libsanitizer

TAGS-target-libsanitizer: \
    configure-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libsanitizer install-info-target-libsanitizer
maybe-install-info-target-libsanitizer:
maybe-install-info-target-libsanitizer: install-info-target-libsanitizer

install-info-target-libsanitizer: \
    configure-target-libsanitizer \
    info-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libsanitizer install-dvi-target-libsanitizer
maybe-install-dvi-target-libsanitizer:
maybe-install-dvi-target-libsanitizer: install-dvi-target-libsanitizer

install-dvi-target-libsanitizer: \
    configure-target-libsanitizer \
    dvi-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libsanitizer install-pdf-target-libsanitizer
maybe-install-pdf-target-libsanitizer:
maybe-install-pdf-target-libsanitizer: install-pdf-target-libsanitizer

install-pdf-target-libsanitizer: \
    configure-target-libsanitizer \
    pdf-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libsanitizer install-html-target-libsanitizer
maybe-install-html-target-libsanitizer:
maybe-install-html-target-libsanitizer: install-html-target-libsanitizer

install-html-target-libsanitizer: \
    configure-target-libsanitizer \
    html-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libsanitizer installcheck-target-libsanitizer
maybe-installcheck-target-libsanitizer:
maybe-installcheck-target-libsanitizer: installcheck-target-libsanitizer

installcheck-target-libsanitizer: \
    configure-target-libsanitizer 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libsanitizer mostlyclean-target-libsanitizer
maybe-mostlyclean-target-libsanitizer:
maybe-mostlyclean-target-libsanitizer: mostlyclean-target-libsanitizer

mostlyclean-target-libsanitizer: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libsanitizer clean-target-libsanitizer
maybe-clean-target-libsanitizer:
maybe-clean-target-libsanitizer: clean-target-libsanitizer

clean-target-libsanitizer: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libsanitizer distclean-target-libsanitizer
maybe-distclean-target-libsanitizer:
maybe-distclean-target-libsanitizer: distclean-target-libsanitizer

distclean-target-libsanitizer: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libsanitizer maintainer-clean-target-libsanitizer
maybe-maintainer-clean-target-libsanitizer:
maybe-maintainer-clean-target-libsanitizer: maintainer-clean-target-libsanitizer

maintainer-clean-target-libsanitizer: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libsanitizer/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libsanitizer"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libsanitizer && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-libvtv maybe-configure-target-libvtv
maybe-configure-target-libvtv:
maybe-configure-target-libvtv: configure-target-libvtv
configure-target-libvtv: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libvtv..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libvtv; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libvtv/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libvtv/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libvtv/multilib.tmp $(TARGET_SUBDIR)/libvtv/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libvtv/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libvtv/Makefile; \
	    mv $(TARGET_SUBDIR)/libvtv/multilib.tmp $(TARGET_SUBDIR)/libvtv/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libvtv/multilib.tmp $(TARGET_SUBDIR)/libvtv/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libvtv/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libvtv; \
	$(RAW_CXX_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libvtv; \
	cd "$(TARGET_SUBDIR)/libvtv" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libvtv/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libvtv; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-target-libvtv maybe-configure-stage1-target-libvtv
maybe-configure-stage1-target-libvtv:

.PHONY: configure-stage2-target-libvtv maybe-configure-stage2-target-libvtv
maybe-configure-stage2-target-libvtv:

.PHONY: configure-stage3-target-libvtv maybe-configure-stage3-target-libvtv
maybe-configure-stage3-target-libvtv:

.PHONY: configure-stage4-target-libvtv maybe-configure-stage4-target-libvtv
maybe-configure-stage4-target-libvtv:

.PHONY: configure-stageprofile-target-libvtv maybe-configure-stageprofile-target-libvtv
maybe-configure-stageprofile-target-libvtv:

.PHONY: configure-stagetrain-target-libvtv maybe-configure-stagetrain-target-libvtv
maybe-configure-stagetrain-target-libvtv:

.PHONY: configure-stagefeedback-target-libvtv maybe-configure-stagefeedback-target-libvtv
maybe-configure-stagefeedback-target-libvtv:

.PHONY: configure-stageautoprofile-target-libvtv maybe-configure-stageautoprofile-target-libvtv
maybe-configure-stageautoprofile-target-libvtv:

.PHONY: configure-stageautofeedback-target-libvtv maybe-configure-stageautofeedback-target-libvtv
maybe-configure-stageautofeedback-target-libvtv:





.PHONY: all-target-libvtv maybe-all-target-libvtv
maybe-all-target-libvtv:
TARGET-target-libvtv=all
maybe-all-target-libvtv: all-target-libvtv
all-target-libvtv: configure-target-libvtv
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS) 'CXX=$$(RAW_CXX_FOR_TARGET)' 'CXX_FOR_TARGET=$$(RAW_CXX_FOR_TARGET)'   \
		$(TARGET-target-libvtv))



.PHONY: all-stage1-target-libvtv maybe-all-stage1-target-libvtv
.PHONY: clean-stage1-target-libvtv maybe-clean-stage1-target-libvtv
maybe-all-stage1-target-libvtv:
maybe-clean-stage1-target-libvtv:


.PHONY: all-stage2-target-libvtv maybe-all-stage2-target-libvtv
.PHONY: clean-stage2-target-libvtv maybe-clean-stage2-target-libvtv
maybe-all-stage2-target-libvtv:
maybe-clean-stage2-target-libvtv:


.PHONY: all-stage3-target-libvtv maybe-all-stage3-target-libvtv
.PHONY: clean-stage3-target-libvtv maybe-clean-stage3-target-libvtv
maybe-all-stage3-target-libvtv:
maybe-clean-stage3-target-libvtv:


.PHONY: all-stage4-target-libvtv maybe-all-stage4-target-libvtv
.PHONY: clean-stage4-target-libvtv maybe-clean-stage4-target-libvtv
maybe-all-stage4-target-libvtv:
maybe-clean-stage4-target-libvtv:


.PHONY: all-stageprofile-target-libvtv maybe-all-stageprofile-target-libvtv
.PHONY: clean-stageprofile-target-libvtv maybe-clean-stageprofile-target-libvtv
maybe-all-stageprofile-target-libvtv:
maybe-clean-stageprofile-target-libvtv:


.PHONY: all-stagetrain-target-libvtv maybe-all-stagetrain-target-libvtv
.PHONY: clean-stagetrain-target-libvtv maybe-clean-stagetrain-target-libvtv
maybe-all-stagetrain-target-libvtv:
maybe-clean-stagetrain-target-libvtv:


.PHONY: all-stagefeedback-target-libvtv maybe-all-stagefeedback-target-libvtv
.PHONY: clean-stagefeedback-target-libvtv maybe-clean-stagefeedback-target-libvtv
maybe-all-stagefeedback-target-libvtv:
maybe-clean-stagefeedback-target-libvtv:


.PHONY: all-stageautoprofile-target-libvtv maybe-all-stageautoprofile-target-libvtv
.PHONY: clean-stageautoprofile-target-libvtv maybe-clean-stageautoprofile-target-libvtv
maybe-all-stageautoprofile-target-libvtv:
maybe-clean-stageautoprofile-target-libvtv:


.PHONY: all-stageautofeedback-target-libvtv maybe-all-stageautofeedback-target-libvtv
.PHONY: clean-stageautofeedback-target-libvtv maybe-clean-stageautofeedback-target-libvtv
maybe-all-stageautofeedback-target-libvtv:
maybe-clean-stageautofeedback-target-libvtv:






.PHONY: check-target-libvtv maybe-check-target-libvtv
maybe-check-target-libvtv:
maybe-check-target-libvtv: check-target-libvtv

check-target-libvtv:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  'CXX=$$(RAW_CXX_FOR_TARGET)' 'CXX_FOR_TARGET=$$(RAW_CXX_FOR_TARGET)'   check)


.PHONY: install-target-libvtv maybe-install-target-libvtv
maybe-install-target-libvtv:
maybe-install-target-libvtv: install-target-libvtv

install-target-libvtv: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libvtv maybe-install-strip-target-libvtv
maybe-install-strip-target-libvtv:
maybe-install-strip-target-libvtv: install-strip-target-libvtv

install-strip-target-libvtv: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libvtv info-target-libvtv
maybe-info-target-libvtv:
maybe-info-target-libvtv: info-target-libvtv

info-target-libvtv: \
    configure-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libvtv dvi-target-libvtv
maybe-dvi-target-libvtv:
maybe-dvi-target-libvtv: dvi-target-libvtv

dvi-target-libvtv: \
    configure-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libvtv pdf-target-libvtv
maybe-pdf-target-libvtv:
maybe-pdf-target-libvtv: pdf-target-libvtv

pdf-target-libvtv: \
    configure-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libvtv html-target-libvtv
maybe-html-target-libvtv:
maybe-html-target-libvtv: html-target-libvtv

html-target-libvtv: \
    configure-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libvtv TAGS-target-libvtv
maybe-TAGS-target-libvtv:
maybe-TAGS-target-libvtv: TAGS-target-libvtv

TAGS-target-libvtv: \
    configure-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libvtv install-info-target-libvtv
maybe-install-info-target-libvtv:
maybe-install-info-target-libvtv: install-info-target-libvtv

install-info-target-libvtv: \
    configure-target-libvtv \
    info-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libvtv install-dvi-target-libvtv
maybe-install-dvi-target-libvtv:
maybe-install-dvi-target-libvtv: install-dvi-target-libvtv

install-dvi-target-libvtv: \
    configure-target-libvtv \
    dvi-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libvtv install-pdf-target-libvtv
maybe-install-pdf-target-libvtv:
maybe-install-pdf-target-libvtv: install-pdf-target-libvtv

install-pdf-target-libvtv: \
    configure-target-libvtv \
    pdf-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libvtv install-html-target-libvtv
maybe-install-html-target-libvtv:
maybe-install-html-target-libvtv: install-html-target-libvtv

install-html-target-libvtv: \
    configure-target-libvtv \
    html-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libvtv installcheck-target-libvtv
maybe-installcheck-target-libvtv:
maybe-installcheck-target-libvtv: installcheck-target-libvtv

installcheck-target-libvtv: \
    configure-target-libvtv 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libvtv mostlyclean-target-libvtv
maybe-mostlyclean-target-libvtv:
maybe-mostlyclean-target-libvtv: mostlyclean-target-libvtv

mostlyclean-target-libvtv: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libvtv clean-target-libvtv
maybe-clean-target-libvtv:
maybe-clean-target-libvtv: clean-target-libvtv

clean-target-libvtv: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libvtv distclean-target-libvtv
maybe-distclean-target-libvtv:
maybe-distclean-target-libvtv: distclean-target-libvtv

distclean-target-libvtv: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libvtv maintainer-clean-target-libvtv
maybe-maintainer-clean-target-libvtv:
maybe-maintainer-clean-target-libvtv: maintainer-clean-target-libvtv

maintainer-clean-target-libvtv: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libvtv/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(RAW_CXX_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libvtv"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libvtv && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-liboffloadmic maybe-configure-target-liboffloadmic
maybe-configure-target-liboffloadmic:





.PHONY: all-target-liboffloadmic maybe-all-target-liboffloadmic
maybe-all-target-liboffloadmic:





.PHONY: check-target-liboffloadmic maybe-check-target-liboffloadmic
maybe-check-target-liboffloadmic:

.PHONY: install-target-liboffloadmic maybe-install-target-liboffloadmic
maybe-install-target-liboffloadmic:

.PHONY: install-strip-target-liboffloadmic maybe-install-strip-target-liboffloadmic
maybe-install-strip-target-liboffloadmic:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-liboffloadmic info-target-liboffloadmic
maybe-info-target-liboffloadmic:

.PHONY: maybe-dvi-target-liboffloadmic dvi-target-liboffloadmic
maybe-dvi-target-liboffloadmic:

.PHONY: maybe-pdf-target-liboffloadmic pdf-target-liboffloadmic
maybe-pdf-target-liboffloadmic:

.PHONY: maybe-html-target-liboffloadmic html-target-liboffloadmic
maybe-html-target-liboffloadmic:

.PHONY: maybe-TAGS-target-liboffloadmic TAGS-target-liboffloadmic
maybe-TAGS-target-liboffloadmic:

.PHONY: maybe-install-info-target-liboffloadmic install-info-target-liboffloadmic
maybe-install-info-target-liboffloadmic:

.PHONY: maybe-install-dvi-target-liboffloadmic install-dvi-target-liboffloadmic
maybe-install-dvi-target-liboffloadmic:

.PHONY: maybe-install-pdf-target-liboffloadmic install-pdf-target-liboffloadmic
maybe-install-pdf-target-liboffloadmic:

.PHONY: maybe-install-html-target-liboffloadmic install-html-target-liboffloadmic
maybe-install-html-target-liboffloadmic:

.PHONY: maybe-installcheck-target-liboffloadmic installcheck-target-liboffloadmic
maybe-installcheck-target-liboffloadmic:

.PHONY: maybe-mostlyclean-target-liboffloadmic mostlyclean-target-liboffloadmic
maybe-mostlyclean-target-liboffloadmic:

.PHONY: maybe-clean-target-liboffloadmic clean-target-liboffloadmic
maybe-clean-target-liboffloadmic:

.PHONY: maybe-distclean-target-liboffloadmic distclean-target-liboffloadmic
maybe-distclean-target-liboffloadmic:

.PHONY: maybe-maintainer-clean-target-liboffloadmic maintainer-clean-target-liboffloadmic
maybe-maintainer-clean-target-liboffloadmic:





.PHONY: configure-target-libssp maybe-configure-target-libssp
maybe-configure-target-libssp:
maybe-configure-target-libssp: configure-target-libssp
configure-target-libssp: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libssp..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libssp; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libssp/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libssp/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libssp/multilib.tmp $(TARGET_SUBDIR)/libssp/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libssp/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libssp/Makefile; \
	    mv $(TARGET_SUBDIR)/libssp/multilib.tmp $(TARGET_SUBDIR)/libssp/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libssp/multilib.tmp $(TARGET_SUBDIR)/libssp/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libssp/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libssp; \
	$(NORMAL_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libssp; \
	cd "$(TARGET_SUBDIR)/libssp" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libssp/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libssp; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-target-libssp maybe-all-target-libssp
maybe-all-target-libssp:
TARGET-target-libssp=all
maybe-all-target-libssp: all-target-libssp
all-target-libssp: configure-target-libssp
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)   \
		$(TARGET-target-libssp))





.PHONY: check-target-libssp maybe-check-target-libssp
maybe-check-target-libssp:
maybe-check-target-libssp: check-target-libssp

check-target-libssp:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)   check)


.PHONY: install-target-libssp maybe-install-target-libssp
maybe-install-target-libssp:
maybe-install-target-libssp: install-target-libssp

install-target-libssp: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libssp maybe-install-strip-target-libssp
maybe-install-strip-target-libssp:
maybe-install-strip-target-libssp: install-strip-target-libssp

install-strip-target-libssp: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libssp info-target-libssp
maybe-info-target-libssp:
maybe-info-target-libssp: info-target-libssp

info-target-libssp: \
    configure-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libssp dvi-target-libssp
maybe-dvi-target-libssp:
maybe-dvi-target-libssp: dvi-target-libssp

dvi-target-libssp: \
    configure-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libssp pdf-target-libssp
maybe-pdf-target-libssp:
maybe-pdf-target-libssp: pdf-target-libssp

pdf-target-libssp: \
    configure-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libssp html-target-libssp
maybe-html-target-libssp:
maybe-html-target-libssp: html-target-libssp

html-target-libssp: \
    configure-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libssp TAGS-target-libssp
maybe-TAGS-target-libssp:
maybe-TAGS-target-libssp: TAGS-target-libssp

TAGS-target-libssp: \
    configure-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libssp install-info-target-libssp
maybe-install-info-target-libssp:
maybe-install-info-target-libssp: install-info-target-libssp

install-info-target-libssp: \
    configure-target-libssp \
    info-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libssp install-dvi-target-libssp
maybe-install-dvi-target-libssp:
maybe-install-dvi-target-libssp: install-dvi-target-libssp

install-dvi-target-libssp: \
    configure-target-libssp \
    dvi-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libssp install-pdf-target-libssp
maybe-install-pdf-target-libssp:
maybe-install-pdf-target-libssp: install-pdf-target-libssp

install-pdf-target-libssp: \
    configure-target-libssp \
    pdf-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libssp install-html-target-libssp
maybe-install-html-target-libssp:
maybe-install-html-target-libssp: install-html-target-libssp

install-html-target-libssp: \
    configure-target-libssp \
    html-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libssp installcheck-target-libssp
maybe-installcheck-target-libssp:
maybe-installcheck-target-libssp: installcheck-target-libssp

installcheck-target-libssp: \
    configure-target-libssp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libssp mostlyclean-target-libssp
maybe-mostlyclean-target-libssp:
maybe-mostlyclean-target-libssp: mostlyclean-target-libssp

mostlyclean-target-libssp: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libssp clean-target-libssp
maybe-clean-target-libssp:
maybe-clean-target-libssp: clean-target-libssp

clean-target-libssp: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libssp distclean-target-libssp
maybe-distclean-target-libssp:
maybe-distclean-target-libssp: distclean-target-libssp

distclean-target-libssp: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libssp maintainer-clean-target-libssp
maybe-maintainer-clean-target-libssp:
maybe-maintainer-clean-target-libssp: maintainer-clean-target-libssp

maintainer-clean-target-libssp: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libssp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libssp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libssp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-newlib maybe-configure-target-newlib
maybe-configure-target-newlib:





.PHONY: all-target-newlib maybe-all-target-newlib
maybe-all-target-newlib:





.PHONY: check-target-newlib maybe-check-target-newlib
maybe-check-target-newlib:

.PHONY: install-target-newlib maybe-install-target-newlib
maybe-install-target-newlib:

.PHONY: install-strip-target-newlib maybe-install-strip-target-newlib
maybe-install-strip-target-newlib:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-newlib info-target-newlib
maybe-info-target-newlib:

.PHONY: maybe-dvi-target-newlib dvi-target-newlib
maybe-dvi-target-newlib:

.PHONY: maybe-pdf-target-newlib pdf-target-newlib
maybe-pdf-target-newlib:

.PHONY: maybe-html-target-newlib html-target-newlib
maybe-html-target-newlib:

.PHONY: maybe-TAGS-target-newlib TAGS-target-newlib
maybe-TAGS-target-newlib:

.PHONY: maybe-install-info-target-newlib install-info-target-newlib
maybe-install-info-target-newlib:

.PHONY: maybe-install-dvi-target-newlib install-dvi-target-newlib
maybe-install-dvi-target-newlib:

.PHONY: maybe-install-pdf-target-newlib install-pdf-target-newlib
maybe-install-pdf-target-newlib:

.PHONY: maybe-install-html-target-newlib install-html-target-newlib
maybe-install-html-target-newlib:

.PHONY: maybe-installcheck-target-newlib installcheck-target-newlib
maybe-installcheck-target-newlib:

.PHONY: maybe-mostlyclean-target-newlib mostlyclean-target-newlib
maybe-mostlyclean-target-newlib:

.PHONY: maybe-clean-target-newlib clean-target-newlib
maybe-clean-target-newlib:

.PHONY: maybe-distclean-target-newlib distclean-target-newlib
maybe-distclean-target-newlib:

.PHONY: maybe-maintainer-clean-target-newlib maintainer-clean-target-newlib
maybe-maintainer-clean-target-newlib:





.PHONY: configure-target-libgcc maybe-configure-target-libgcc
maybe-configure-target-libgcc:
maybe-configure-target-libgcc: configure-target-libgcc
configure-target-libgcc: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libgcc..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libgcc; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libgcc/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libgcc/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libgcc/multilib.tmp $(TARGET_SUBDIR)/libgcc/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libgcc/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libgcc/Makefile; \
	    mv $(TARGET_SUBDIR)/libgcc/multilib.tmp $(TARGET_SUBDIR)/libgcc/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libgcc/multilib.tmp $(TARGET_SUBDIR)/libgcc/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libgcc/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libgcc; \
	$(NORMAL_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libgcc; \
	cd "$(TARGET_SUBDIR)/libgcc" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libgcc/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libgcc; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-target-libgcc maybe-configure-stage1-target-libgcc
maybe-configure-stage1-target-libgcc:

.PHONY: configure-stage2-target-libgcc maybe-configure-stage2-target-libgcc
maybe-configure-stage2-target-libgcc:

.PHONY: configure-stage3-target-libgcc maybe-configure-stage3-target-libgcc
maybe-configure-stage3-target-libgcc:

.PHONY: configure-stage4-target-libgcc maybe-configure-stage4-target-libgcc
maybe-configure-stage4-target-libgcc:

.PHONY: configure-stageprofile-target-libgcc maybe-configure-stageprofile-target-libgcc
maybe-configure-stageprofile-target-libgcc:

.PHONY: configure-stagetrain-target-libgcc maybe-configure-stagetrain-target-libgcc
maybe-configure-stagetrain-target-libgcc:

.PHONY: configure-stagefeedback-target-libgcc maybe-configure-stagefeedback-target-libgcc
maybe-configure-stagefeedback-target-libgcc:

.PHONY: configure-stageautoprofile-target-libgcc maybe-configure-stageautoprofile-target-libgcc
maybe-configure-stageautoprofile-target-libgcc:

.PHONY: configure-stageautofeedback-target-libgcc maybe-configure-stageautofeedback-target-libgcc
maybe-configure-stageautofeedback-target-libgcc:





.PHONY: all-target-libgcc maybe-all-target-libgcc
maybe-all-target-libgcc:
TARGET-target-libgcc=all
maybe-all-target-libgcc: all-target-libgcc
all-target-libgcc: configure-target-libgcc
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)   \
		$(TARGET-target-libgcc))



.PHONY: all-stage1-target-libgcc maybe-all-stage1-target-libgcc
.PHONY: clean-stage1-target-libgcc maybe-clean-stage1-target-libgcc
maybe-all-stage1-target-libgcc:
maybe-clean-stage1-target-libgcc:


.PHONY: all-stage2-target-libgcc maybe-all-stage2-target-libgcc
.PHONY: clean-stage2-target-libgcc maybe-clean-stage2-target-libgcc
maybe-all-stage2-target-libgcc:
maybe-clean-stage2-target-libgcc:


.PHONY: all-stage3-target-libgcc maybe-all-stage3-target-libgcc
.PHONY: clean-stage3-target-libgcc maybe-clean-stage3-target-libgcc
maybe-all-stage3-target-libgcc:
maybe-clean-stage3-target-libgcc:


.PHONY: all-stage4-target-libgcc maybe-all-stage4-target-libgcc
.PHONY: clean-stage4-target-libgcc maybe-clean-stage4-target-libgcc
maybe-all-stage4-target-libgcc:
maybe-clean-stage4-target-libgcc:


.PHONY: all-stageprofile-target-libgcc maybe-all-stageprofile-target-libgcc
.PHONY: clean-stageprofile-target-libgcc maybe-clean-stageprofile-target-libgcc
maybe-all-stageprofile-target-libgcc:
maybe-clean-stageprofile-target-libgcc:


.PHONY: all-stagetrain-target-libgcc maybe-all-stagetrain-target-libgcc
.PHONY: clean-stagetrain-target-libgcc maybe-clean-stagetrain-target-libgcc
maybe-all-stagetrain-target-libgcc:
maybe-clean-stagetrain-target-libgcc:


.PHONY: all-stagefeedback-target-libgcc maybe-all-stagefeedback-target-libgcc
.PHONY: clean-stagefeedback-target-libgcc maybe-clean-stagefeedback-target-libgcc
maybe-all-stagefeedback-target-libgcc:
maybe-clean-stagefeedback-target-libgcc:


.PHONY: all-stageautoprofile-target-libgcc maybe-all-stageautoprofile-target-libgcc
.PHONY: clean-stageautoprofile-target-libgcc maybe-clean-stageautoprofile-target-libgcc
maybe-all-stageautoprofile-target-libgcc:
maybe-clean-stageautoprofile-target-libgcc:


.PHONY: all-stageautofeedback-target-libgcc maybe-all-stageautofeedback-target-libgcc
.PHONY: clean-stageautofeedback-target-libgcc maybe-clean-stageautofeedback-target-libgcc
maybe-all-stageautofeedback-target-libgcc:
maybe-clean-stageautofeedback-target-libgcc:






.PHONY: check-target-libgcc maybe-check-target-libgcc
maybe-check-target-libgcc:
maybe-check-target-libgcc: check-target-libgcc

# Dummy target for uncheckable module.
check-target-libgcc:


.PHONY: install-target-libgcc maybe-install-target-libgcc
maybe-install-target-libgcc:
maybe-install-target-libgcc: install-target-libgcc

install-target-libgcc: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libgcc maybe-install-strip-target-libgcc
maybe-install-strip-target-libgcc:
maybe-install-strip-target-libgcc: install-strip-target-libgcc

install-strip-target-libgcc: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libgcc info-target-libgcc
maybe-info-target-libgcc:
maybe-info-target-libgcc: info-target-libgcc

info-target-libgcc: \
    configure-target-libgcc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libgcc dvi-target-libgcc
maybe-dvi-target-libgcc:
maybe-dvi-target-libgcc: dvi-target-libgcc

dvi-target-libgcc: \
    configure-target-libgcc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libgcc pdf-target-libgcc
maybe-pdf-target-libgcc:
maybe-pdf-target-libgcc: pdf-target-libgcc

pdf-target-libgcc: \
    configure-target-libgcc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libgcc html-target-libgcc
maybe-html-target-libgcc:
maybe-html-target-libgcc: html-target-libgcc

html-target-libgcc: \
    configure-target-libgcc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libgcc TAGS-target-libgcc
maybe-TAGS-target-libgcc:
maybe-TAGS-target-libgcc: TAGS-target-libgcc

# libgcc doesn't support TAGS.
TAGS-target-libgcc:


.PHONY: maybe-install-info-target-libgcc install-info-target-libgcc
maybe-install-info-target-libgcc:
maybe-install-info-target-libgcc: install-info-target-libgcc

install-info-target-libgcc: \
    configure-target-libgcc \
    info-target-libgcc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libgcc install-dvi-target-libgcc
maybe-install-dvi-target-libgcc:
maybe-install-dvi-target-libgcc: install-dvi-target-libgcc

# libgcc doesn't support install-dvi.
install-dvi-target-libgcc:


.PHONY: maybe-install-pdf-target-libgcc install-pdf-target-libgcc
maybe-install-pdf-target-libgcc:
maybe-install-pdf-target-libgcc: install-pdf-target-libgcc

install-pdf-target-libgcc: \
    configure-target-libgcc \
    pdf-target-libgcc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libgcc install-html-target-libgcc
maybe-install-html-target-libgcc:
maybe-install-html-target-libgcc: install-html-target-libgcc

install-html-target-libgcc: \
    configure-target-libgcc \
    html-target-libgcc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libgcc installcheck-target-libgcc
maybe-installcheck-target-libgcc:
maybe-installcheck-target-libgcc: installcheck-target-libgcc

installcheck-target-libgcc: \
    configure-target-libgcc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libgcc mostlyclean-target-libgcc
maybe-mostlyclean-target-libgcc:
maybe-mostlyclean-target-libgcc: mostlyclean-target-libgcc

mostlyclean-target-libgcc: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libgcc clean-target-libgcc
maybe-clean-target-libgcc:
maybe-clean-target-libgcc: clean-target-libgcc

clean-target-libgcc: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libgcc distclean-target-libgcc
maybe-distclean-target-libgcc:
maybe-distclean-target-libgcc: distclean-target-libgcc

distclean-target-libgcc: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libgcc maintainer-clean-target-libgcc
maybe-maintainer-clean-target-libgcc:
maybe-maintainer-clean-target-libgcc: maintainer-clean-target-libgcc

maintainer-clean-target-libgcc: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgcc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libgcc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgcc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-libbacktrace maybe-configure-target-libbacktrace
maybe-configure-target-libbacktrace:
maybe-configure-target-libbacktrace: configure-target-libbacktrace
configure-target-libbacktrace: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libbacktrace..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libbacktrace; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libbacktrace/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libbacktrace/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libbacktrace/multilib.tmp $(TARGET_SUBDIR)/libbacktrace/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libbacktrace/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libbacktrace/Makefile; \
	    mv $(TARGET_SUBDIR)/libbacktrace/multilib.tmp $(TARGET_SUBDIR)/libbacktrace/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libbacktrace/multilib.tmp $(TARGET_SUBDIR)/libbacktrace/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libbacktrace/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libbacktrace; \
	$(NORMAL_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libbacktrace; \
	cd "$(TARGET_SUBDIR)/libbacktrace" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libbacktrace/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libbacktrace; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-target-libbacktrace maybe-configure-stage1-target-libbacktrace
maybe-configure-stage1-target-libbacktrace:

.PHONY: configure-stage2-target-libbacktrace maybe-configure-stage2-target-libbacktrace
maybe-configure-stage2-target-libbacktrace:

.PHONY: configure-stage3-target-libbacktrace maybe-configure-stage3-target-libbacktrace
maybe-configure-stage3-target-libbacktrace:

.PHONY: configure-stage4-target-libbacktrace maybe-configure-stage4-target-libbacktrace
maybe-configure-stage4-target-libbacktrace:

.PHONY: configure-stageprofile-target-libbacktrace maybe-configure-stageprofile-target-libbacktrace
maybe-configure-stageprofile-target-libbacktrace:

.PHONY: configure-stagetrain-target-libbacktrace maybe-configure-stagetrain-target-libbacktrace
maybe-configure-stagetrain-target-libbacktrace:

.PHONY: configure-stagefeedback-target-libbacktrace maybe-configure-stagefeedback-target-libbacktrace
maybe-configure-stagefeedback-target-libbacktrace:

.PHONY: configure-stageautoprofile-target-libbacktrace maybe-configure-stageautoprofile-target-libbacktrace
maybe-configure-stageautoprofile-target-libbacktrace:

.PHONY: configure-stageautofeedback-target-libbacktrace maybe-configure-stageautofeedback-target-libbacktrace
maybe-configure-stageautofeedback-target-libbacktrace:





.PHONY: all-target-libbacktrace maybe-all-target-libbacktrace
maybe-all-target-libbacktrace:
TARGET-target-libbacktrace=all
maybe-all-target-libbacktrace: all-target-libbacktrace
all-target-libbacktrace: configure-target-libbacktrace
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)   \
		$(TARGET-target-libbacktrace))



.PHONY: all-stage1-target-libbacktrace maybe-all-stage1-target-libbacktrace
.PHONY: clean-stage1-target-libbacktrace maybe-clean-stage1-target-libbacktrace
maybe-all-stage1-target-libbacktrace:
maybe-clean-stage1-target-libbacktrace:


.PHONY: all-stage2-target-libbacktrace maybe-all-stage2-target-libbacktrace
.PHONY: clean-stage2-target-libbacktrace maybe-clean-stage2-target-libbacktrace
maybe-all-stage2-target-libbacktrace:
maybe-clean-stage2-target-libbacktrace:


.PHONY: all-stage3-target-libbacktrace maybe-all-stage3-target-libbacktrace
.PHONY: clean-stage3-target-libbacktrace maybe-clean-stage3-target-libbacktrace
maybe-all-stage3-target-libbacktrace:
maybe-clean-stage3-target-libbacktrace:


.PHONY: all-stage4-target-libbacktrace maybe-all-stage4-target-libbacktrace
.PHONY: clean-stage4-target-libbacktrace maybe-clean-stage4-target-libbacktrace
maybe-all-stage4-target-libbacktrace:
maybe-clean-stage4-target-libbacktrace:


.PHONY: all-stageprofile-target-libbacktrace maybe-all-stageprofile-target-libbacktrace
.PHONY: clean-stageprofile-target-libbacktrace maybe-clean-stageprofile-target-libbacktrace
maybe-all-stageprofile-target-libbacktrace:
maybe-clean-stageprofile-target-libbacktrace:


.PHONY: all-stagetrain-target-libbacktrace maybe-all-stagetrain-target-libbacktrace
.PHONY: clean-stagetrain-target-libbacktrace maybe-clean-stagetrain-target-libbacktrace
maybe-all-stagetrain-target-libbacktrace:
maybe-clean-stagetrain-target-libbacktrace:


.PHONY: all-stagefeedback-target-libbacktrace maybe-all-stagefeedback-target-libbacktrace
.PHONY: clean-stagefeedback-target-libbacktrace maybe-clean-stagefeedback-target-libbacktrace
maybe-all-stagefeedback-target-libbacktrace:
maybe-clean-stagefeedback-target-libbacktrace:


.PHONY: all-stageautoprofile-target-libbacktrace maybe-all-stageautoprofile-target-libbacktrace
.PHONY: clean-stageautoprofile-target-libbacktrace maybe-clean-stageautoprofile-target-libbacktrace
maybe-all-stageautoprofile-target-libbacktrace:
maybe-clean-stageautoprofile-target-libbacktrace:


.PHONY: all-stageautofeedback-target-libbacktrace maybe-all-stageautofeedback-target-libbacktrace
.PHONY: clean-stageautofeedback-target-libbacktrace maybe-clean-stageautofeedback-target-libbacktrace
maybe-all-stageautofeedback-target-libbacktrace:
maybe-clean-stageautofeedback-target-libbacktrace:






.PHONY: check-target-libbacktrace maybe-check-target-libbacktrace
maybe-check-target-libbacktrace:
maybe-check-target-libbacktrace: check-target-libbacktrace

check-target-libbacktrace:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)   check)


.PHONY: install-target-libbacktrace maybe-install-target-libbacktrace
maybe-install-target-libbacktrace:
maybe-install-target-libbacktrace: install-target-libbacktrace

install-target-libbacktrace: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libbacktrace maybe-install-strip-target-libbacktrace
maybe-install-strip-target-libbacktrace:
maybe-install-strip-target-libbacktrace: install-strip-target-libbacktrace

install-strip-target-libbacktrace: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libbacktrace info-target-libbacktrace
maybe-info-target-libbacktrace:
maybe-info-target-libbacktrace: info-target-libbacktrace

info-target-libbacktrace: \
    configure-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libbacktrace dvi-target-libbacktrace
maybe-dvi-target-libbacktrace:
maybe-dvi-target-libbacktrace: dvi-target-libbacktrace

dvi-target-libbacktrace: \
    configure-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libbacktrace pdf-target-libbacktrace
maybe-pdf-target-libbacktrace:
maybe-pdf-target-libbacktrace: pdf-target-libbacktrace

pdf-target-libbacktrace: \
    configure-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libbacktrace html-target-libbacktrace
maybe-html-target-libbacktrace:
maybe-html-target-libbacktrace: html-target-libbacktrace

html-target-libbacktrace: \
    configure-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libbacktrace TAGS-target-libbacktrace
maybe-TAGS-target-libbacktrace:
maybe-TAGS-target-libbacktrace: TAGS-target-libbacktrace

TAGS-target-libbacktrace: \
    configure-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libbacktrace install-info-target-libbacktrace
maybe-install-info-target-libbacktrace:
maybe-install-info-target-libbacktrace: install-info-target-libbacktrace

install-info-target-libbacktrace: \
    configure-target-libbacktrace \
    info-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libbacktrace install-dvi-target-libbacktrace
maybe-install-dvi-target-libbacktrace:
maybe-install-dvi-target-libbacktrace: install-dvi-target-libbacktrace

install-dvi-target-libbacktrace: \
    configure-target-libbacktrace \
    dvi-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libbacktrace install-pdf-target-libbacktrace
maybe-install-pdf-target-libbacktrace:
maybe-install-pdf-target-libbacktrace: install-pdf-target-libbacktrace

install-pdf-target-libbacktrace: \
    configure-target-libbacktrace \
    pdf-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libbacktrace install-html-target-libbacktrace
maybe-install-html-target-libbacktrace:
maybe-install-html-target-libbacktrace: install-html-target-libbacktrace

install-html-target-libbacktrace: \
    configure-target-libbacktrace \
    html-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libbacktrace installcheck-target-libbacktrace
maybe-installcheck-target-libbacktrace:
maybe-installcheck-target-libbacktrace: installcheck-target-libbacktrace

installcheck-target-libbacktrace: \
    configure-target-libbacktrace 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libbacktrace mostlyclean-target-libbacktrace
maybe-mostlyclean-target-libbacktrace:
maybe-mostlyclean-target-libbacktrace: mostlyclean-target-libbacktrace

mostlyclean-target-libbacktrace: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libbacktrace clean-target-libbacktrace
maybe-clean-target-libbacktrace:
maybe-clean-target-libbacktrace: clean-target-libbacktrace

clean-target-libbacktrace: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libbacktrace distclean-target-libbacktrace
maybe-distclean-target-libbacktrace:
maybe-distclean-target-libbacktrace: distclean-target-libbacktrace

distclean-target-libbacktrace: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libbacktrace maintainer-clean-target-libbacktrace
maybe-maintainer-clean-target-libbacktrace:
maybe-maintainer-clean-target-libbacktrace: maintainer-clean-target-libbacktrace

maintainer-clean-target-libbacktrace: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libbacktrace/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libbacktrace"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libbacktrace && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-libquadmath maybe-configure-target-libquadmath
maybe-configure-target-libquadmath:
maybe-configure-target-libquadmath: configure-target-libquadmath
configure-target-libquadmath: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libquadmath..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libquadmath; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libquadmath/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libquadmath/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libquadmath/multilib.tmp $(TARGET_SUBDIR)/libquadmath/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libquadmath/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libquadmath/Makefile; \
	    mv $(TARGET_SUBDIR)/libquadmath/multilib.tmp $(TARGET_SUBDIR)/libquadmath/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libquadmath/multilib.tmp $(TARGET_SUBDIR)/libquadmath/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libquadmath/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libquadmath; \
	$(NORMAL_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libquadmath; \
	cd "$(TARGET_SUBDIR)/libquadmath" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libquadmath/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libquadmath; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-target-libquadmath maybe-all-target-libquadmath
maybe-all-target-libquadmath:
TARGET-target-libquadmath=all
maybe-all-target-libquadmath: all-target-libquadmath
all-target-libquadmath: configure-target-libquadmath
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)   \
		$(TARGET-target-libquadmath))





.PHONY: check-target-libquadmath maybe-check-target-libquadmath
maybe-check-target-libquadmath:
maybe-check-target-libquadmath: check-target-libquadmath

check-target-libquadmath:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)   check)


.PHONY: install-target-libquadmath maybe-install-target-libquadmath
maybe-install-target-libquadmath:
maybe-install-target-libquadmath: install-target-libquadmath

install-target-libquadmath: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libquadmath maybe-install-strip-target-libquadmath
maybe-install-strip-target-libquadmath:
maybe-install-strip-target-libquadmath: install-strip-target-libquadmath

install-strip-target-libquadmath: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libquadmath info-target-libquadmath
maybe-info-target-libquadmath:
maybe-info-target-libquadmath: info-target-libquadmath

info-target-libquadmath: \
    configure-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libquadmath dvi-target-libquadmath
maybe-dvi-target-libquadmath:
maybe-dvi-target-libquadmath: dvi-target-libquadmath

dvi-target-libquadmath: \
    configure-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libquadmath pdf-target-libquadmath
maybe-pdf-target-libquadmath:
maybe-pdf-target-libquadmath: pdf-target-libquadmath

pdf-target-libquadmath: \
    configure-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libquadmath html-target-libquadmath
maybe-html-target-libquadmath:
maybe-html-target-libquadmath: html-target-libquadmath

html-target-libquadmath: \
    configure-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libquadmath TAGS-target-libquadmath
maybe-TAGS-target-libquadmath:
maybe-TAGS-target-libquadmath: TAGS-target-libquadmath

TAGS-target-libquadmath: \
    configure-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libquadmath install-info-target-libquadmath
maybe-install-info-target-libquadmath:
maybe-install-info-target-libquadmath: install-info-target-libquadmath

install-info-target-libquadmath: \
    configure-target-libquadmath \
    info-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libquadmath install-dvi-target-libquadmath
maybe-install-dvi-target-libquadmath:
maybe-install-dvi-target-libquadmath: install-dvi-target-libquadmath

install-dvi-target-libquadmath: \
    configure-target-libquadmath \
    dvi-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libquadmath install-pdf-target-libquadmath
maybe-install-pdf-target-libquadmath:
maybe-install-pdf-target-libquadmath: install-pdf-target-libquadmath

install-pdf-target-libquadmath: \
    configure-target-libquadmath \
    pdf-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libquadmath install-html-target-libquadmath
maybe-install-html-target-libquadmath:
maybe-install-html-target-libquadmath: install-html-target-libquadmath

install-html-target-libquadmath: \
    configure-target-libquadmath \
    html-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libquadmath installcheck-target-libquadmath
maybe-installcheck-target-libquadmath:
maybe-installcheck-target-libquadmath: installcheck-target-libquadmath

installcheck-target-libquadmath: \
    configure-target-libquadmath 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libquadmath mostlyclean-target-libquadmath
maybe-mostlyclean-target-libquadmath:
maybe-mostlyclean-target-libquadmath: mostlyclean-target-libquadmath

mostlyclean-target-libquadmath: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libquadmath clean-target-libquadmath
maybe-clean-target-libquadmath:
maybe-clean-target-libquadmath: clean-target-libquadmath

clean-target-libquadmath: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libquadmath distclean-target-libquadmath
maybe-distclean-target-libquadmath:
maybe-distclean-target-libquadmath: distclean-target-libquadmath

distclean-target-libquadmath: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libquadmath maintainer-clean-target-libquadmath
maybe-maintainer-clean-target-libquadmath:
maybe-maintainer-clean-target-libquadmath: maintainer-clean-target-libquadmath

maintainer-clean-target-libquadmath: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libquadmath/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libquadmath"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libquadmath && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-libgfortran maybe-configure-target-libgfortran
maybe-configure-target-libgfortran:
maybe-configure-target-libgfortran: configure-target-libgfortran
configure-target-libgfortran: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libgfortran..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libgfortran; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libgfortran/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libgfortran/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libgfortran/multilib.tmp $(TARGET_SUBDIR)/libgfortran/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libgfortran/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libgfortran/Makefile; \
	    mv $(TARGET_SUBDIR)/libgfortran/multilib.tmp $(TARGET_SUBDIR)/libgfortran/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libgfortran/multilib.tmp $(TARGET_SUBDIR)/libgfortran/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libgfortran/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libgfortran; \
	$(NORMAL_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libgfortran; \
	cd "$(TARGET_SUBDIR)/libgfortran" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libgfortran/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libgfortran; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-target-libgfortran maybe-all-target-libgfortran
maybe-all-target-libgfortran:
TARGET-target-libgfortran=all
maybe-all-target-libgfortran: all-target-libgfortran
all-target-libgfortran: configure-target-libgfortran
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)   \
		$(TARGET-target-libgfortran))





.PHONY: check-target-libgfortran maybe-check-target-libgfortran
maybe-check-target-libgfortran:
maybe-check-target-libgfortran: check-target-libgfortran

check-target-libgfortran:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)   check)


.PHONY: install-target-libgfortran maybe-install-target-libgfortran
maybe-install-target-libgfortran:
maybe-install-target-libgfortran: install-target-libgfortran

install-target-libgfortran: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libgfortran maybe-install-strip-target-libgfortran
maybe-install-strip-target-libgfortran:
maybe-install-strip-target-libgfortran: install-strip-target-libgfortran

install-strip-target-libgfortran: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libgfortran info-target-libgfortran
maybe-info-target-libgfortran:
maybe-info-target-libgfortran: info-target-libgfortran

info-target-libgfortran: \
    configure-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libgfortran dvi-target-libgfortran
maybe-dvi-target-libgfortran:
maybe-dvi-target-libgfortran: dvi-target-libgfortran

dvi-target-libgfortran: \
    configure-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libgfortran pdf-target-libgfortran
maybe-pdf-target-libgfortran:
maybe-pdf-target-libgfortran: pdf-target-libgfortran

pdf-target-libgfortran: \
    configure-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libgfortran html-target-libgfortran
maybe-html-target-libgfortran:
maybe-html-target-libgfortran: html-target-libgfortran

html-target-libgfortran: \
    configure-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libgfortran TAGS-target-libgfortran
maybe-TAGS-target-libgfortran:
maybe-TAGS-target-libgfortran: TAGS-target-libgfortran

TAGS-target-libgfortran: \
    configure-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libgfortran install-info-target-libgfortran
maybe-install-info-target-libgfortran:
maybe-install-info-target-libgfortran: install-info-target-libgfortran

install-info-target-libgfortran: \
    configure-target-libgfortran \
    info-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libgfortran install-dvi-target-libgfortran
maybe-install-dvi-target-libgfortran:
maybe-install-dvi-target-libgfortran: install-dvi-target-libgfortran

install-dvi-target-libgfortran: \
    configure-target-libgfortran \
    dvi-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libgfortran install-pdf-target-libgfortran
maybe-install-pdf-target-libgfortran:
maybe-install-pdf-target-libgfortran: install-pdf-target-libgfortran

install-pdf-target-libgfortran: \
    configure-target-libgfortran \
    pdf-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libgfortran install-html-target-libgfortran
maybe-install-html-target-libgfortran:
maybe-install-html-target-libgfortran: install-html-target-libgfortran

install-html-target-libgfortran: \
    configure-target-libgfortran \
    html-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libgfortran installcheck-target-libgfortran
maybe-installcheck-target-libgfortran:
maybe-installcheck-target-libgfortran: installcheck-target-libgfortran

installcheck-target-libgfortran: \
    configure-target-libgfortran 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libgfortran mostlyclean-target-libgfortran
maybe-mostlyclean-target-libgfortran:
maybe-mostlyclean-target-libgfortran: mostlyclean-target-libgfortran

mostlyclean-target-libgfortran: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libgfortran clean-target-libgfortran
maybe-clean-target-libgfortran:
maybe-clean-target-libgfortran: clean-target-libgfortran

clean-target-libgfortran: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libgfortran distclean-target-libgfortran
maybe-distclean-target-libgfortran:
maybe-distclean-target-libgfortran: distclean-target-libgfortran

distclean-target-libgfortran: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libgfortran maintainer-clean-target-libgfortran
maybe-maintainer-clean-target-libgfortran:
maybe-maintainer-clean-target-libgfortran: maintainer-clean-target-libgfortran

maintainer-clean-target-libgfortran: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgfortran/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libgfortran"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgfortran && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-libobjc maybe-configure-target-libobjc
maybe-configure-target-libobjc:
maybe-configure-target-libobjc: configure-target-libobjc
configure-target-libobjc: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libobjc..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libobjc; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libobjc/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libobjc/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libobjc/multilib.tmp $(TARGET_SUBDIR)/libobjc/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libobjc/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libobjc/Makefile; \
	    mv $(TARGET_SUBDIR)/libobjc/multilib.tmp $(TARGET_SUBDIR)/libobjc/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libobjc/multilib.tmp $(TARGET_SUBDIR)/libobjc/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libobjc/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libobjc; \
	$(NORMAL_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libobjc; \
	cd "$(TARGET_SUBDIR)/libobjc" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libobjc/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libobjc; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-target-libobjc maybe-all-target-libobjc
maybe-all-target-libobjc:
TARGET-target-libobjc=all
maybe-all-target-libobjc: all-target-libobjc
all-target-libobjc: configure-target-libobjc
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)   \
		$(TARGET-target-libobjc))





.PHONY: check-target-libobjc maybe-check-target-libobjc
maybe-check-target-libobjc:
maybe-check-target-libobjc: check-target-libobjc

check-target-libobjc:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)   check)


.PHONY: install-target-libobjc maybe-install-target-libobjc
maybe-install-target-libobjc:
maybe-install-target-libobjc: install-target-libobjc

install-target-libobjc: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libobjc maybe-install-strip-target-libobjc
maybe-install-strip-target-libobjc:
maybe-install-strip-target-libobjc: install-strip-target-libobjc

install-strip-target-libobjc: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libobjc info-target-libobjc
maybe-info-target-libobjc:
maybe-info-target-libobjc: info-target-libobjc

info-target-libobjc: \
    configure-target-libobjc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libobjc dvi-target-libobjc
maybe-dvi-target-libobjc:
maybe-dvi-target-libobjc: dvi-target-libobjc

dvi-target-libobjc: \
    configure-target-libobjc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libobjc pdf-target-libobjc
maybe-pdf-target-libobjc:
maybe-pdf-target-libobjc: pdf-target-libobjc

pdf-target-libobjc: \
    configure-target-libobjc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libobjc html-target-libobjc
maybe-html-target-libobjc:
maybe-html-target-libobjc: html-target-libobjc

html-target-libobjc: \
    configure-target-libobjc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libobjc TAGS-target-libobjc
maybe-TAGS-target-libobjc:
maybe-TAGS-target-libobjc: TAGS-target-libobjc

# libobjc doesn't support TAGS.
TAGS-target-libobjc:


.PHONY: maybe-install-info-target-libobjc install-info-target-libobjc
maybe-install-info-target-libobjc:
maybe-install-info-target-libobjc: install-info-target-libobjc

install-info-target-libobjc: \
    configure-target-libobjc \
    info-target-libobjc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libobjc install-dvi-target-libobjc
maybe-install-dvi-target-libobjc:
maybe-install-dvi-target-libobjc: install-dvi-target-libobjc

# libobjc doesn't support install-dvi.
install-dvi-target-libobjc:


.PHONY: maybe-install-pdf-target-libobjc install-pdf-target-libobjc
maybe-install-pdf-target-libobjc:
maybe-install-pdf-target-libobjc: install-pdf-target-libobjc

install-pdf-target-libobjc: \
    configure-target-libobjc \
    pdf-target-libobjc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libobjc install-html-target-libobjc
maybe-install-html-target-libobjc:
maybe-install-html-target-libobjc: install-html-target-libobjc

install-html-target-libobjc: \
    configure-target-libobjc \
    html-target-libobjc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libobjc installcheck-target-libobjc
maybe-installcheck-target-libobjc:
maybe-installcheck-target-libobjc: installcheck-target-libobjc

installcheck-target-libobjc: \
    configure-target-libobjc 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libobjc mostlyclean-target-libobjc
maybe-mostlyclean-target-libobjc:
maybe-mostlyclean-target-libobjc: mostlyclean-target-libobjc

mostlyclean-target-libobjc: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libobjc clean-target-libobjc
maybe-clean-target-libobjc:
maybe-clean-target-libobjc: clean-target-libobjc

clean-target-libobjc: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libobjc distclean-target-libobjc
maybe-distclean-target-libobjc:
maybe-distclean-target-libobjc: distclean-target-libobjc

distclean-target-libobjc: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libobjc maintainer-clean-target-libobjc
maybe-maintainer-clean-target-libobjc:
maybe-maintainer-clean-target-libobjc: maintainer-clean-target-libobjc

maintainer-clean-target-libobjc: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libobjc/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libobjc"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libobjc && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-libgo maybe-configure-target-libgo
maybe-configure-target-libgo:





.PHONY: all-target-libgo maybe-all-target-libgo
maybe-all-target-libgo:





.PHONY: check-target-libgo maybe-check-target-libgo
maybe-check-target-libgo:

.PHONY: install-target-libgo maybe-install-target-libgo
maybe-install-target-libgo:

.PHONY: install-strip-target-libgo maybe-install-strip-target-libgo
maybe-install-strip-target-libgo:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libgo info-target-libgo
maybe-info-target-libgo:

.PHONY: maybe-dvi-target-libgo dvi-target-libgo
maybe-dvi-target-libgo:

.PHONY: maybe-pdf-target-libgo pdf-target-libgo
maybe-pdf-target-libgo:

.PHONY: maybe-html-target-libgo html-target-libgo
maybe-html-target-libgo:

.PHONY: maybe-TAGS-target-libgo TAGS-target-libgo
maybe-TAGS-target-libgo:

.PHONY: maybe-install-info-target-libgo install-info-target-libgo
maybe-install-info-target-libgo:

.PHONY: maybe-install-dvi-target-libgo install-dvi-target-libgo
maybe-install-dvi-target-libgo:

.PHONY: maybe-install-pdf-target-libgo install-pdf-target-libgo
maybe-install-pdf-target-libgo:

.PHONY: maybe-install-html-target-libgo install-html-target-libgo
maybe-install-html-target-libgo:

.PHONY: maybe-installcheck-target-libgo installcheck-target-libgo
maybe-installcheck-target-libgo:

.PHONY: maybe-mostlyclean-target-libgo mostlyclean-target-libgo
maybe-mostlyclean-target-libgo:

.PHONY: maybe-clean-target-libgo clean-target-libgo
maybe-clean-target-libgo:

.PHONY: maybe-distclean-target-libgo distclean-target-libgo
maybe-distclean-target-libgo:

.PHONY: maybe-maintainer-clean-target-libgo maintainer-clean-target-libgo
maybe-maintainer-clean-target-libgo:





.PHONY: configure-target-libphobos maybe-configure-target-libphobos
maybe-configure-target-libphobos:



.PHONY: configure-stage1-target-libphobos maybe-configure-stage1-target-libphobos
maybe-configure-stage1-target-libphobos:

.PHONY: configure-stage2-target-libphobos maybe-configure-stage2-target-libphobos
maybe-configure-stage2-target-libphobos:

.PHONY: configure-stage3-target-libphobos maybe-configure-stage3-target-libphobos
maybe-configure-stage3-target-libphobos:

.PHONY: configure-stage4-target-libphobos maybe-configure-stage4-target-libphobos
maybe-configure-stage4-target-libphobos:

.PHONY: configure-stageprofile-target-libphobos maybe-configure-stageprofile-target-libphobos
maybe-configure-stageprofile-target-libphobos:

.PHONY: configure-stagetrain-target-libphobos maybe-configure-stagetrain-target-libphobos
maybe-configure-stagetrain-target-libphobos:

.PHONY: configure-stagefeedback-target-libphobos maybe-configure-stagefeedback-target-libphobos
maybe-configure-stagefeedback-target-libphobos:

.PHONY: configure-stageautoprofile-target-libphobos maybe-configure-stageautoprofile-target-libphobos
maybe-configure-stageautoprofile-target-libphobos:

.PHONY: configure-stageautofeedback-target-libphobos maybe-configure-stageautofeedback-target-libphobos
maybe-configure-stageautofeedback-target-libphobos:





.PHONY: all-target-libphobos maybe-all-target-libphobos
maybe-all-target-libphobos:



.PHONY: all-stage1-target-libphobos maybe-all-stage1-target-libphobos
.PHONY: clean-stage1-target-libphobos maybe-clean-stage1-target-libphobos
maybe-all-stage1-target-libphobos:
maybe-clean-stage1-target-libphobos:


.PHONY: all-stage2-target-libphobos maybe-all-stage2-target-libphobos
.PHONY: clean-stage2-target-libphobos maybe-clean-stage2-target-libphobos
maybe-all-stage2-target-libphobos:
maybe-clean-stage2-target-libphobos:


.PHONY: all-stage3-target-libphobos maybe-all-stage3-target-libphobos
.PHONY: clean-stage3-target-libphobos maybe-clean-stage3-target-libphobos
maybe-all-stage3-target-libphobos:
maybe-clean-stage3-target-libphobos:


.PHONY: all-stage4-target-libphobos maybe-all-stage4-target-libphobos
.PHONY: clean-stage4-target-libphobos maybe-clean-stage4-target-libphobos
maybe-all-stage4-target-libphobos:
maybe-clean-stage4-target-libphobos:


.PHONY: all-stageprofile-target-libphobos maybe-all-stageprofile-target-libphobos
.PHONY: clean-stageprofile-target-libphobos maybe-clean-stageprofile-target-libphobos
maybe-all-stageprofile-target-libphobos:
maybe-clean-stageprofile-target-libphobos:


.PHONY: all-stagetrain-target-libphobos maybe-all-stagetrain-target-libphobos
.PHONY: clean-stagetrain-target-libphobos maybe-clean-stagetrain-target-libphobos
maybe-all-stagetrain-target-libphobos:
maybe-clean-stagetrain-target-libphobos:


.PHONY: all-stagefeedback-target-libphobos maybe-all-stagefeedback-target-libphobos
.PHONY: clean-stagefeedback-target-libphobos maybe-clean-stagefeedback-target-libphobos
maybe-all-stagefeedback-target-libphobos:
maybe-clean-stagefeedback-target-libphobos:


.PHONY: all-stageautoprofile-target-libphobos maybe-all-stageautoprofile-target-libphobos
.PHONY: clean-stageautoprofile-target-libphobos maybe-clean-stageautoprofile-target-libphobos
maybe-all-stageautoprofile-target-libphobos:
maybe-clean-stageautoprofile-target-libphobos:


.PHONY: all-stageautofeedback-target-libphobos maybe-all-stageautofeedback-target-libphobos
.PHONY: clean-stageautofeedback-target-libphobos maybe-clean-stageautofeedback-target-libphobos
maybe-all-stageautofeedback-target-libphobos:
maybe-clean-stageautofeedback-target-libphobos:






.PHONY: check-target-libphobos maybe-check-target-libphobos
maybe-check-target-libphobos:

.PHONY: install-target-libphobos maybe-install-target-libphobos
maybe-install-target-libphobos:

.PHONY: install-strip-target-libphobos maybe-install-strip-target-libphobos
maybe-install-strip-target-libphobos:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libphobos info-target-libphobos
maybe-info-target-libphobos:

.PHONY: maybe-dvi-target-libphobos dvi-target-libphobos
maybe-dvi-target-libphobos:

.PHONY: maybe-pdf-target-libphobos pdf-target-libphobos
maybe-pdf-target-libphobos:

.PHONY: maybe-html-target-libphobos html-target-libphobos
maybe-html-target-libphobos:

.PHONY: maybe-TAGS-target-libphobos TAGS-target-libphobos
maybe-TAGS-target-libphobos:

.PHONY: maybe-install-info-target-libphobos install-info-target-libphobos
maybe-install-info-target-libphobos:

.PHONY: maybe-install-dvi-target-libphobos install-dvi-target-libphobos
maybe-install-dvi-target-libphobos:

.PHONY: maybe-install-pdf-target-libphobos install-pdf-target-libphobos
maybe-install-pdf-target-libphobos:

.PHONY: maybe-install-html-target-libphobos install-html-target-libphobos
maybe-install-html-target-libphobos:

.PHONY: maybe-installcheck-target-libphobos installcheck-target-libphobos
maybe-installcheck-target-libphobos:

.PHONY: maybe-mostlyclean-target-libphobos mostlyclean-target-libphobos
maybe-mostlyclean-target-libphobos:

.PHONY: maybe-clean-target-libphobos clean-target-libphobos
maybe-clean-target-libphobos:

.PHONY: maybe-distclean-target-libphobos distclean-target-libphobos
maybe-distclean-target-libphobos:

.PHONY: maybe-maintainer-clean-target-libphobos maintainer-clean-target-libphobos
maybe-maintainer-clean-target-libphobos:





.PHONY: configure-target-libtermcap maybe-configure-target-libtermcap
maybe-configure-target-libtermcap:





.PHONY: all-target-libtermcap maybe-all-target-libtermcap
maybe-all-target-libtermcap:





.PHONY: check-target-libtermcap maybe-check-target-libtermcap
maybe-check-target-libtermcap:

.PHONY: install-target-libtermcap maybe-install-target-libtermcap
maybe-install-target-libtermcap:

.PHONY: install-strip-target-libtermcap maybe-install-strip-target-libtermcap
maybe-install-strip-target-libtermcap:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libtermcap info-target-libtermcap
maybe-info-target-libtermcap:

.PHONY: maybe-dvi-target-libtermcap dvi-target-libtermcap
maybe-dvi-target-libtermcap:

.PHONY: maybe-pdf-target-libtermcap pdf-target-libtermcap
maybe-pdf-target-libtermcap:

.PHONY: maybe-html-target-libtermcap html-target-libtermcap
maybe-html-target-libtermcap:

.PHONY: maybe-TAGS-target-libtermcap TAGS-target-libtermcap
maybe-TAGS-target-libtermcap:

.PHONY: maybe-install-info-target-libtermcap install-info-target-libtermcap
maybe-install-info-target-libtermcap:

.PHONY: maybe-install-dvi-target-libtermcap install-dvi-target-libtermcap
maybe-install-dvi-target-libtermcap:

.PHONY: maybe-install-pdf-target-libtermcap install-pdf-target-libtermcap
maybe-install-pdf-target-libtermcap:

.PHONY: maybe-install-html-target-libtermcap install-html-target-libtermcap
maybe-install-html-target-libtermcap:

.PHONY: maybe-installcheck-target-libtermcap installcheck-target-libtermcap
maybe-installcheck-target-libtermcap:

.PHONY: maybe-mostlyclean-target-libtermcap mostlyclean-target-libtermcap
maybe-mostlyclean-target-libtermcap:

.PHONY: maybe-clean-target-libtermcap clean-target-libtermcap
maybe-clean-target-libtermcap:

.PHONY: maybe-distclean-target-libtermcap distclean-target-libtermcap
maybe-distclean-target-libtermcap:

.PHONY: maybe-maintainer-clean-target-libtermcap maintainer-clean-target-libtermcap
maybe-maintainer-clean-target-libtermcap:





.PHONY: configure-target-winsup maybe-configure-target-winsup
maybe-configure-target-winsup:





.PHONY: all-target-winsup maybe-all-target-winsup
maybe-all-target-winsup:





.PHONY: check-target-winsup maybe-check-target-winsup
maybe-check-target-winsup:

.PHONY: install-target-winsup maybe-install-target-winsup
maybe-install-target-winsup:

.PHONY: install-strip-target-winsup maybe-install-strip-target-winsup
maybe-install-strip-target-winsup:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-winsup info-target-winsup
maybe-info-target-winsup:

.PHONY: maybe-dvi-target-winsup dvi-target-winsup
maybe-dvi-target-winsup:

.PHONY: maybe-pdf-target-winsup pdf-target-winsup
maybe-pdf-target-winsup:

.PHONY: maybe-html-target-winsup html-target-winsup
maybe-html-target-winsup:

.PHONY: maybe-TAGS-target-winsup TAGS-target-winsup
maybe-TAGS-target-winsup:

.PHONY: maybe-install-info-target-winsup install-info-target-winsup
maybe-install-info-target-winsup:

.PHONY: maybe-install-dvi-target-winsup install-dvi-target-winsup
maybe-install-dvi-target-winsup:

.PHONY: maybe-install-pdf-target-winsup install-pdf-target-winsup
maybe-install-pdf-target-winsup:

.PHONY: maybe-install-html-target-winsup install-html-target-winsup
maybe-install-html-target-winsup:

.PHONY: maybe-installcheck-target-winsup installcheck-target-winsup
maybe-installcheck-target-winsup:

.PHONY: maybe-mostlyclean-target-winsup mostlyclean-target-winsup
maybe-mostlyclean-target-winsup:

.PHONY: maybe-clean-target-winsup clean-target-winsup
maybe-clean-target-winsup:

.PHONY: maybe-distclean-target-winsup distclean-target-winsup
maybe-distclean-target-winsup:

.PHONY: maybe-maintainer-clean-target-winsup maintainer-clean-target-winsup
maybe-maintainer-clean-target-winsup:





.PHONY: configure-target-libgloss maybe-configure-target-libgloss
maybe-configure-target-libgloss:





.PHONY: all-target-libgloss maybe-all-target-libgloss
maybe-all-target-libgloss:





.PHONY: check-target-libgloss maybe-check-target-libgloss
maybe-check-target-libgloss:

.PHONY: install-target-libgloss maybe-install-target-libgloss
maybe-install-target-libgloss:

.PHONY: install-strip-target-libgloss maybe-install-strip-target-libgloss
maybe-install-strip-target-libgloss:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libgloss info-target-libgloss
maybe-info-target-libgloss:

.PHONY: maybe-dvi-target-libgloss dvi-target-libgloss
maybe-dvi-target-libgloss:

.PHONY: maybe-pdf-target-libgloss pdf-target-libgloss
maybe-pdf-target-libgloss:

.PHONY: maybe-html-target-libgloss html-target-libgloss
maybe-html-target-libgloss:

.PHONY: maybe-TAGS-target-libgloss TAGS-target-libgloss
maybe-TAGS-target-libgloss:

.PHONY: maybe-install-info-target-libgloss install-info-target-libgloss
maybe-install-info-target-libgloss:

.PHONY: maybe-install-dvi-target-libgloss install-dvi-target-libgloss
maybe-install-dvi-target-libgloss:

.PHONY: maybe-install-pdf-target-libgloss install-pdf-target-libgloss
maybe-install-pdf-target-libgloss:

.PHONY: maybe-install-html-target-libgloss install-html-target-libgloss
maybe-install-html-target-libgloss:

.PHONY: maybe-installcheck-target-libgloss installcheck-target-libgloss
maybe-installcheck-target-libgloss:

.PHONY: maybe-mostlyclean-target-libgloss mostlyclean-target-libgloss
maybe-mostlyclean-target-libgloss:

.PHONY: maybe-clean-target-libgloss clean-target-libgloss
maybe-clean-target-libgloss:

.PHONY: maybe-distclean-target-libgloss distclean-target-libgloss
maybe-distclean-target-libgloss:

.PHONY: maybe-maintainer-clean-target-libgloss maintainer-clean-target-libgloss
maybe-maintainer-clean-target-libgloss:





.PHONY: configure-target-libffi maybe-configure-target-libffi
maybe-configure-target-libffi:





.PHONY: all-target-libffi maybe-all-target-libffi
maybe-all-target-libffi:





.PHONY: check-target-libffi maybe-check-target-libffi
maybe-check-target-libffi:

.PHONY: install-target-libffi maybe-install-target-libffi
maybe-install-target-libffi:

.PHONY: install-strip-target-libffi maybe-install-strip-target-libffi
maybe-install-strip-target-libffi:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libffi info-target-libffi
maybe-info-target-libffi:

.PHONY: maybe-dvi-target-libffi dvi-target-libffi
maybe-dvi-target-libffi:

.PHONY: maybe-pdf-target-libffi pdf-target-libffi
maybe-pdf-target-libffi:

.PHONY: maybe-html-target-libffi html-target-libffi
maybe-html-target-libffi:

.PHONY: maybe-TAGS-target-libffi TAGS-target-libffi
maybe-TAGS-target-libffi:

.PHONY: maybe-install-info-target-libffi install-info-target-libffi
maybe-install-info-target-libffi:

.PHONY: maybe-install-dvi-target-libffi install-dvi-target-libffi
maybe-install-dvi-target-libffi:

.PHONY: maybe-install-pdf-target-libffi install-pdf-target-libffi
maybe-install-pdf-target-libffi:

.PHONY: maybe-install-html-target-libffi install-html-target-libffi
maybe-install-html-target-libffi:

.PHONY: maybe-installcheck-target-libffi installcheck-target-libffi
maybe-installcheck-target-libffi:

.PHONY: maybe-mostlyclean-target-libffi mostlyclean-target-libffi
maybe-mostlyclean-target-libffi:

.PHONY: maybe-clean-target-libffi clean-target-libffi
maybe-clean-target-libffi:

.PHONY: maybe-distclean-target-libffi distclean-target-libffi
maybe-distclean-target-libffi:

.PHONY: maybe-maintainer-clean-target-libffi maintainer-clean-target-libffi
maybe-maintainer-clean-target-libffi:





.PHONY: configure-target-zlib maybe-configure-target-zlib
maybe-configure-target-zlib:



.PHONY: configure-stage1-target-zlib maybe-configure-stage1-target-zlib
maybe-configure-stage1-target-zlib:

.PHONY: configure-stage2-target-zlib maybe-configure-stage2-target-zlib
maybe-configure-stage2-target-zlib:

.PHONY: configure-stage3-target-zlib maybe-configure-stage3-target-zlib
maybe-configure-stage3-target-zlib:

.PHONY: configure-stage4-target-zlib maybe-configure-stage4-target-zlib
maybe-configure-stage4-target-zlib:

.PHONY: configure-stageprofile-target-zlib maybe-configure-stageprofile-target-zlib
maybe-configure-stageprofile-target-zlib:

.PHONY: configure-stagetrain-target-zlib maybe-configure-stagetrain-target-zlib
maybe-configure-stagetrain-target-zlib:

.PHONY: configure-stagefeedback-target-zlib maybe-configure-stagefeedback-target-zlib
maybe-configure-stagefeedback-target-zlib:

.PHONY: configure-stageautoprofile-target-zlib maybe-configure-stageautoprofile-target-zlib
maybe-configure-stageautoprofile-target-zlib:

.PHONY: configure-stageautofeedback-target-zlib maybe-configure-stageautofeedback-target-zlib
maybe-configure-stageautofeedback-target-zlib:





.PHONY: all-target-zlib maybe-all-target-zlib
maybe-all-target-zlib:



.PHONY: all-stage1-target-zlib maybe-all-stage1-target-zlib
.PHONY: clean-stage1-target-zlib maybe-clean-stage1-target-zlib
maybe-all-stage1-target-zlib:
maybe-clean-stage1-target-zlib:


.PHONY: all-stage2-target-zlib maybe-all-stage2-target-zlib
.PHONY: clean-stage2-target-zlib maybe-clean-stage2-target-zlib
maybe-all-stage2-target-zlib:
maybe-clean-stage2-target-zlib:


.PHONY: all-stage3-target-zlib maybe-all-stage3-target-zlib
.PHONY: clean-stage3-target-zlib maybe-clean-stage3-target-zlib
maybe-all-stage3-target-zlib:
maybe-clean-stage3-target-zlib:


.PHONY: all-stage4-target-zlib maybe-all-stage4-target-zlib
.PHONY: clean-stage4-target-zlib maybe-clean-stage4-target-zlib
maybe-all-stage4-target-zlib:
maybe-clean-stage4-target-zlib:


.PHONY: all-stageprofile-target-zlib maybe-all-stageprofile-target-zlib
.PHONY: clean-stageprofile-target-zlib maybe-clean-stageprofile-target-zlib
maybe-all-stageprofile-target-zlib:
maybe-clean-stageprofile-target-zlib:


.PHONY: all-stagetrain-target-zlib maybe-all-stagetrain-target-zlib
.PHONY: clean-stagetrain-target-zlib maybe-clean-stagetrain-target-zlib
maybe-all-stagetrain-target-zlib:
maybe-clean-stagetrain-target-zlib:


.PHONY: all-stagefeedback-target-zlib maybe-all-stagefeedback-target-zlib
.PHONY: clean-stagefeedback-target-zlib maybe-clean-stagefeedback-target-zlib
maybe-all-stagefeedback-target-zlib:
maybe-clean-stagefeedback-target-zlib:


.PHONY: all-stageautoprofile-target-zlib maybe-all-stageautoprofile-target-zlib
.PHONY: clean-stageautoprofile-target-zlib maybe-clean-stageautoprofile-target-zlib
maybe-all-stageautoprofile-target-zlib:
maybe-clean-stageautoprofile-target-zlib:


.PHONY: all-stageautofeedback-target-zlib maybe-all-stageautofeedback-target-zlib
.PHONY: clean-stageautofeedback-target-zlib maybe-clean-stageautofeedback-target-zlib
maybe-all-stageautofeedback-target-zlib:
maybe-clean-stageautofeedback-target-zlib:






.PHONY: check-target-zlib maybe-check-target-zlib
maybe-check-target-zlib:

.PHONY: install-target-zlib maybe-install-target-zlib
maybe-install-target-zlib:

.PHONY: install-strip-target-zlib maybe-install-strip-target-zlib
maybe-install-strip-target-zlib:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-zlib info-target-zlib
maybe-info-target-zlib:

.PHONY: maybe-dvi-target-zlib dvi-target-zlib
maybe-dvi-target-zlib:

.PHONY: maybe-pdf-target-zlib pdf-target-zlib
maybe-pdf-target-zlib:

.PHONY: maybe-html-target-zlib html-target-zlib
maybe-html-target-zlib:

.PHONY: maybe-TAGS-target-zlib TAGS-target-zlib
maybe-TAGS-target-zlib:

.PHONY: maybe-install-info-target-zlib install-info-target-zlib
maybe-install-info-target-zlib:

.PHONY: maybe-install-dvi-target-zlib install-dvi-target-zlib
maybe-install-dvi-target-zlib:

.PHONY: maybe-install-pdf-target-zlib install-pdf-target-zlib
maybe-install-pdf-target-zlib:

.PHONY: maybe-install-html-target-zlib install-html-target-zlib
maybe-install-html-target-zlib:

.PHONY: maybe-installcheck-target-zlib installcheck-target-zlib
maybe-installcheck-target-zlib:

.PHONY: maybe-mostlyclean-target-zlib mostlyclean-target-zlib
maybe-mostlyclean-target-zlib:

.PHONY: maybe-clean-target-zlib clean-target-zlib
maybe-clean-target-zlib:

.PHONY: maybe-distclean-target-zlib distclean-target-zlib
maybe-distclean-target-zlib:

.PHONY: maybe-maintainer-clean-target-zlib maintainer-clean-target-zlib
maybe-maintainer-clean-target-zlib:





.PHONY: configure-target-rda maybe-configure-target-rda
maybe-configure-target-rda:





.PHONY: all-target-rda maybe-all-target-rda
maybe-all-target-rda:





.PHONY: check-target-rda maybe-check-target-rda
maybe-check-target-rda:

.PHONY: install-target-rda maybe-install-target-rda
maybe-install-target-rda:

.PHONY: install-strip-target-rda maybe-install-strip-target-rda
maybe-install-strip-target-rda:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-rda info-target-rda
maybe-info-target-rda:

.PHONY: maybe-dvi-target-rda dvi-target-rda
maybe-dvi-target-rda:

.PHONY: maybe-pdf-target-rda pdf-target-rda
maybe-pdf-target-rda:

.PHONY: maybe-html-target-rda html-target-rda
maybe-html-target-rda:

.PHONY: maybe-TAGS-target-rda TAGS-target-rda
maybe-TAGS-target-rda:

.PHONY: maybe-install-info-target-rda install-info-target-rda
maybe-install-info-target-rda:

.PHONY: maybe-install-dvi-target-rda install-dvi-target-rda
maybe-install-dvi-target-rda:

.PHONY: maybe-install-pdf-target-rda install-pdf-target-rda
maybe-install-pdf-target-rda:

.PHONY: maybe-install-html-target-rda install-html-target-rda
maybe-install-html-target-rda:

.PHONY: maybe-installcheck-target-rda installcheck-target-rda
maybe-installcheck-target-rda:

.PHONY: maybe-mostlyclean-target-rda mostlyclean-target-rda
maybe-mostlyclean-target-rda:

.PHONY: maybe-clean-target-rda clean-target-rda
maybe-clean-target-rda:

.PHONY: maybe-distclean-target-rda distclean-target-rda
maybe-distclean-target-rda:

.PHONY: maybe-maintainer-clean-target-rda maintainer-clean-target-rda
maybe-maintainer-clean-target-rda:





.PHONY: configure-target-libada maybe-configure-target-libada
maybe-configure-target-libada:





.PHONY: all-target-libada maybe-all-target-libada
maybe-all-target-libada:





.PHONY: check-target-libada maybe-check-target-libada
maybe-check-target-libada:

.PHONY: install-target-libada maybe-install-target-libada
maybe-install-target-libada:

.PHONY: install-strip-target-libada maybe-install-strip-target-libada
maybe-install-strip-target-libada:

# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libada info-target-libada
maybe-info-target-libada:

.PHONY: maybe-dvi-target-libada dvi-target-libada
maybe-dvi-target-libada:

.PHONY: maybe-pdf-target-libada pdf-target-libada
maybe-pdf-target-libada:

.PHONY: maybe-html-target-libada html-target-libada
maybe-html-target-libada:

.PHONY: maybe-TAGS-target-libada TAGS-target-libada
maybe-TAGS-target-libada:

.PHONY: maybe-install-info-target-libada install-info-target-libada
maybe-install-info-target-libada:

.PHONY: maybe-install-dvi-target-libada install-dvi-target-libada
maybe-install-dvi-target-libada:

.PHONY: maybe-install-pdf-target-libada install-pdf-target-libada
maybe-install-pdf-target-libada:

.PHONY: maybe-install-html-target-libada install-html-target-libada
maybe-install-html-target-libada:

.PHONY: maybe-installcheck-target-libada installcheck-target-libada
maybe-installcheck-target-libada:

.PHONY: maybe-mostlyclean-target-libada mostlyclean-target-libada
maybe-mostlyclean-target-libada:

.PHONY: maybe-clean-target-libada clean-target-libada
maybe-clean-target-libada:

.PHONY: maybe-distclean-target-libada distclean-target-libada
maybe-distclean-target-libada:

.PHONY: maybe-maintainer-clean-target-libada maintainer-clean-target-libada
maybe-maintainer-clean-target-libada:





.PHONY: configure-target-libgomp maybe-configure-target-libgomp
maybe-configure-target-libgomp:
maybe-configure-target-libgomp: configure-target-libgomp
configure-target-libgomp: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libgomp..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libgomp; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libgomp/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libgomp/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libgomp/multilib.tmp $(TARGET_SUBDIR)/libgomp/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libgomp/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libgomp/Makefile; \
	    mv $(TARGET_SUBDIR)/libgomp/multilib.tmp $(TARGET_SUBDIR)/libgomp/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libgomp/multilib.tmp $(TARGET_SUBDIR)/libgomp/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libgomp/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libgomp; \
	$(NORMAL_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libgomp; \
	cd "$(TARGET_SUBDIR)/libgomp" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libgomp/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libgomp; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-target-libgomp maybe-configure-stage1-target-libgomp
maybe-configure-stage1-target-libgomp:

.PHONY: configure-stage2-target-libgomp maybe-configure-stage2-target-libgomp
maybe-configure-stage2-target-libgomp:

.PHONY: configure-stage3-target-libgomp maybe-configure-stage3-target-libgomp
maybe-configure-stage3-target-libgomp:

.PHONY: configure-stage4-target-libgomp maybe-configure-stage4-target-libgomp
maybe-configure-stage4-target-libgomp:

.PHONY: configure-stageprofile-target-libgomp maybe-configure-stageprofile-target-libgomp
maybe-configure-stageprofile-target-libgomp:

.PHONY: configure-stagetrain-target-libgomp maybe-configure-stagetrain-target-libgomp
maybe-configure-stagetrain-target-libgomp:

.PHONY: configure-stagefeedback-target-libgomp maybe-configure-stagefeedback-target-libgomp
maybe-configure-stagefeedback-target-libgomp:

.PHONY: configure-stageautoprofile-target-libgomp maybe-configure-stageautoprofile-target-libgomp
maybe-configure-stageautoprofile-target-libgomp:

.PHONY: configure-stageautofeedback-target-libgomp maybe-configure-stageautofeedback-target-libgomp
maybe-configure-stageautofeedback-target-libgomp:





.PHONY: all-target-libgomp maybe-all-target-libgomp
maybe-all-target-libgomp:
TARGET-target-libgomp=all
maybe-all-target-libgomp: all-target-libgomp
all-target-libgomp: configure-target-libgomp
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)   \
		$(TARGET-target-libgomp))



.PHONY: all-stage1-target-libgomp maybe-all-stage1-target-libgomp
.PHONY: clean-stage1-target-libgomp maybe-clean-stage1-target-libgomp
maybe-all-stage1-target-libgomp:
maybe-clean-stage1-target-libgomp:


.PHONY: all-stage2-target-libgomp maybe-all-stage2-target-libgomp
.PHONY: clean-stage2-target-libgomp maybe-clean-stage2-target-libgomp
maybe-all-stage2-target-libgomp:
maybe-clean-stage2-target-libgomp:


.PHONY: all-stage3-target-libgomp maybe-all-stage3-target-libgomp
.PHONY: clean-stage3-target-libgomp maybe-clean-stage3-target-libgomp
maybe-all-stage3-target-libgomp:
maybe-clean-stage3-target-libgomp:


.PHONY: all-stage4-target-libgomp maybe-all-stage4-target-libgomp
.PHONY: clean-stage4-target-libgomp maybe-clean-stage4-target-libgomp
maybe-all-stage4-target-libgomp:
maybe-clean-stage4-target-libgomp:


.PHONY: all-stageprofile-target-libgomp maybe-all-stageprofile-target-libgomp
.PHONY: clean-stageprofile-target-libgomp maybe-clean-stageprofile-target-libgomp
maybe-all-stageprofile-target-libgomp:
maybe-clean-stageprofile-target-libgomp:


.PHONY: all-stagetrain-target-libgomp maybe-all-stagetrain-target-libgomp
.PHONY: clean-stagetrain-target-libgomp maybe-clean-stagetrain-target-libgomp
maybe-all-stagetrain-target-libgomp:
maybe-clean-stagetrain-target-libgomp:


.PHONY: all-stagefeedback-target-libgomp maybe-all-stagefeedback-target-libgomp
.PHONY: clean-stagefeedback-target-libgomp maybe-clean-stagefeedback-target-libgomp
maybe-all-stagefeedback-target-libgomp:
maybe-clean-stagefeedback-target-libgomp:


.PHONY: all-stageautoprofile-target-libgomp maybe-all-stageautoprofile-target-libgomp
.PHONY: clean-stageautoprofile-target-libgomp maybe-clean-stageautoprofile-target-libgomp
maybe-all-stageautoprofile-target-libgomp:
maybe-clean-stageautoprofile-target-libgomp:


.PHONY: all-stageautofeedback-target-libgomp maybe-all-stageautofeedback-target-libgomp
.PHONY: clean-stageautofeedback-target-libgomp maybe-clean-stageautofeedback-target-libgomp
maybe-all-stageautofeedback-target-libgomp:
maybe-clean-stageautofeedback-target-libgomp:






.PHONY: check-target-libgomp maybe-check-target-libgomp
maybe-check-target-libgomp:
maybe-check-target-libgomp: check-target-libgomp

check-target-libgomp:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)   check)


.PHONY: install-target-libgomp maybe-install-target-libgomp
maybe-install-target-libgomp:
maybe-install-target-libgomp: install-target-libgomp

install-target-libgomp: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libgomp maybe-install-strip-target-libgomp
maybe-install-strip-target-libgomp:
maybe-install-strip-target-libgomp: install-strip-target-libgomp

install-strip-target-libgomp: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libgomp info-target-libgomp
maybe-info-target-libgomp:
maybe-info-target-libgomp: info-target-libgomp

info-target-libgomp: \
    configure-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libgomp dvi-target-libgomp
maybe-dvi-target-libgomp:
maybe-dvi-target-libgomp: dvi-target-libgomp

dvi-target-libgomp: \
    configure-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libgomp pdf-target-libgomp
maybe-pdf-target-libgomp:
maybe-pdf-target-libgomp: pdf-target-libgomp

pdf-target-libgomp: \
    configure-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libgomp html-target-libgomp
maybe-html-target-libgomp:
maybe-html-target-libgomp: html-target-libgomp

html-target-libgomp: \
    configure-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libgomp TAGS-target-libgomp
maybe-TAGS-target-libgomp:
maybe-TAGS-target-libgomp: TAGS-target-libgomp

TAGS-target-libgomp: \
    configure-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libgomp install-info-target-libgomp
maybe-install-info-target-libgomp:
maybe-install-info-target-libgomp: install-info-target-libgomp

install-info-target-libgomp: \
    configure-target-libgomp \
    info-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libgomp install-dvi-target-libgomp
maybe-install-dvi-target-libgomp:
maybe-install-dvi-target-libgomp: install-dvi-target-libgomp

install-dvi-target-libgomp: \
    configure-target-libgomp \
    dvi-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libgomp install-pdf-target-libgomp
maybe-install-pdf-target-libgomp:
maybe-install-pdf-target-libgomp: install-pdf-target-libgomp

install-pdf-target-libgomp: \
    configure-target-libgomp \
    pdf-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libgomp install-html-target-libgomp
maybe-install-html-target-libgomp:
maybe-install-html-target-libgomp: install-html-target-libgomp

install-html-target-libgomp: \
    configure-target-libgomp \
    html-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libgomp installcheck-target-libgomp
maybe-installcheck-target-libgomp:
maybe-installcheck-target-libgomp: installcheck-target-libgomp

installcheck-target-libgomp: \
    configure-target-libgomp 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libgomp mostlyclean-target-libgomp
maybe-mostlyclean-target-libgomp:
maybe-mostlyclean-target-libgomp: mostlyclean-target-libgomp

mostlyclean-target-libgomp: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libgomp clean-target-libgomp
maybe-clean-target-libgomp:
maybe-clean-target-libgomp: clean-target-libgomp

clean-target-libgomp: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libgomp distclean-target-libgomp
maybe-distclean-target-libgomp:
maybe-distclean-target-libgomp: distclean-target-libgomp

distclean-target-libgomp: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libgomp maintainer-clean-target-libgomp
maybe-maintainer-clean-target-libgomp:
maybe-maintainer-clean-target-libgomp: maintainer-clean-target-libgomp

maintainer-clean-target-libgomp: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libgomp/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libgomp"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libgomp && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-libitm maybe-configure-target-libitm
maybe-configure-target-libitm:
maybe-configure-target-libitm: configure-target-libitm
configure-target-libitm: 
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libitm..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libitm; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libitm/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libitm/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libitm/multilib.tmp $(TARGET_SUBDIR)/libitm/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libitm/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libitm/Makefile; \
	    mv $(TARGET_SUBDIR)/libitm/multilib.tmp $(TARGET_SUBDIR)/libitm/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libitm/multilib.tmp $(TARGET_SUBDIR)/libitm/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libitm/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libitm; \
	$(NORMAL_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libitm; \
	cd "$(TARGET_SUBDIR)/libitm" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libitm/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libitm; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1





.PHONY: all-target-libitm maybe-all-target-libitm
maybe-all-target-libitm:
TARGET-target-libitm=all
maybe-all-target-libitm: all-target-libitm
all-target-libitm: configure-target-libitm
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)   \
		$(TARGET-target-libitm))





.PHONY: check-target-libitm maybe-check-target-libitm
maybe-check-target-libitm:
maybe-check-target-libitm: check-target-libitm

check-target-libitm:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)   check)


.PHONY: install-target-libitm maybe-install-target-libitm
maybe-install-target-libitm:
maybe-install-target-libitm: install-target-libitm

install-target-libitm: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libitm maybe-install-strip-target-libitm
maybe-install-strip-target-libitm:
maybe-install-strip-target-libitm: install-strip-target-libitm

install-strip-target-libitm: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libitm info-target-libitm
maybe-info-target-libitm:
maybe-info-target-libitm: info-target-libitm

info-target-libitm: \
    configure-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libitm dvi-target-libitm
maybe-dvi-target-libitm:
maybe-dvi-target-libitm: dvi-target-libitm

dvi-target-libitm: \
    configure-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libitm pdf-target-libitm
maybe-pdf-target-libitm:
maybe-pdf-target-libitm: pdf-target-libitm

pdf-target-libitm: \
    configure-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libitm html-target-libitm
maybe-html-target-libitm:
maybe-html-target-libitm: html-target-libitm

html-target-libitm: \
    configure-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libitm TAGS-target-libitm
maybe-TAGS-target-libitm:
maybe-TAGS-target-libitm: TAGS-target-libitm

TAGS-target-libitm: \
    configure-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libitm install-info-target-libitm
maybe-install-info-target-libitm:
maybe-install-info-target-libitm: install-info-target-libitm

install-info-target-libitm: \
    configure-target-libitm \
    info-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libitm install-dvi-target-libitm
maybe-install-dvi-target-libitm:
maybe-install-dvi-target-libitm: install-dvi-target-libitm

install-dvi-target-libitm: \
    configure-target-libitm \
    dvi-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libitm install-pdf-target-libitm
maybe-install-pdf-target-libitm:
maybe-install-pdf-target-libitm: install-pdf-target-libitm

install-pdf-target-libitm: \
    configure-target-libitm \
    pdf-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libitm install-html-target-libitm
maybe-install-html-target-libitm:
maybe-install-html-target-libitm: install-html-target-libitm

install-html-target-libitm: \
    configure-target-libitm \
    html-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libitm installcheck-target-libitm
maybe-installcheck-target-libitm:
maybe-installcheck-target-libitm: installcheck-target-libitm

installcheck-target-libitm: \
    configure-target-libitm 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libitm mostlyclean-target-libitm
maybe-mostlyclean-target-libitm:
maybe-mostlyclean-target-libitm: mostlyclean-target-libitm

mostlyclean-target-libitm: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libitm clean-target-libitm
maybe-clean-target-libitm:
maybe-clean-target-libitm: clean-target-libitm

clean-target-libitm: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libitm distclean-target-libitm
maybe-distclean-target-libitm:
maybe-distclean-target-libitm: distclean-target-libitm

distclean-target-libitm: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libitm maintainer-clean-target-libitm
maybe-maintainer-clean-target-libitm:
maybe-maintainer-clean-target-libitm: maintainer-clean-target-libitm

maintainer-clean-target-libitm: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libitm/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libitm"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libitm && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1






.PHONY: configure-target-libatomic maybe-configure-target-libatomic
maybe-configure-target-libatomic:
maybe-configure-target-libatomic: configure-target-libatomic
configure-target-libatomic: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Checking multilib configuration for libatomic..."; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libatomic; \
	$(CC_FOR_TARGET) --print-multi-lib > $(TARGET_SUBDIR)/libatomic/multilib.tmp 2> /dev/null; \
	if test -r $(TARGET_SUBDIR)/libatomic/multilib.out; then \
	  if cmp -s $(TARGET_SUBDIR)/libatomic/multilib.tmp $(TARGET_SUBDIR)/libatomic/multilib.out; then \
	    rm -f $(TARGET_SUBDIR)/libatomic/multilib.tmp; \
	  else \
	    rm -f $(TARGET_SUBDIR)/libatomic/Makefile; \
	    mv $(TARGET_SUBDIR)/libatomic/multilib.tmp $(TARGET_SUBDIR)/libatomic/multilib.out; \
	  fi; \
	else \
	  mv $(TARGET_SUBDIR)/libatomic/multilib.tmp $(TARGET_SUBDIR)/libatomic/multilib.out; \
	fi; \
	test ! -f $(TARGET_SUBDIR)/libatomic/Makefile || exit 0; \
	$(SHELL) $(srcdir)/mkinstalldirs $(TARGET_SUBDIR)/libatomic; \
	$(NORMAL_TARGET_EXPORTS)  \
	echo Configuring in $(TARGET_SUBDIR)/libatomic; \
	cd "$(TARGET_SUBDIR)/libatomic" || exit 1; \
	case $(srcdir) in \
	  /* | [A-Za-z]:[\\/]*) topdir=$(srcdir) ;; \
	  *) topdir=`echo $(TARGET_SUBDIR)/libatomic/ | \
		sed -e 's,\./,,g' -e 's,[^/]*/,../,g' `$(srcdir) ;; \
	esac; \
	module_srcdir=libatomic; \
	rm -f no-such-file || : ; \
	CONFIG_SITE=no-such-file $(SHELL) \
	  $$s/$$module_srcdir/configure \
	  --srcdir=$${topdir}/$$module_srcdir \
	  $(TARGET_CONFIGARGS) --build=${build_alias} --host=${target_alias} \
	  --target=${target_alias}  \
	  || exit 1



.PHONY: configure-stage1-target-libatomic maybe-configure-stage1-target-libatomic
maybe-configure-stage1-target-libatomic:

.PHONY: configure-stage2-target-libatomic maybe-configure-stage2-target-libatomic
maybe-configure-stage2-target-libatomic:

.PHONY: configure-stage3-target-libatomic maybe-configure-stage3-target-libatomic
maybe-configure-stage3-target-libatomic:

.PHONY: configure-stage4-target-libatomic maybe-configure-stage4-target-libatomic
maybe-configure-stage4-target-libatomic:

.PHONY: configure-stageprofile-target-libatomic maybe-configure-stageprofile-target-libatomic
maybe-configure-stageprofile-target-libatomic:

.PHONY: configure-stagetrain-target-libatomic maybe-configure-stagetrain-target-libatomic
maybe-configure-stagetrain-target-libatomic:

.PHONY: configure-stagefeedback-target-libatomic maybe-configure-stagefeedback-target-libatomic
maybe-configure-stagefeedback-target-libatomic:

.PHONY: configure-stageautoprofile-target-libatomic maybe-configure-stageautoprofile-target-libatomic
maybe-configure-stageautoprofile-target-libatomic:

.PHONY: configure-stageautofeedback-target-libatomic maybe-configure-stageautofeedback-target-libatomic
maybe-configure-stageautofeedback-target-libatomic:





.PHONY: all-target-libatomic maybe-all-target-libatomic
maybe-all-target-libatomic:
TARGET-target-libatomic=all
maybe-all-target-libatomic: all-target-libatomic
all-target-libatomic: configure-target-libatomic
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS)  \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) $(EXTRA_TARGET_FLAGS)   \
		$(TARGET-target-libatomic))



.PHONY: all-stage1-target-libatomic maybe-all-stage1-target-libatomic
.PHONY: clean-stage1-target-libatomic maybe-clean-stage1-target-libatomic
maybe-all-stage1-target-libatomic:
maybe-clean-stage1-target-libatomic:


.PHONY: all-stage2-target-libatomic maybe-all-stage2-target-libatomic
.PHONY: clean-stage2-target-libatomic maybe-clean-stage2-target-libatomic
maybe-all-stage2-target-libatomic:
maybe-clean-stage2-target-libatomic:


.PHONY: all-stage3-target-libatomic maybe-all-stage3-target-libatomic
.PHONY: clean-stage3-target-libatomic maybe-clean-stage3-target-libatomic
maybe-all-stage3-target-libatomic:
maybe-clean-stage3-target-libatomic:


.PHONY: all-stage4-target-libatomic maybe-all-stage4-target-libatomic
.PHONY: clean-stage4-target-libatomic maybe-clean-stage4-target-libatomic
maybe-all-stage4-target-libatomic:
maybe-clean-stage4-target-libatomic:


.PHONY: all-stageprofile-target-libatomic maybe-all-stageprofile-target-libatomic
.PHONY: clean-stageprofile-target-libatomic maybe-clean-stageprofile-target-libatomic
maybe-all-stageprofile-target-libatomic:
maybe-clean-stageprofile-target-libatomic:


.PHONY: all-stagetrain-target-libatomic maybe-all-stagetrain-target-libatomic
.PHONY: clean-stagetrain-target-libatomic maybe-clean-stagetrain-target-libatomic
maybe-all-stagetrain-target-libatomic:
maybe-clean-stagetrain-target-libatomic:


.PHONY: all-stagefeedback-target-libatomic maybe-all-stagefeedback-target-libatomic
.PHONY: clean-stagefeedback-target-libatomic maybe-clean-stagefeedback-target-libatomic
maybe-all-stagefeedback-target-libatomic:
maybe-clean-stagefeedback-target-libatomic:


.PHONY: all-stageautoprofile-target-libatomic maybe-all-stageautoprofile-target-libatomic
.PHONY: clean-stageautoprofile-target-libatomic maybe-clean-stageautoprofile-target-libatomic
maybe-all-stageautoprofile-target-libatomic:
maybe-clean-stageautoprofile-target-libatomic:


.PHONY: all-stageautofeedback-target-libatomic maybe-all-stageautofeedback-target-libatomic
.PHONY: clean-stageautofeedback-target-libatomic maybe-clean-stageautofeedback-target-libatomic
maybe-all-stageautofeedback-target-libatomic:
maybe-clean-stageautofeedback-target-libatomic:






.PHONY: check-target-libatomic maybe-check-target-libatomic
maybe-check-target-libatomic:
maybe-check-target-libatomic: check-target-libatomic

check-target-libatomic:
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)   check)


.PHONY: install-target-libatomic maybe-install-target-libatomic
maybe-install-target-libatomic:
maybe-install-target-libatomic: install-target-libatomic

install-target-libatomic: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install)


.PHONY: install-strip-target-libatomic maybe-install-strip-target-libatomic
maybe-install-strip-target-libatomic:
maybe-install-strip-target-libatomic: install-strip-target-libatomic

install-strip-target-libatomic: installdirs
	@: $(MAKE); $(unstage)
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(TARGET_FLAGS_TO_PASS)  install-strip)


# Other targets (info, dvi, pdf, etc.)

.PHONY: maybe-info-target-libatomic info-target-libatomic
maybe-info-target-libatomic:
maybe-info-target-libatomic: info-target-libatomic

info-target-libatomic: \
    configure-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing info in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           info) \
	  || exit 1


.PHONY: maybe-dvi-target-libatomic dvi-target-libatomic
maybe-dvi-target-libatomic:
maybe-dvi-target-libatomic: dvi-target-libatomic

dvi-target-libatomic: \
    configure-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing dvi in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           dvi) \
	  || exit 1


.PHONY: maybe-pdf-target-libatomic pdf-target-libatomic
maybe-pdf-target-libatomic:
maybe-pdf-target-libatomic: pdf-target-libatomic

pdf-target-libatomic: \
    configure-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing pdf in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           pdf) \
	  || exit 1


.PHONY: maybe-html-target-libatomic html-target-libatomic
maybe-html-target-libatomic:
maybe-html-target-libatomic: html-target-libatomic

html-target-libatomic: \
    configure-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing html in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           html) \
	  || exit 1


.PHONY: maybe-TAGS-target-libatomic TAGS-target-libatomic
maybe-TAGS-target-libatomic:
maybe-TAGS-target-libatomic: TAGS-target-libatomic

TAGS-target-libatomic: \
    configure-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing TAGS in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           TAGS) \
	  || exit 1


.PHONY: maybe-install-info-target-libatomic install-info-target-libatomic
maybe-install-info-target-libatomic:
maybe-install-info-target-libatomic: install-info-target-libatomic

install-info-target-libatomic: \
    configure-target-libatomic \
    info-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-info in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-info) \
	  || exit 1


.PHONY: maybe-install-dvi-target-libatomic install-dvi-target-libatomic
maybe-install-dvi-target-libatomic:
maybe-install-dvi-target-libatomic: install-dvi-target-libatomic

install-dvi-target-libatomic: \
    configure-target-libatomic \
    dvi-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-dvi in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-dvi) \
	  || exit 1


.PHONY: maybe-install-pdf-target-libatomic install-pdf-target-libatomic
maybe-install-pdf-target-libatomic:
maybe-install-pdf-target-libatomic: install-pdf-target-libatomic

install-pdf-target-libatomic: \
    configure-target-libatomic \
    pdf-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-pdf in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-pdf) \
	  || exit 1


.PHONY: maybe-install-html-target-libatomic install-html-target-libatomic
maybe-install-html-target-libatomic:
maybe-install-html-target-libatomic: install-html-target-libatomic

install-html-target-libatomic: \
    configure-target-libatomic \
    html-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing install-html in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           install-html) \
	  || exit 1


.PHONY: maybe-installcheck-target-libatomic installcheck-target-libatomic
maybe-installcheck-target-libatomic:
maybe-installcheck-target-libatomic: installcheck-target-libatomic

installcheck-target-libatomic: \
    configure-target-libatomic 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing installcheck in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           installcheck) \
	  || exit 1


.PHONY: maybe-mostlyclean-target-libatomic mostlyclean-target-libatomic
maybe-mostlyclean-target-libatomic:
maybe-mostlyclean-target-libatomic: mostlyclean-target-libatomic

mostlyclean-target-libatomic: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing mostlyclean in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           mostlyclean) \
	  || exit 1


.PHONY: maybe-clean-target-libatomic clean-target-libatomic
maybe-clean-target-libatomic:
maybe-clean-target-libatomic: clean-target-libatomic

clean-target-libatomic: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing clean in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           clean) \
	  || exit 1


.PHONY: maybe-distclean-target-libatomic distclean-target-libatomic
maybe-distclean-target-libatomic:
maybe-distclean-target-libatomic: distclean-target-libatomic

distclean-target-libatomic: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing distclean in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           distclean) \
	  || exit 1


.PHONY: maybe-maintainer-clean-target-libatomic maintainer-clean-target-libatomic
maybe-maintainer-clean-target-libatomic:
maybe-maintainer-clean-target-libatomic: maintainer-clean-target-libatomic

maintainer-clean-target-libatomic: 
	@: $(MAKE); $(unstage)
	@[ -f $(TARGET_SUBDIR)/libatomic/Makefile ] || exit 0; \
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(NORMAL_TARGET_EXPORTS) \
	echo "Doing maintainer-clean in $(TARGET_SUBDIR)/libatomic"; \
	for flag in $(EXTRA_TARGET_FLAGS); do \
	  eval `echo "$$flag" | sed -e "s|^\([^=]*\)=\(.*\)|\1='\2'; export \1|"`; \
	done; \
	(cd $(TARGET_SUBDIR)/libatomic && \
	  $(MAKE) $(BASE_FLAGS_TO_PASS) "AR=$${AR}" "AS=$${AS}" \
	          "CC=$${CC}" "CXX=$${CXX}" "LD=$${LD}" "NM=$${NM}" \
	          "RANLIB=$${RANLIB}" \
	          "DLLTOOL=$${DLLTOOL}" "WINDRES=$${WINDRES}" "WINDMC=$${WINDMC}" \
	           maintainer-clean) \
	  || exit 1




.PHONY: check-target-libgomp-c++
check-target-libgomp-c++:
	$(MAKE) RUNTESTFLAGS="$(RUNTESTFLAGS) c++.exp" check-target-libgomp

.PHONY: check-target-libgomp-fortran
check-target-libgomp-fortran:
	$(MAKE) RUNTESTFLAGS="$(RUNTESTFLAGS) fortran.exp" check-target-libgomp


.PHONY: check-target-libitm-c++
check-target-libitm-c++:
	$(MAKE) RUNTESTFLAGS="$(RUNTESTFLAGS) c++.exp" check-target-libitm


# ----------
# GCC module
# ----------

.PHONY: cross
cross: all-build all-gas all-ld
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	echo "Building the C and C++ compiler"; \
	cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) LANGUAGES="c c++"
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	echo "Building runtime libraries"; \
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) LANGUAGES="c c++" all


.PHONY: check-gcc-c check-c
check-gcc-c:
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) check-gcc);
check-c: check-gcc-c

.PHONY: check-gcc-c++ check-c++
check-gcc-c++:
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) check-c++);
check-c++: check-gcc-c++ check-target-libstdc++-v3 check-target-libitm-c++ check-target-libgomp-c++

.PHONY: check-gcc-fortran check-fortran
check-gcc-fortran:
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) check-fortran);
check-fortran: check-gcc-fortran check-target-libquadmath check-target-libgfortran check-target-libgomp-fortran

.PHONY: check-gcc-ada check-ada
check-gcc-ada:
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) check-ada);
check-ada: check-gcc-ada check-target-libada

.PHONY: check-gcc-objc check-objc
check-gcc-objc:
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) check-objc);
check-objc: check-gcc-objc check-target-libobjc

.PHONY: check-gcc-obj-c++ check-obj-c++
check-gcc-obj-c++:
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) check-obj-c++);
check-obj-c++: check-gcc-obj-c++

.PHONY: check-gcc-go check-go
check-gcc-go:
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) check-go);
check-go: check-gcc-go check-target-libgo check-gotools

.PHONY: check-gcc-d check-d
check-gcc-d:
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) check-d);
check-d: check-gcc-d check-target-libphobos

.PHONY: check-gcc-jit check-jit
check-gcc-jit:
	r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	$(HOST_EXPORTS) \
	(cd gcc && $(MAKE) $(GCC_FLAGS_TO_PASS) check-jit);
check-jit: check-gcc-jit


# The gcc part of install-no-fixedincludes, which relies on an intimate
# knowledge of how a number of gcc internal targets (inter)operate.  Delegate.
.PHONY: gcc-install-no-fixedincludes
gcc-install-no-fixedincludes:
	@if [ -f ./gcc/Makefile ]; then \
	  r=`${PWD_COMMAND}`; export r; \
	  s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	  $(HOST_EXPORTS) \
	  (cd ./gcc \
	   && $(MAKE) $(GCC_FLAGS_TO_PASS) install-no-fixedincludes); \
	else true; fi

# ---------------------
# GCC bootstrap support
# ---------------------

# We track the current stage (the one in 'gcc') in the stage_current file.
# stage_last instead tracks the stage that was built last.  These targets
# are dummy when toplevel bootstrap is not active.

# While making host and target tools, symlinks to the final stage must be
# there, so $(unstage) should be run at various points.  To avoid excessive
# recursive invocations of make, we "inline" them using a variable.  These
# must be referenced as ": $(MAKE) ; $(unstage)" rather than "$(unstage)"
# to avoid warnings from the GNU Make job server.

unstage = :
stage = :
current_stage = ""


.PHONY: unstage stage
unstage:
	@: $(MAKE); $(unstage)
stage:
	@: $(MAKE); $(stage)

# Disable commands for lean bootstrap.
LEAN = false

# We name the build directories for the various stages "stage1-gcc",
# "stage2-gcc","stage3-gcc", etc.

# Since the 'compare' process will fail (on debugging information) if any
# directory names are different, we need to link the gcc directory for
# the previous stage to a constant name ('prev-gcc'), and to make the name of
# the build directories constant as well. For the latter, we use naked names
# like 'gcc', because the scripts in that directory assume it.  We use
# mv on platforms where symlinks to directories do not work or are not
# reliable.

# 'touch' doesn't work right on some platforms.
STAMP = echo timestamp > 

# We only want to compare .o files, so set this!
objext = .o


.PHONY: stage1-start stage1-end

stage1-start::
	@: $(MAKE); $(stage); \
	echo stage1 > stage_current; \
	echo stage1 > stage_last; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)
	@cd $(HOST_SUBDIR); [ -d stage1-bfd ] || \
	  mkdir stage1-bfd; \
	mv stage1-bfd bfd
	@cd $(HOST_SUBDIR); [ -d stage1-opcodes ] || \
	  mkdir stage1-opcodes; \
	mv stage1-opcodes opcodes
	@cd $(HOST_SUBDIR); [ -d stage1-binutils ] || \
	  mkdir stage1-binutils; \
	mv stage1-binutils binutils
	@cd $(HOST_SUBDIR); [ -d stage1-fixincludes ] || \
	  mkdir stage1-fixincludes; \
	mv stage1-fixincludes fixincludes
	@cd $(HOST_SUBDIR); [ -d stage1-gas ] || \
	  mkdir stage1-gas; \
	mv stage1-gas gas
	@cd $(HOST_SUBDIR); [ -d stage1-gcc ] || \
	  mkdir stage1-gcc; \
	mv stage1-gcc gcc
	@cd $(HOST_SUBDIR); [ -d stage1-gmp ] || \
	  mkdir stage1-gmp; \
	mv stage1-gmp gmp
	@cd $(HOST_SUBDIR); [ -d stage1-mpfr ] || \
	  mkdir stage1-mpfr; \
	mv stage1-mpfr mpfr
	@cd $(HOST_SUBDIR); [ -d stage1-mpc ] || \
	  mkdir stage1-mpc; \
	mv stage1-mpc mpc
	@cd $(HOST_SUBDIR); [ -d stage1-isl ] || \
	  mkdir stage1-isl; \
	mv stage1-isl isl
	@cd $(HOST_SUBDIR); [ -d stage1-intl ] || \
	  mkdir stage1-intl; \
	mv stage1-intl intl
	@cd $(HOST_SUBDIR); [ -d stage1-ld ] || \
	  mkdir stage1-ld; \
	mv stage1-ld ld
	@cd $(HOST_SUBDIR); [ -d stage1-libbacktrace ] || \
	  mkdir stage1-libbacktrace; \
	mv stage1-libbacktrace libbacktrace
	@cd $(HOST_SUBDIR); [ -d stage1-libcpp ] || \
	  mkdir stage1-libcpp; \
	mv stage1-libcpp libcpp
	@cd $(HOST_SUBDIR); [ -d stage1-libcody ] || \
	  mkdir stage1-libcody; \
	mv stage1-libcody libcody
	@cd $(HOST_SUBDIR); [ -d stage1-libdecnumber ] || \
	  mkdir stage1-libdecnumber; \
	mv stage1-libdecnumber libdecnumber
	@cd $(HOST_SUBDIR); [ -d stage1-libiberty ] || \
	  mkdir stage1-libiberty; \
	mv stage1-libiberty libiberty
	@cd $(HOST_SUBDIR); [ -d stage1-zlib ] || \
	  mkdir stage1-zlib; \
	mv stage1-zlib zlib
	@cd $(HOST_SUBDIR); [ -d stage1-lto-plugin ] || \
	  mkdir stage1-lto-plugin; \
	mv stage1-lto-plugin lto-plugin
	@cd $(HOST_SUBDIR); [ -d stage1-libctf ] || \
	  mkdir stage1-libctf; \
	mv stage1-libctf libctf
	@[ -d stage1-$(TARGET_SUBDIR) ] || \
	  mkdir stage1-$(TARGET_SUBDIR); \
	mv stage1-$(TARGET_SUBDIR) $(TARGET_SUBDIR)

stage1-end:: 
	@if test -d $(HOST_SUBDIR)/bfd; then \
	  cd $(HOST_SUBDIR); mv bfd stage1-bfd; \
	fi
	@if test -d $(HOST_SUBDIR)/opcodes; then \
	  cd $(HOST_SUBDIR); mv opcodes stage1-opcodes; \
	fi
	@if test -d $(HOST_SUBDIR)/binutils; then \
	  cd $(HOST_SUBDIR); mv binutils stage1-binutils; \
	fi
	@if test -d $(HOST_SUBDIR)/fixincludes; then \
	  cd $(HOST_SUBDIR); mv fixincludes stage1-fixincludes; \
	fi
	@if test -d $(HOST_SUBDIR)/gas; then \
	  cd $(HOST_SUBDIR); mv gas stage1-gas; \
	fi
	@if test -d $(HOST_SUBDIR)/gcc; then \
	  cd $(HOST_SUBDIR); mv gcc stage1-gcc; \
	fi
	@if test -d $(HOST_SUBDIR)/gmp; then \
	  cd $(HOST_SUBDIR); mv gmp stage1-gmp; \
	fi
	@if test -d $(HOST_SUBDIR)/mpfr; then \
	  cd $(HOST_SUBDIR); mv mpfr stage1-mpfr; \
	fi
	@if test -d $(HOST_SUBDIR)/mpc; then \
	  cd $(HOST_SUBDIR); mv mpc stage1-mpc; \
	fi
	@if test -d $(HOST_SUBDIR)/isl; then \
	  cd $(HOST_SUBDIR); mv isl stage1-isl; \
	fi
	@if test -d $(HOST_SUBDIR)/intl; then \
	  cd $(HOST_SUBDIR); mv intl stage1-intl; \
	fi
	@if test -d $(HOST_SUBDIR)/ld; then \
	  cd $(HOST_SUBDIR); mv ld stage1-ld; \
	fi
	@if test -d $(HOST_SUBDIR)/libbacktrace; then \
	  cd $(HOST_SUBDIR); mv libbacktrace stage1-libbacktrace; \
	fi
	@if test -d $(HOST_SUBDIR)/libcpp; then \
	  cd $(HOST_SUBDIR); mv libcpp stage1-libcpp; \
	fi
	@if test -d $(HOST_SUBDIR)/libcody; then \
	  cd $(HOST_SUBDIR); mv libcody stage1-libcody; \
	fi
	@if test -d $(HOST_SUBDIR)/libdecnumber; then \
	  cd $(HOST_SUBDIR); mv libdecnumber stage1-libdecnumber; \
	fi
	@if test -d $(HOST_SUBDIR)/libiberty; then \
	  cd $(HOST_SUBDIR); mv libiberty stage1-libiberty; \
	fi
	@if test -d $(HOST_SUBDIR)/zlib; then \
	  cd $(HOST_SUBDIR); mv zlib stage1-zlib; \
	fi
	@if test -d $(HOST_SUBDIR)/lto-plugin; then \
	  cd $(HOST_SUBDIR); mv lto-plugin stage1-lto-plugin; \
	fi
	@if test -d $(HOST_SUBDIR)/libctf; then \
	  cd $(HOST_SUBDIR); mv libctf stage1-libctf; \
	fi
	@if test -d $(TARGET_SUBDIR); then \
	  mv $(TARGET_SUBDIR) stage1-$(TARGET_SUBDIR); \
	fi
	rm -f stage_current

# Bubble a bug fix through all the stages up to stage 1.  They are
# remade, but not reconfigured.  The next stage (if any) will not be
# reconfigured either.
.PHONY: stage1-bubble
stage1-bubble:: 
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if test -f stage1-lean ; then \
	  echo Skipping rebuild of stage1; \
	else \
	  $(MAKE) stage1-start; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) all-stage1; \
	fi

.PHONY: all-stage1 clean-stage1
do-clean: clean-stage1

# FIXME: Will not need to be conditional when toplevel bootstrap is the
# only possibility, but now it conflicts with no-bootstrap rules


.PHONY: stage2-start stage2-end

stage2-start::
	@: $(MAKE); $(stage); \
	echo stage2 > stage_current; \
	echo stage2 > stage_last; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)
	@cd $(HOST_SUBDIR); [ -d stage2-bfd ] || \
	  mkdir stage2-bfd; \
	mv stage2-bfd bfd; \
	mv stage1-bfd prev-bfd || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-opcodes ] || \
	  mkdir stage2-opcodes; \
	mv stage2-opcodes opcodes; \
	mv stage1-opcodes prev-opcodes || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-binutils ] || \
	  mkdir stage2-binutils; \
	mv stage2-binutils binutils; \
	mv stage1-binutils prev-binutils || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-fixincludes ] || \
	  mkdir stage2-fixincludes; \
	mv stage2-fixincludes fixincludes; \
	mv stage1-fixincludes prev-fixincludes || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-gas ] || \
	  mkdir stage2-gas; \
	mv stage2-gas gas; \
	mv stage1-gas prev-gas || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-gcc ] || \
	  mkdir stage2-gcc; \
	mv stage2-gcc gcc; \
	mv stage1-gcc prev-gcc || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-gmp ] || \
	  mkdir stage2-gmp; \
	mv stage2-gmp gmp; \
	mv stage1-gmp prev-gmp || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-mpfr ] || \
	  mkdir stage2-mpfr; \
	mv stage2-mpfr mpfr; \
	mv stage1-mpfr prev-mpfr || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-mpc ] || \
	  mkdir stage2-mpc; \
	mv stage2-mpc mpc; \
	mv stage1-mpc prev-mpc || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-isl ] || \
	  mkdir stage2-isl; \
	mv stage2-isl isl; \
	mv stage1-isl prev-isl || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-intl ] || \
	  mkdir stage2-intl; \
	mv stage2-intl intl; \
	mv stage1-intl prev-intl || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-ld ] || \
	  mkdir stage2-ld; \
	mv stage2-ld ld; \
	mv stage1-ld prev-ld || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-libbacktrace ] || \
	  mkdir stage2-libbacktrace; \
	mv stage2-libbacktrace libbacktrace; \
	mv stage1-libbacktrace prev-libbacktrace || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-libcpp ] || \
	  mkdir stage2-libcpp; \
	mv stage2-libcpp libcpp; \
	mv stage1-libcpp prev-libcpp || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-libcody ] || \
	  mkdir stage2-libcody; \
	mv stage2-libcody libcody; \
	mv stage1-libcody prev-libcody || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-libdecnumber ] || \
	  mkdir stage2-libdecnumber; \
	mv stage2-libdecnumber libdecnumber; \
	mv stage1-libdecnumber prev-libdecnumber || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-libiberty ] || \
	  mkdir stage2-libiberty; \
	mv stage2-libiberty libiberty; \
	mv stage1-libiberty prev-libiberty || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-zlib ] || \
	  mkdir stage2-zlib; \
	mv stage2-zlib zlib; \
	mv stage1-zlib prev-zlib || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-lto-plugin ] || \
	  mkdir stage2-lto-plugin; \
	mv stage2-lto-plugin lto-plugin; \
	mv stage1-lto-plugin prev-lto-plugin || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stage2-libctf ] || \
	  mkdir stage2-libctf; \
	mv stage2-libctf libctf; \
	mv stage1-libctf prev-libctf || test -f stage1-lean 
	@[ -d stage2-$(TARGET_SUBDIR) ] || \
	  mkdir stage2-$(TARGET_SUBDIR); \
	mv stage2-$(TARGET_SUBDIR) $(TARGET_SUBDIR); \
	mv stage1-$(TARGET_SUBDIR) prev-$(TARGET_SUBDIR) || test -f stage1-lean 

stage2-end:: 
	@if test -d $(HOST_SUBDIR)/bfd; then \
	  cd $(HOST_SUBDIR); mv bfd stage2-bfd; \
	  mv prev-bfd stage1-bfd; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/opcodes; then \
	  cd $(HOST_SUBDIR); mv opcodes stage2-opcodes; \
	  mv prev-opcodes stage1-opcodes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/binutils; then \
	  cd $(HOST_SUBDIR); mv binutils stage2-binutils; \
	  mv prev-binutils stage1-binutils; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/fixincludes; then \
	  cd $(HOST_SUBDIR); mv fixincludes stage2-fixincludes; \
	  mv prev-fixincludes stage1-fixincludes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gas; then \
	  cd $(HOST_SUBDIR); mv gas stage2-gas; \
	  mv prev-gas stage1-gas; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gcc; then \
	  cd $(HOST_SUBDIR); mv gcc stage2-gcc; \
	  mv prev-gcc stage1-gcc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gmp; then \
	  cd $(HOST_SUBDIR); mv gmp stage2-gmp; \
	  mv prev-gmp stage1-gmp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpfr; then \
	  cd $(HOST_SUBDIR); mv mpfr stage2-mpfr; \
	  mv prev-mpfr stage1-mpfr; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpc; then \
	  cd $(HOST_SUBDIR); mv mpc stage2-mpc; \
	  mv prev-mpc stage1-mpc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/isl; then \
	  cd $(HOST_SUBDIR); mv isl stage2-isl; \
	  mv prev-isl stage1-isl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/intl; then \
	  cd $(HOST_SUBDIR); mv intl stage2-intl; \
	  mv prev-intl stage1-intl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/ld; then \
	  cd $(HOST_SUBDIR); mv ld stage2-ld; \
	  mv prev-ld stage1-ld; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libbacktrace; then \
	  cd $(HOST_SUBDIR); mv libbacktrace stage2-libbacktrace; \
	  mv prev-libbacktrace stage1-libbacktrace; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcpp; then \
	  cd $(HOST_SUBDIR); mv libcpp stage2-libcpp; \
	  mv prev-libcpp stage1-libcpp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcody; then \
	  cd $(HOST_SUBDIR); mv libcody stage2-libcody; \
	  mv prev-libcody stage1-libcody; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libdecnumber; then \
	  cd $(HOST_SUBDIR); mv libdecnumber stage2-libdecnumber; \
	  mv prev-libdecnumber stage1-libdecnumber; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libiberty; then \
	  cd $(HOST_SUBDIR); mv libiberty stage2-libiberty; \
	  mv prev-libiberty stage1-libiberty; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/zlib; then \
	  cd $(HOST_SUBDIR); mv zlib stage2-zlib; \
	  mv prev-zlib stage1-zlib; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/lto-plugin; then \
	  cd $(HOST_SUBDIR); mv lto-plugin stage2-lto-plugin; \
	  mv prev-lto-plugin stage1-lto-plugin; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libctf; then \
	  cd $(HOST_SUBDIR); mv libctf stage2-libctf; \
	  mv prev-libctf stage1-libctf; : ; \
	fi
	@if test -d $(TARGET_SUBDIR); then \
	  mv $(TARGET_SUBDIR) stage2-$(TARGET_SUBDIR); \
	  mv prev-$(TARGET_SUBDIR) stage1-$(TARGET_SUBDIR); : ; \
	fi
	rm -f stage_current

# Bubble a bug fix through all the stages up to stage 2.  They are
# remade, but not reconfigured.  The next stage (if any) will not be
# reconfigured either.
.PHONY: stage2-bubble
stage2-bubble:: stage1-bubble
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if test -f stage2-lean || test -f stage1-lean ; then \
	  echo Skipping rebuild of stage2; \
	else \
	  $(MAKE) stage2-start; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) all-stage2; \
	fi

.PHONY: all-stage2 clean-stage2
do-clean: clean-stage2

# FIXME: Will not need to be conditional when toplevel bootstrap is the
# only possibility, but now it conflicts with no-bootstrap rules


.PHONY: stage3-start stage3-end

stage3-start::
	@: $(MAKE); $(stage); \
	echo stage3 > stage_current; \
	echo stage3 > stage_last; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)
	@cd $(HOST_SUBDIR); [ -d stage3-bfd ] || \
	  mkdir stage3-bfd; \
	mv stage3-bfd bfd; \
	mv stage2-bfd prev-bfd || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-opcodes ] || \
	  mkdir stage3-opcodes; \
	mv stage3-opcodes opcodes; \
	mv stage2-opcodes prev-opcodes || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-binutils ] || \
	  mkdir stage3-binutils; \
	mv stage3-binutils binutils; \
	mv stage2-binutils prev-binutils || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-fixincludes ] || \
	  mkdir stage3-fixincludes; \
	mv stage3-fixincludes fixincludes; \
	mv stage2-fixincludes prev-fixincludes || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-gas ] || \
	  mkdir stage3-gas; \
	mv stage3-gas gas; \
	mv stage2-gas prev-gas || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-gcc ] || \
	  mkdir stage3-gcc; \
	mv stage3-gcc gcc; \
	mv stage2-gcc prev-gcc || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-gmp ] || \
	  mkdir stage3-gmp; \
	mv stage3-gmp gmp; \
	mv stage2-gmp prev-gmp || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-mpfr ] || \
	  mkdir stage3-mpfr; \
	mv stage3-mpfr mpfr; \
	mv stage2-mpfr prev-mpfr || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-mpc ] || \
	  mkdir stage3-mpc; \
	mv stage3-mpc mpc; \
	mv stage2-mpc prev-mpc || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-isl ] || \
	  mkdir stage3-isl; \
	mv stage3-isl isl; \
	mv stage2-isl prev-isl || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-intl ] || \
	  mkdir stage3-intl; \
	mv stage3-intl intl; \
	mv stage2-intl prev-intl || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-ld ] || \
	  mkdir stage3-ld; \
	mv stage3-ld ld; \
	mv stage2-ld prev-ld || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-libbacktrace ] || \
	  mkdir stage3-libbacktrace; \
	mv stage3-libbacktrace libbacktrace; \
	mv stage2-libbacktrace prev-libbacktrace || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-libcpp ] || \
	  mkdir stage3-libcpp; \
	mv stage3-libcpp libcpp; \
	mv stage2-libcpp prev-libcpp || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-libcody ] || \
	  mkdir stage3-libcody; \
	mv stage3-libcody libcody; \
	mv stage2-libcody prev-libcody || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-libdecnumber ] || \
	  mkdir stage3-libdecnumber; \
	mv stage3-libdecnumber libdecnumber; \
	mv stage2-libdecnumber prev-libdecnumber || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-libiberty ] || \
	  mkdir stage3-libiberty; \
	mv stage3-libiberty libiberty; \
	mv stage2-libiberty prev-libiberty || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-zlib ] || \
	  mkdir stage3-zlib; \
	mv stage3-zlib zlib; \
	mv stage2-zlib prev-zlib || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-lto-plugin ] || \
	  mkdir stage3-lto-plugin; \
	mv stage3-lto-plugin lto-plugin; \
	mv stage2-lto-plugin prev-lto-plugin || test -f stage2-lean 
	@cd $(HOST_SUBDIR); [ -d stage3-libctf ] || \
	  mkdir stage3-libctf; \
	mv stage3-libctf libctf; \
	mv stage2-libctf prev-libctf || test -f stage2-lean 
	@[ -d stage3-$(TARGET_SUBDIR) ] || \
	  mkdir stage3-$(TARGET_SUBDIR); \
	mv stage3-$(TARGET_SUBDIR) $(TARGET_SUBDIR); \
	mv stage2-$(TARGET_SUBDIR) prev-$(TARGET_SUBDIR) || test -f stage2-lean 

stage3-end:: 
	@if test -d $(HOST_SUBDIR)/bfd; then \
	  cd $(HOST_SUBDIR); mv bfd stage3-bfd; \
	  mv prev-bfd stage2-bfd; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/opcodes; then \
	  cd $(HOST_SUBDIR); mv opcodes stage3-opcodes; \
	  mv prev-opcodes stage2-opcodes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/binutils; then \
	  cd $(HOST_SUBDIR); mv binutils stage3-binutils; \
	  mv prev-binutils stage2-binutils; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/fixincludes; then \
	  cd $(HOST_SUBDIR); mv fixincludes stage3-fixincludes; \
	  mv prev-fixincludes stage2-fixincludes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gas; then \
	  cd $(HOST_SUBDIR); mv gas stage3-gas; \
	  mv prev-gas stage2-gas; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gcc; then \
	  cd $(HOST_SUBDIR); mv gcc stage3-gcc; \
	  mv prev-gcc stage2-gcc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gmp; then \
	  cd $(HOST_SUBDIR); mv gmp stage3-gmp; \
	  mv prev-gmp stage2-gmp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpfr; then \
	  cd $(HOST_SUBDIR); mv mpfr stage3-mpfr; \
	  mv prev-mpfr stage2-mpfr; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpc; then \
	  cd $(HOST_SUBDIR); mv mpc stage3-mpc; \
	  mv prev-mpc stage2-mpc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/isl; then \
	  cd $(HOST_SUBDIR); mv isl stage3-isl; \
	  mv prev-isl stage2-isl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/intl; then \
	  cd $(HOST_SUBDIR); mv intl stage3-intl; \
	  mv prev-intl stage2-intl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/ld; then \
	  cd $(HOST_SUBDIR); mv ld stage3-ld; \
	  mv prev-ld stage2-ld; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libbacktrace; then \
	  cd $(HOST_SUBDIR); mv libbacktrace stage3-libbacktrace; \
	  mv prev-libbacktrace stage2-libbacktrace; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcpp; then \
	  cd $(HOST_SUBDIR); mv libcpp stage3-libcpp; \
	  mv prev-libcpp stage2-libcpp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcody; then \
	  cd $(HOST_SUBDIR); mv libcody stage3-libcody; \
	  mv prev-libcody stage2-libcody; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libdecnumber; then \
	  cd $(HOST_SUBDIR); mv libdecnumber stage3-libdecnumber; \
	  mv prev-libdecnumber stage2-libdecnumber; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libiberty; then \
	  cd $(HOST_SUBDIR); mv libiberty stage3-libiberty; \
	  mv prev-libiberty stage2-libiberty; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/zlib; then \
	  cd $(HOST_SUBDIR); mv zlib stage3-zlib; \
	  mv prev-zlib stage2-zlib; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/lto-plugin; then \
	  cd $(HOST_SUBDIR); mv lto-plugin stage3-lto-plugin; \
	  mv prev-lto-plugin stage2-lto-plugin; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libctf; then \
	  cd $(HOST_SUBDIR); mv libctf stage3-libctf; \
	  mv prev-libctf stage2-libctf; : ; \
	fi
	@if test -d $(TARGET_SUBDIR); then \
	  mv $(TARGET_SUBDIR) stage3-$(TARGET_SUBDIR); \
	  mv prev-$(TARGET_SUBDIR) stage2-$(TARGET_SUBDIR); : ; \
	fi
	rm -f stage_current

# Bubble a bug fix through all the stages up to stage 3.  They are
# remade, but not reconfigured.  The next stage (if any) will not be
# reconfigured either.
.PHONY: stage3-bubble
stage3-bubble:: stage2-bubble
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if test -f stage3-lean || test -f stage2-lean ; then \
	  echo Skipping rebuild of stage3; \
	else \
	  $(MAKE) stage3-start; \
	  if $(LEAN); then \
	    rm -rf stage1-*; \
	    $(STAMP) stage1-lean; \
	  fi; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) all-stage3; \
	fi
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) compare

.PHONY: all-stage3 clean-stage3
do-clean: clean-stage3

# FIXME: Will not need to be conditional when toplevel bootstrap is the
# only possibility, but now it conflicts with no-bootstrap rules


.PHONY: stage4-start stage4-end

stage4-start::
	@: $(MAKE); $(stage); \
	echo stage4 > stage_current; \
	echo stage4 > stage_last; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)
	@cd $(HOST_SUBDIR); [ -d stage4-bfd ] || \
	  mkdir stage4-bfd; \
	mv stage4-bfd bfd; \
	mv stage3-bfd prev-bfd || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-opcodes ] || \
	  mkdir stage4-opcodes; \
	mv stage4-opcodes opcodes; \
	mv stage3-opcodes prev-opcodes || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-binutils ] || \
	  mkdir stage4-binutils; \
	mv stage4-binutils binutils; \
	mv stage3-binutils prev-binutils || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-fixincludes ] || \
	  mkdir stage4-fixincludes; \
	mv stage4-fixincludes fixincludes; \
	mv stage3-fixincludes prev-fixincludes || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-gas ] || \
	  mkdir stage4-gas; \
	mv stage4-gas gas; \
	mv stage3-gas prev-gas || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-gcc ] || \
	  mkdir stage4-gcc; \
	mv stage4-gcc gcc; \
	mv stage3-gcc prev-gcc || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-gmp ] || \
	  mkdir stage4-gmp; \
	mv stage4-gmp gmp; \
	mv stage3-gmp prev-gmp || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-mpfr ] || \
	  mkdir stage4-mpfr; \
	mv stage4-mpfr mpfr; \
	mv stage3-mpfr prev-mpfr || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-mpc ] || \
	  mkdir stage4-mpc; \
	mv stage4-mpc mpc; \
	mv stage3-mpc prev-mpc || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-isl ] || \
	  mkdir stage4-isl; \
	mv stage4-isl isl; \
	mv stage3-isl prev-isl || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-intl ] || \
	  mkdir stage4-intl; \
	mv stage4-intl intl; \
	mv stage3-intl prev-intl || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-ld ] || \
	  mkdir stage4-ld; \
	mv stage4-ld ld; \
	mv stage3-ld prev-ld || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-libbacktrace ] || \
	  mkdir stage4-libbacktrace; \
	mv stage4-libbacktrace libbacktrace; \
	mv stage3-libbacktrace prev-libbacktrace || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-libcpp ] || \
	  mkdir stage4-libcpp; \
	mv stage4-libcpp libcpp; \
	mv stage3-libcpp prev-libcpp || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-libcody ] || \
	  mkdir stage4-libcody; \
	mv stage4-libcody libcody; \
	mv stage3-libcody prev-libcody || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-libdecnumber ] || \
	  mkdir stage4-libdecnumber; \
	mv stage4-libdecnumber libdecnumber; \
	mv stage3-libdecnumber prev-libdecnumber || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-libiberty ] || \
	  mkdir stage4-libiberty; \
	mv stage4-libiberty libiberty; \
	mv stage3-libiberty prev-libiberty || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-zlib ] || \
	  mkdir stage4-zlib; \
	mv stage4-zlib zlib; \
	mv stage3-zlib prev-zlib || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-lto-plugin ] || \
	  mkdir stage4-lto-plugin; \
	mv stage4-lto-plugin lto-plugin; \
	mv stage3-lto-plugin prev-lto-plugin || test -f stage3-lean 
	@cd $(HOST_SUBDIR); [ -d stage4-libctf ] || \
	  mkdir stage4-libctf; \
	mv stage4-libctf libctf; \
	mv stage3-libctf prev-libctf || test -f stage3-lean 
	@[ -d stage4-$(TARGET_SUBDIR) ] || \
	  mkdir stage4-$(TARGET_SUBDIR); \
	mv stage4-$(TARGET_SUBDIR) $(TARGET_SUBDIR); \
	mv stage3-$(TARGET_SUBDIR) prev-$(TARGET_SUBDIR) || test -f stage3-lean 

stage4-end:: 
	@if test -d $(HOST_SUBDIR)/bfd; then \
	  cd $(HOST_SUBDIR); mv bfd stage4-bfd; \
	  mv prev-bfd stage3-bfd; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/opcodes; then \
	  cd $(HOST_SUBDIR); mv opcodes stage4-opcodes; \
	  mv prev-opcodes stage3-opcodes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/binutils; then \
	  cd $(HOST_SUBDIR); mv binutils stage4-binutils; \
	  mv prev-binutils stage3-binutils; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/fixincludes; then \
	  cd $(HOST_SUBDIR); mv fixincludes stage4-fixincludes; \
	  mv prev-fixincludes stage3-fixincludes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gas; then \
	  cd $(HOST_SUBDIR); mv gas stage4-gas; \
	  mv prev-gas stage3-gas; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gcc; then \
	  cd $(HOST_SUBDIR); mv gcc stage4-gcc; \
	  mv prev-gcc stage3-gcc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gmp; then \
	  cd $(HOST_SUBDIR); mv gmp stage4-gmp; \
	  mv prev-gmp stage3-gmp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpfr; then \
	  cd $(HOST_SUBDIR); mv mpfr stage4-mpfr; \
	  mv prev-mpfr stage3-mpfr; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpc; then \
	  cd $(HOST_SUBDIR); mv mpc stage4-mpc; \
	  mv prev-mpc stage3-mpc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/isl; then \
	  cd $(HOST_SUBDIR); mv isl stage4-isl; \
	  mv prev-isl stage3-isl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/intl; then \
	  cd $(HOST_SUBDIR); mv intl stage4-intl; \
	  mv prev-intl stage3-intl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/ld; then \
	  cd $(HOST_SUBDIR); mv ld stage4-ld; \
	  mv prev-ld stage3-ld; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libbacktrace; then \
	  cd $(HOST_SUBDIR); mv libbacktrace stage4-libbacktrace; \
	  mv prev-libbacktrace stage3-libbacktrace; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcpp; then \
	  cd $(HOST_SUBDIR); mv libcpp stage4-libcpp; \
	  mv prev-libcpp stage3-libcpp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcody; then \
	  cd $(HOST_SUBDIR); mv libcody stage4-libcody; \
	  mv prev-libcody stage3-libcody; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libdecnumber; then \
	  cd $(HOST_SUBDIR); mv libdecnumber stage4-libdecnumber; \
	  mv prev-libdecnumber stage3-libdecnumber; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libiberty; then \
	  cd $(HOST_SUBDIR); mv libiberty stage4-libiberty; \
	  mv prev-libiberty stage3-libiberty; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/zlib; then \
	  cd $(HOST_SUBDIR); mv zlib stage4-zlib; \
	  mv prev-zlib stage3-zlib; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/lto-plugin; then \
	  cd $(HOST_SUBDIR); mv lto-plugin stage4-lto-plugin; \
	  mv prev-lto-plugin stage3-lto-plugin; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libctf; then \
	  cd $(HOST_SUBDIR); mv libctf stage4-libctf; \
	  mv prev-libctf stage3-libctf; : ; \
	fi
	@if test -d $(TARGET_SUBDIR); then \
	  mv $(TARGET_SUBDIR) stage4-$(TARGET_SUBDIR); \
	  mv prev-$(TARGET_SUBDIR) stage3-$(TARGET_SUBDIR); : ; \
	fi
	rm -f stage_current

# Bubble a bug fix through all the stages up to stage 4.  They are
# remade, but not reconfigured.  The next stage (if any) will not be
# reconfigured either.
.PHONY: stage4-bubble
stage4-bubble:: stage3-bubble
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if test -f stage4-lean || test -f stage3-lean ; then \
	  echo Skipping rebuild of stage4; \
	else \
	  $(MAKE) stage4-start; \
	  if $(LEAN); then \
	    rm -rf stage2-*; \
	    $(STAMP) stage2-lean; \
	  fi; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) all-stage4; \
	fi
	$(MAKE) $(RECURSE_FLAGS_TO_PASS) compare3

.PHONY: all-stage4 clean-stage4
do-clean: clean-stage4

# FIXME: Will not need to be conditional when toplevel bootstrap is the
# only possibility, but now it conflicts with no-bootstrap rules


.PHONY: stageprofile-start stageprofile-end

stageprofile-start::
	@: $(MAKE); $(stage); \
	echo stageprofile > stage_current; \
	echo stageprofile > stage_last; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)
	@cd $(HOST_SUBDIR); [ -d stageprofile-bfd ] || \
	  mkdir stageprofile-bfd; \
	mv stageprofile-bfd bfd; \
	mv stage1-bfd prev-bfd || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-opcodes ] || \
	  mkdir stageprofile-opcodes; \
	mv stageprofile-opcodes opcodes; \
	mv stage1-opcodes prev-opcodes || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-binutils ] || \
	  mkdir stageprofile-binutils; \
	mv stageprofile-binutils binutils; \
	mv stage1-binutils prev-binutils || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-fixincludes ] || \
	  mkdir stageprofile-fixincludes; \
	mv stageprofile-fixincludes fixincludes; \
	mv stage1-fixincludes prev-fixincludes || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-gas ] || \
	  mkdir stageprofile-gas; \
	mv stageprofile-gas gas; \
	mv stage1-gas prev-gas || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-gcc ] || \
	  mkdir stageprofile-gcc; \
	mv stageprofile-gcc gcc; \
	mv stage1-gcc prev-gcc || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-gmp ] || \
	  mkdir stageprofile-gmp; \
	mv stageprofile-gmp gmp; \
	mv stage1-gmp prev-gmp || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-mpfr ] || \
	  mkdir stageprofile-mpfr; \
	mv stageprofile-mpfr mpfr; \
	mv stage1-mpfr prev-mpfr || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-mpc ] || \
	  mkdir stageprofile-mpc; \
	mv stageprofile-mpc mpc; \
	mv stage1-mpc prev-mpc || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-isl ] || \
	  mkdir stageprofile-isl; \
	mv stageprofile-isl isl; \
	mv stage1-isl prev-isl || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-intl ] || \
	  mkdir stageprofile-intl; \
	mv stageprofile-intl intl; \
	mv stage1-intl prev-intl || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-ld ] || \
	  mkdir stageprofile-ld; \
	mv stageprofile-ld ld; \
	mv stage1-ld prev-ld || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-libbacktrace ] || \
	  mkdir stageprofile-libbacktrace; \
	mv stageprofile-libbacktrace libbacktrace; \
	mv stage1-libbacktrace prev-libbacktrace || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-libcpp ] || \
	  mkdir stageprofile-libcpp; \
	mv stageprofile-libcpp libcpp; \
	mv stage1-libcpp prev-libcpp || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-libcody ] || \
	  mkdir stageprofile-libcody; \
	mv stageprofile-libcody libcody; \
	mv stage1-libcody prev-libcody || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-libdecnumber ] || \
	  mkdir stageprofile-libdecnumber; \
	mv stageprofile-libdecnumber libdecnumber; \
	mv stage1-libdecnumber prev-libdecnumber || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-libiberty ] || \
	  mkdir stageprofile-libiberty; \
	mv stageprofile-libiberty libiberty; \
	mv stage1-libiberty prev-libiberty || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-zlib ] || \
	  mkdir stageprofile-zlib; \
	mv stageprofile-zlib zlib; \
	mv stage1-zlib prev-zlib || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-lto-plugin ] || \
	  mkdir stageprofile-lto-plugin; \
	mv stageprofile-lto-plugin lto-plugin; \
	mv stage1-lto-plugin prev-lto-plugin || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageprofile-libctf ] || \
	  mkdir stageprofile-libctf; \
	mv stageprofile-libctf libctf; \
	mv stage1-libctf prev-libctf || test -f stage1-lean 
	@[ -d stageprofile-$(TARGET_SUBDIR) ] || \
	  mkdir stageprofile-$(TARGET_SUBDIR); \
	mv stageprofile-$(TARGET_SUBDIR) $(TARGET_SUBDIR); \
	mv stage1-$(TARGET_SUBDIR) prev-$(TARGET_SUBDIR) || test -f stage1-lean 

stageprofile-end:: 
	@if test -d $(HOST_SUBDIR)/bfd; then \
	  cd $(HOST_SUBDIR); mv bfd stageprofile-bfd; \
	  mv prev-bfd stage1-bfd; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/opcodes; then \
	  cd $(HOST_SUBDIR); mv opcodes stageprofile-opcodes; \
	  mv prev-opcodes stage1-opcodes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/binutils; then \
	  cd $(HOST_SUBDIR); mv binutils stageprofile-binutils; \
	  mv prev-binutils stage1-binutils; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/fixincludes; then \
	  cd $(HOST_SUBDIR); mv fixincludes stageprofile-fixincludes; \
	  mv prev-fixincludes stage1-fixincludes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gas; then \
	  cd $(HOST_SUBDIR); mv gas stageprofile-gas; \
	  mv prev-gas stage1-gas; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gcc; then \
	  cd $(HOST_SUBDIR); mv gcc stageprofile-gcc; \
	  mv prev-gcc stage1-gcc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gmp; then \
	  cd $(HOST_SUBDIR); mv gmp stageprofile-gmp; \
	  mv prev-gmp stage1-gmp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpfr; then \
	  cd $(HOST_SUBDIR); mv mpfr stageprofile-mpfr; \
	  mv prev-mpfr stage1-mpfr; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpc; then \
	  cd $(HOST_SUBDIR); mv mpc stageprofile-mpc; \
	  mv prev-mpc stage1-mpc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/isl; then \
	  cd $(HOST_SUBDIR); mv isl stageprofile-isl; \
	  mv prev-isl stage1-isl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/intl; then \
	  cd $(HOST_SUBDIR); mv intl stageprofile-intl; \
	  mv prev-intl stage1-intl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/ld; then \
	  cd $(HOST_SUBDIR); mv ld stageprofile-ld; \
	  mv prev-ld stage1-ld; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libbacktrace; then \
	  cd $(HOST_SUBDIR); mv libbacktrace stageprofile-libbacktrace; \
	  mv prev-libbacktrace stage1-libbacktrace; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcpp; then \
	  cd $(HOST_SUBDIR); mv libcpp stageprofile-libcpp; \
	  mv prev-libcpp stage1-libcpp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcody; then \
	  cd $(HOST_SUBDIR); mv libcody stageprofile-libcody; \
	  mv prev-libcody stage1-libcody; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libdecnumber; then \
	  cd $(HOST_SUBDIR); mv libdecnumber stageprofile-libdecnumber; \
	  mv prev-libdecnumber stage1-libdecnumber; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libiberty; then \
	  cd $(HOST_SUBDIR); mv libiberty stageprofile-libiberty; \
	  mv prev-libiberty stage1-libiberty; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/zlib; then \
	  cd $(HOST_SUBDIR); mv zlib stageprofile-zlib; \
	  mv prev-zlib stage1-zlib; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/lto-plugin; then \
	  cd $(HOST_SUBDIR); mv lto-plugin stageprofile-lto-plugin; \
	  mv prev-lto-plugin stage1-lto-plugin; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libctf; then \
	  cd $(HOST_SUBDIR); mv libctf stageprofile-libctf; \
	  mv prev-libctf stage1-libctf; : ; \
	fi
	@if test -d $(TARGET_SUBDIR); then \
	  mv $(TARGET_SUBDIR) stageprofile-$(TARGET_SUBDIR); \
	  mv prev-$(TARGET_SUBDIR) stage1-$(TARGET_SUBDIR); : ; \
	fi
	rm -f stage_current

# Bubble a bug fix through all the stages up to stage profile.  They are
# remade, but not reconfigured.  The next stage (if any) will not be
# reconfigured either.
.PHONY: stageprofile-bubble
stageprofile-bubble:: stage1-bubble
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if test -f stageprofile-lean || test -f stage1-lean ; then \
	  echo Skipping rebuild of stageprofile; \
	else \
	  $(MAKE) stageprofile-start; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) all-stageprofile; \
	fi

.PHONY: all-stageprofile clean-stageprofile
do-clean: clean-stageprofile

# FIXME: Will not need to be conditional when toplevel bootstrap is the
# only possibility, but now it conflicts with no-bootstrap rules


.PHONY: stagetrain-start stagetrain-end

stagetrain-start::
	@: $(MAKE); $(stage); \
	echo stagetrain > stage_current; \
	echo stagetrain > stage_last; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)
	@cd $(HOST_SUBDIR); [ -d stagetrain-bfd ] || \
	  mkdir stagetrain-bfd; \
	mv stagetrain-bfd bfd; \
	mv stageprofile-bfd prev-bfd || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-opcodes ] || \
	  mkdir stagetrain-opcodes; \
	mv stagetrain-opcodes opcodes; \
	mv stageprofile-opcodes prev-opcodes || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-binutils ] || \
	  mkdir stagetrain-binutils; \
	mv stagetrain-binutils binutils; \
	mv stageprofile-binutils prev-binutils || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-fixincludes ] || \
	  mkdir stagetrain-fixincludes; \
	mv stagetrain-fixincludes fixincludes; \
	mv stageprofile-fixincludes prev-fixincludes || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-gas ] || \
	  mkdir stagetrain-gas; \
	mv stagetrain-gas gas; \
	mv stageprofile-gas prev-gas || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-gcc ] || \
	  mkdir stagetrain-gcc; \
	mv stagetrain-gcc gcc; \
	mv stageprofile-gcc prev-gcc || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-gmp ] || \
	  mkdir stagetrain-gmp; \
	mv stagetrain-gmp gmp; \
	mv stageprofile-gmp prev-gmp || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-mpfr ] || \
	  mkdir stagetrain-mpfr; \
	mv stagetrain-mpfr mpfr; \
	mv stageprofile-mpfr prev-mpfr || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-mpc ] || \
	  mkdir stagetrain-mpc; \
	mv stagetrain-mpc mpc; \
	mv stageprofile-mpc prev-mpc || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-isl ] || \
	  mkdir stagetrain-isl; \
	mv stagetrain-isl isl; \
	mv stageprofile-isl prev-isl || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-intl ] || \
	  mkdir stagetrain-intl; \
	mv stagetrain-intl intl; \
	mv stageprofile-intl prev-intl || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-ld ] || \
	  mkdir stagetrain-ld; \
	mv stagetrain-ld ld; \
	mv stageprofile-ld prev-ld || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-libbacktrace ] || \
	  mkdir stagetrain-libbacktrace; \
	mv stagetrain-libbacktrace libbacktrace; \
	mv stageprofile-libbacktrace prev-libbacktrace || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-libcpp ] || \
	  mkdir stagetrain-libcpp; \
	mv stagetrain-libcpp libcpp; \
	mv stageprofile-libcpp prev-libcpp || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-libcody ] || \
	  mkdir stagetrain-libcody; \
	mv stagetrain-libcody libcody; \
	mv stageprofile-libcody prev-libcody || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-libdecnumber ] || \
	  mkdir stagetrain-libdecnumber; \
	mv stagetrain-libdecnumber libdecnumber; \
	mv stageprofile-libdecnumber prev-libdecnumber || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-libiberty ] || \
	  mkdir stagetrain-libiberty; \
	mv stagetrain-libiberty libiberty; \
	mv stageprofile-libiberty prev-libiberty || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-zlib ] || \
	  mkdir stagetrain-zlib; \
	mv stagetrain-zlib zlib; \
	mv stageprofile-zlib prev-zlib || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-lto-plugin ] || \
	  mkdir stagetrain-lto-plugin; \
	mv stagetrain-lto-plugin lto-plugin; \
	mv stageprofile-lto-plugin prev-lto-plugin || test -f stageprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stagetrain-libctf ] || \
	  mkdir stagetrain-libctf; \
	mv stagetrain-libctf libctf; \
	mv stageprofile-libctf prev-libctf || test -f stageprofile-lean 
	@[ -d stagetrain-$(TARGET_SUBDIR) ] || \
	  mkdir stagetrain-$(TARGET_SUBDIR); \
	mv stagetrain-$(TARGET_SUBDIR) $(TARGET_SUBDIR); \
	mv stageprofile-$(TARGET_SUBDIR) prev-$(TARGET_SUBDIR) || test -f stageprofile-lean 

stagetrain-end:: 
	@if test -d $(HOST_SUBDIR)/bfd; then \
	  cd $(HOST_SUBDIR); mv bfd stagetrain-bfd; \
	  mv prev-bfd stageprofile-bfd; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/opcodes; then \
	  cd $(HOST_SUBDIR); mv opcodes stagetrain-opcodes; \
	  mv prev-opcodes stageprofile-opcodes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/binutils; then \
	  cd $(HOST_SUBDIR); mv binutils stagetrain-binutils; \
	  mv prev-binutils stageprofile-binutils; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/fixincludes; then \
	  cd $(HOST_SUBDIR); mv fixincludes stagetrain-fixincludes; \
	  mv prev-fixincludes stageprofile-fixincludes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gas; then \
	  cd $(HOST_SUBDIR); mv gas stagetrain-gas; \
	  mv prev-gas stageprofile-gas; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gcc; then \
	  cd $(HOST_SUBDIR); mv gcc stagetrain-gcc; \
	  mv prev-gcc stageprofile-gcc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gmp; then \
	  cd $(HOST_SUBDIR); mv gmp stagetrain-gmp; \
	  mv prev-gmp stageprofile-gmp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpfr; then \
	  cd $(HOST_SUBDIR); mv mpfr stagetrain-mpfr; \
	  mv prev-mpfr stageprofile-mpfr; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpc; then \
	  cd $(HOST_SUBDIR); mv mpc stagetrain-mpc; \
	  mv prev-mpc stageprofile-mpc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/isl; then \
	  cd $(HOST_SUBDIR); mv isl stagetrain-isl; \
	  mv prev-isl stageprofile-isl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/intl; then \
	  cd $(HOST_SUBDIR); mv intl stagetrain-intl; \
	  mv prev-intl stageprofile-intl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/ld; then \
	  cd $(HOST_SUBDIR); mv ld stagetrain-ld; \
	  mv prev-ld stageprofile-ld; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libbacktrace; then \
	  cd $(HOST_SUBDIR); mv libbacktrace stagetrain-libbacktrace; \
	  mv prev-libbacktrace stageprofile-libbacktrace; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcpp; then \
	  cd $(HOST_SUBDIR); mv libcpp stagetrain-libcpp; \
	  mv prev-libcpp stageprofile-libcpp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcody; then \
	  cd $(HOST_SUBDIR); mv libcody stagetrain-libcody; \
	  mv prev-libcody stageprofile-libcody; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libdecnumber; then \
	  cd $(HOST_SUBDIR); mv libdecnumber stagetrain-libdecnumber; \
	  mv prev-libdecnumber stageprofile-libdecnumber; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libiberty; then \
	  cd $(HOST_SUBDIR); mv libiberty stagetrain-libiberty; \
	  mv prev-libiberty stageprofile-libiberty; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/zlib; then \
	  cd $(HOST_SUBDIR); mv zlib stagetrain-zlib; \
	  mv prev-zlib stageprofile-zlib; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/lto-plugin; then \
	  cd $(HOST_SUBDIR); mv lto-plugin stagetrain-lto-plugin; \
	  mv prev-lto-plugin stageprofile-lto-plugin; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libctf; then \
	  cd $(HOST_SUBDIR); mv libctf stagetrain-libctf; \
	  mv prev-libctf stageprofile-libctf; : ; \
	fi
	@if test -d $(TARGET_SUBDIR); then \
	  mv $(TARGET_SUBDIR) stagetrain-$(TARGET_SUBDIR); \
	  mv prev-$(TARGET_SUBDIR) stageprofile-$(TARGET_SUBDIR); : ; \
	fi
	rm -f stage_current

# Bubble a bug fix through all the stages up to stage train.  They are
# remade, but not reconfigured.  The next stage (if any) will not be
# reconfigured either.
.PHONY: stagetrain-bubble
stagetrain-bubble:: stageprofile-bubble
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if test -f stagetrain-lean || test -f stageprofile-lean ; then \
	  echo Skipping rebuild of stagetrain; \
	else \
	  $(MAKE) stagetrain-start; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) all-stagetrain; \
	fi

.PHONY: all-stagetrain clean-stagetrain
do-clean: clean-stagetrain

# FIXME: Will not need to be conditional when toplevel bootstrap is the
# only possibility, but now it conflicts with no-bootstrap rules


.PHONY: stagefeedback-start stagefeedback-end

stagefeedback-start::
	@: $(MAKE); $(stage); \
	echo stagefeedback > stage_current; \
	echo stagefeedback > stage_last; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)
	@cd $(HOST_SUBDIR); [ -d stagefeedback-bfd ] || \
	  mkdir stagefeedback-bfd; \
	mv stagefeedback-bfd bfd; \
	mv stagetrain-bfd prev-bfd || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-opcodes ] || \
	  mkdir stagefeedback-opcodes; \
	mv stagefeedback-opcodes opcodes; \
	mv stagetrain-opcodes prev-opcodes || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-binutils ] || \
	  mkdir stagefeedback-binutils; \
	mv stagefeedback-binutils binutils; \
	mv stagetrain-binutils prev-binutils || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-fixincludes ] || \
	  mkdir stagefeedback-fixincludes; \
	mv stagefeedback-fixincludes fixincludes; \
	mv stagetrain-fixincludes prev-fixincludes || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-gas ] || \
	  mkdir stagefeedback-gas; \
	mv stagefeedback-gas gas; \
	mv stagetrain-gas prev-gas || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-gcc ] || \
	  mkdir stagefeedback-gcc; \
	mv stagefeedback-gcc gcc; \
	mv stagetrain-gcc prev-gcc || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-gmp ] || \
	  mkdir stagefeedback-gmp; \
	mv stagefeedback-gmp gmp; \
	mv stagetrain-gmp prev-gmp || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-mpfr ] || \
	  mkdir stagefeedback-mpfr; \
	mv stagefeedback-mpfr mpfr; \
	mv stagetrain-mpfr prev-mpfr || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-mpc ] || \
	  mkdir stagefeedback-mpc; \
	mv stagefeedback-mpc mpc; \
	mv stagetrain-mpc prev-mpc || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-isl ] || \
	  mkdir stagefeedback-isl; \
	mv stagefeedback-isl isl; \
	mv stagetrain-isl prev-isl || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-intl ] || \
	  mkdir stagefeedback-intl; \
	mv stagefeedback-intl intl; \
	mv stagetrain-intl prev-intl || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-ld ] || \
	  mkdir stagefeedback-ld; \
	mv stagefeedback-ld ld; \
	mv stagetrain-ld prev-ld || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-libbacktrace ] || \
	  mkdir stagefeedback-libbacktrace; \
	mv stagefeedback-libbacktrace libbacktrace; \
	mv stagetrain-libbacktrace prev-libbacktrace || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-libcpp ] || \
	  mkdir stagefeedback-libcpp; \
	mv stagefeedback-libcpp libcpp; \
	mv stagetrain-libcpp prev-libcpp || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-libcody ] || \
	  mkdir stagefeedback-libcody; \
	mv stagefeedback-libcody libcody; \
	mv stagetrain-libcody prev-libcody || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-libdecnumber ] || \
	  mkdir stagefeedback-libdecnumber; \
	mv stagefeedback-libdecnumber libdecnumber; \
	mv stagetrain-libdecnumber prev-libdecnumber || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-libiberty ] || \
	  mkdir stagefeedback-libiberty; \
	mv stagefeedback-libiberty libiberty; \
	mv stagetrain-libiberty prev-libiberty || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-zlib ] || \
	  mkdir stagefeedback-zlib; \
	mv stagefeedback-zlib zlib; \
	mv stagetrain-zlib prev-zlib || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-lto-plugin ] || \
	  mkdir stagefeedback-lto-plugin; \
	mv stagefeedback-lto-plugin lto-plugin; \
	mv stagetrain-lto-plugin prev-lto-plugin || test -f stagetrain-lean 
	@cd $(HOST_SUBDIR); [ -d stagefeedback-libctf ] || \
	  mkdir stagefeedback-libctf; \
	mv stagefeedback-libctf libctf; \
	mv stagetrain-libctf prev-libctf || test -f stagetrain-lean 
	@[ -d stagefeedback-$(TARGET_SUBDIR) ] || \
	  mkdir stagefeedback-$(TARGET_SUBDIR); \
	mv stagefeedback-$(TARGET_SUBDIR) $(TARGET_SUBDIR); \
	mv stagetrain-$(TARGET_SUBDIR) prev-$(TARGET_SUBDIR) || test -f stagetrain-lean 

stagefeedback-end:: 
	@if test -d $(HOST_SUBDIR)/bfd; then \
	  cd $(HOST_SUBDIR); mv bfd stagefeedback-bfd; \
	  mv prev-bfd stagetrain-bfd; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/opcodes; then \
	  cd $(HOST_SUBDIR); mv opcodes stagefeedback-opcodes; \
	  mv prev-opcodes stagetrain-opcodes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/binutils; then \
	  cd $(HOST_SUBDIR); mv binutils stagefeedback-binutils; \
	  mv prev-binutils stagetrain-binutils; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/fixincludes; then \
	  cd $(HOST_SUBDIR); mv fixincludes stagefeedback-fixincludes; \
	  mv prev-fixincludes stagetrain-fixincludes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gas; then \
	  cd $(HOST_SUBDIR); mv gas stagefeedback-gas; \
	  mv prev-gas stagetrain-gas; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gcc; then \
	  cd $(HOST_SUBDIR); mv gcc stagefeedback-gcc; \
	  mv prev-gcc stagetrain-gcc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gmp; then \
	  cd $(HOST_SUBDIR); mv gmp stagefeedback-gmp; \
	  mv prev-gmp stagetrain-gmp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpfr; then \
	  cd $(HOST_SUBDIR); mv mpfr stagefeedback-mpfr; \
	  mv prev-mpfr stagetrain-mpfr; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpc; then \
	  cd $(HOST_SUBDIR); mv mpc stagefeedback-mpc; \
	  mv prev-mpc stagetrain-mpc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/isl; then \
	  cd $(HOST_SUBDIR); mv isl stagefeedback-isl; \
	  mv prev-isl stagetrain-isl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/intl; then \
	  cd $(HOST_SUBDIR); mv intl stagefeedback-intl; \
	  mv prev-intl stagetrain-intl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/ld; then \
	  cd $(HOST_SUBDIR); mv ld stagefeedback-ld; \
	  mv prev-ld stagetrain-ld; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libbacktrace; then \
	  cd $(HOST_SUBDIR); mv libbacktrace stagefeedback-libbacktrace; \
	  mv prev-libbacktrace stagetrain-libbacktrace; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcpp; then \
	  cd $(HOST_SUBDIR); mv libcpp stagefeedback-libcpp; \
	  mv prev-libcpp stagetrain-libcpp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcody; then \
	  cd $(HOST_SUBDIR); mv libcody stagefeedback-libcody; \
	  mv prev-libcody stagetrain-libcody; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libdecnumber; then \
	  cd $(HOST_SUBDIR); mv libdecnumber stagefeedback-libdecnumber; \
	  mv prev-libdecnumber stagetrain-libdecnumber; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libiberty; then \
	  cd $(HOST_SUBDIR); mv libiberty stagefeedback-libiberty; \
	  mv prev-libiberty stagetrain-libiberty; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/zlib; then \
	  cd $(HOST_SUBDIR); mv zlib stagefeedback-zlib; \
	  mv prev-zlib stagetrain-zlib; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/lto-plugin; then \
	  cd $(HOST_SUBDIR); mv lto-plugin stagefeedback-lto-plugin; \
	  mv prev-lto-plugin stagetrain-lto-plugin; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libctf; then \
	  cd $(HOST_SUBDIR); mv libctf stagefeedback-libctf; \
	  mv prev-libctf stagetrain-libctf; : ; \
	fi
	@if test -d $(TARGET_SUBDIR); then \
	  mv $(TARGET_SUBDIR) stagefeedback-$(TARGET_SUBDIR); \
	  mv prev-$(TARGET_SUBDIR) stagetrain-$(TARGET_SUBDIR); : ; \
	fi
	rm -f stage_current

# Bubble a bug fix through all the stages up to stage feedback.  They are
# remade, but not reconfigured.  The next stage (if any) will not be
# reconfigured either.
.PHONY: stagefeedback-bubble
stagefeedback-bubble:: stagetrain-bubble
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if test -f stagefeedback-lean || test -f stagetrain-lean ; then \
	  echo Skipping rebuild of stagefeedback; \
	else \
	  $(MAKE) stagefeedback-start; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) all-stagefeedback; \
	fi

.PHONY: all-stagefeedback clean-stagefeedback
do-clean: clean-stagefeedback

# FIXME: Will not need to be conditional when toplevel bootstrap is the
# only possibility, but now it conflicts with no-bootstrap rules


.PHONY: stageautoprofile-start stageautoprofile-end

stageautoprofile-start::
	@: $(MAKE); $(stage); \
	echo stageautoprofile > stage_current; \
	echo stageautoprofile > stage_last; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-bfd ] || \
	  mkdir stageautoprofile-bfd; \
	mv stageautoprofile-bfd bfd; \
	mv stage1-bfd prev-bfd || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-opcodes ] || \
	  mkdir stageautoprofile-opcodes; \
	mv stageautoprofile-opcodes opcodes; \
	mv stage1-opcodes prev-opcodes || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-binutils ] || \
	  mkdir stageautoprofile-binutils; \
	mv stageautoprofile-binutils binutils; \
	mv stage1-binutils prev-binutils || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-fixincludes ] || \
	  mkdir stageautoprofile-fixincludes; \
	mv stageautoprofile-fixincludes fixincludes; \
	mv stage1-fixincludes prev-fixincludes || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-gas ] || \
	  mkdir stageautoprofile-gas; \
	mv stageautoprofile-gas gas; \
	mv stage1-gas prev-gas || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-gcc ] || \
	  mkdir stageautoprofile-gcc; \
	mv stageautoprofile-gcc gcc; \
	mv stage1-gcc prev-gcc || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-gmp ] || \
	  mkdir stageautoprofile-gmp; \
	mv stageautoprofile-gmp gmp; \
	mv stage1-gmp prev-gmp || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-mpfr ] || \
	  mkdir stageautoprofile-mpfr; \
	mv stageautoprofile-mpfr mpfr; \
	mv stage1-mpfr prev-mpfr || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-mpc ] || \
	  mkdir stageautoprofile-mpc; \
	mv stageautoprofile-mpc mpc; \
	mv stage1-mpc prev-mpc || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-isl ] || \
	  mkdir stageautoprofile-isl; \
	mv stageautoprofile-isl isl; \
	mv stage1-isl prev-isl || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-intl ] || \
	  mkdir stageautoprofile-intl; \
	mv stageautoprofile-intl intl; \
	mv stage1-intl prev-intl || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-ld ] || \
	  mkdir stageautoprofile-ld; \
	mv stageautoprofile-ld ld; \
	mv stage1-ld prev-ld || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-libbacktrace ] || \
	  mkdir stageautoprofile-libbacktrace; \
	mv stageautoprofile-libbacktrace libbacktrace; \
	mv stage1-libbacktrace prev-libbacktrace || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-libcpp ] || \
	  mkdir stageautoprofile-libcpp; \
	mv stageautoprofile-libcpp libcpp; \
	mv stage1-libcpp prev-libcpp || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-libcody ] || \
	  mkdir stageautoprofile-libcody; \
	mv stageautoprofile-libcody libcody; \
	mv stage1-libcody prev-libcody || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-libdecnumber ] || \
	  mkdir stageautoprofile-libdecnumber; \
	mv stageautoprofile-libdecnumber libdecnumber; \
	mv stage1-libdecnumber prev-libdecnumber || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-libiberty ] || \
	  mkdir stageautoprofile-libiberty; \
	mv stageautoprofile-libiberty libiberty; \
	mv stage1-libiberty prev-libiberty || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-zlib ] || \
	  mkdir stageautoprofile-zlib; \
	mv stageautoprofile-zlib zlib; \
	mv stage1-zlib prev-zlib || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-lto-plugin ] || \
	  mkdir stageautoprofile-lto-plugin; \
	mv stageautoprofile-lto-plugin lto-plugin; \
	mv stage1-lto-plugin prev-lto-plugin || test -f stage1-lean 
	@cd $(HOST_SUBDIR); [ -d stageautoprofile-libctf ] || \
	  mkdir stageautoprofile-libctf; \
	mv stageautoprofile-libctf libctf; \
	mv stage1-libctf prev-libctf || test -f stage1-lean 
	@[ -d stageautoprofile-$(TARGET_SUBDIR) ] || \
	  mkdir stageautoprofile-$(TARGET_SUBDIR); \
	mv stageautoprofile-$(TARGET_SUBDIR) $(TARGET_SUBDIR); \
	mv stage1-$(TARGET_SUBDIR) prev-$(TARGET_SUBDIR) || test -f stage1-lean 

stageautoprofile-end:: 
	@if test -d $(HOST_SUBDIR)/bfd; then \
	  cd $(HOST_SUBDIR); mv bfd stageautoprofile-bfd; \
	  mv prev-bfd stage1-bfd; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/opcodes; then \
	  cd $(HOST_SUBDIR); mv opcodes stageautoprofile-opcodes; \
	  mv prev-opcodes stage1-opcodes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/binutils; then \
	  cd $(HOST_SUBDIR); mv binutils stageautoprofile-binutils; \
	  mv prev-binutils stage1-binutils; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/fixincludes; then \
	  cd $(HOST_SUBDIR); mv fixincludes stageautoprofile-fixincludes; \
	  mv prev-fixincludes stage1-fixincludes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gas; then \
	  cd $(HOST_SUBDIR); mv gas stageautoprofile-gas; \
	  mv prev-gas stage1-gas; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gcc; then \
	  cd $(HOST_SUBDIR); mv gcc stageautoprofile-gcc; \
	  mv prev-gcc stage1-gcc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gmp; then \
	  cd $(HOST_SUBDIR); mv gmp stageautoprofile-gmp; \
	  mv prev-gmp stage1-gmp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpfr; then \
	  cd $(HOST_SUBDIR); mv mpfr stageautoprofile-mpfr; \
	  mv prev-mpfr stage1-mpfr; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpc; then \
	  cd $(HOST_SUBDIR); mv mpc stageautoprofile-mpc; \
	  mv prev-mpc stage1-mpc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/isl; then \
	  cd $(HOST_SUBDIR); mv isl stageautoprofile-isl; \
	  mv prev-isl stage1-isl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/intl; then \
	  cd $(HOST_SUBDIR); mv intl stageautoprofile-intl; \
	  mv prev-intl stage1-intl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/ld; then \
	  cd $(HOST_SUBDIR); mv ld stageautoprofile-ld; \
	  mv prev-ld stage1-ld; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libbacktrace; then \
	  cd $(HOST_SUBDIR); mv libbacktrace stageautoprofile-libbacktrace; \
	  mv prev-libbacktrace stage1-libbacktrace; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcpp; then \
	  cd $(HOST_SUBDIR); mv libcpp stageautoprofile-libcpp; \
	  mv prev-libcpp stage1-libcpp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcody; then \
	  cd $(HOST_SUBDIR); mv libcody stageautoprofile-libcody; \
	  mv prev-libcody stage1-libcody; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libdecnumber; then \
	  cd $(HOST_SUBDIR); mv libdecnumber stageautoprofile-libdecnumber; \
	  mv prev-libdecnumber stage1-libdecnumber; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libiberty; then \
	  cd $(HOST_SUBDIR); mv libiberty stageautoprofile-libiberty; \
	  mv prev-libiberty stage1-libiberty; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/zlib; then \
	  cd $(HOST_SUBDIR); mv zlib stageautoprofile-zlib; \
	  mv prev-zlib stage1-zlib; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/lto-plugin; then \
	  cd $(HOST_SUBDIR); mv lto-plugin stageautoprofile-lto-plugin; \
	  mv prev-lto-plugin stage1-lto-plugin; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libctf; then \
	  cd $(HOST_SUBDIR); mv libctf stageautoprofile-libctf; \
	  mv prev-libctf stage1-libctf; : ; \
	fi
	@if test -d $(TARGET_SUBDIR); then \
	  mv $(TARGET_SUBDIR) stageautoprofile-$(TARGET_SUBDIR); \
	  mv prev-$(TARGET_SUBDIR) stage1-$(TARGET_SUBDIR); : ; \
	fi
	rm -f stage_current

# Bubble a bug fix through all the stages up to stage autoprofile.  They are
# remade, but not reconfigured.  The next stage (if any) will not be
# reconfigured either.
.PHONY: stageautoprofile-bubble
stageautoprofile-bubble:: stage1-bubble
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if test -f stageautoprofile-lean || test -f stage1-lean ; then \
	  echo Skipping rebuild of stageautoprofile; \
	else \
	  $(MAKE) stageautoprofile-start; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) all-stageautoprofile; \
	fi

.PHONY: all-stageautoprofile clean-stageautoprofile
do-clean: clean-stageautoprofile

# FIXME: Will not need to be conditional when toplevel bootstrap is the
# only possibility, but now it conflicts with no-bootstrap rules


.PHONY: stageautofeedback-start stageautofeedback-end

stageautofeedback-start::
	@: $(MAKE); $(stage); \
	echo stageautofeedback > stage_current; \
	echo stageautofeedback > stage_last; \
	$(SHELL) $(srcdir)/mkinstalldirs $(HOST_SUBDIR)
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-bfd ] || \
	  mkdir stageautofeedback-bfd; \
	mv stageautofeedback-bfd bfd; \
	mv stageautoprofile-bfd prev-bfd || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-opcodes ] || \
	  mkdir stageautofeedback-opcodes; \
	mv stageautofeedback-opcodes opcodes; \
	mv stageautoprofile-opcodes prev-opcodes || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-binutils ] || \
	  mkdir stageautofeedback-binutils; \
	mv stageautofeedback-binutils binutils; \
	mv stageautoprofile-binutils prev-binutils || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-fixincludes ] || \
	  mkdir stageautofeedback-fixincludes; \
	mv stageautofeedback-fixincludes fixincludes; \
	mv stageautoprofile-fixincludes prev-fixincludes || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-gas ] || \
	  mkdir stageautofeedback-gas; \
	mv stageautofeedback-gas gas; \
	mv stageautoprofile-gas prev-gas || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-gcc ] || \
	  mkdir stageautofeedback-gcc; \
	mv stageautofeedback-gcc gcc; \
	mv stageautoprofile-gcc prev-gcc || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-gmp ] || \
	  mkdir stageautofeedback-gmp; \
	mv stageautofeedback-gmp gmp; \
	mv stageautoprofile-gmp prev-gmp || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-mpfr ] || \
	  mkdir stageautofeedback-mpfr; \
	mv stageautofeedback-mpfr mpfr; \
	mv stageautoprofile-mpfr prev-mpfr || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-mpc ] || \
	  mkdir stageautofeedback-mpc; \
	mv stageautofeedback-mpc mpc; \
	mv stageautoprofile-mpc prev-mpc || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-isl ] || \
	  mkdir stageautofeedback-isl; \
	mv stageautofeedback-isl isl; \
	mv stageautoprofile-isl prev-isl || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-intl ] || \
	  mkdir stageautofeedback-intl; \
	mv stageautofeedback-intl intl; \
	mv stageautoprofile-intl prev-intl || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-ld ] || \
	  mkdir stageautofeedback-ld; \
	mv stageautofeedback-ld ld; \
	mv stageautoprofile-ld prev-ld || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-libbacktrace ] || \
	  mkdir stageautofeedback-libbacktrace; \
	mv stageautofeedback-libbacktrace libbacktrace; \
	mv stageautoprofile-libbacktrace prev-libbacktrace || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-libcpp ] || \
	  mkdir stageautofeedback-libcpp; \
	mv stageautofeedback-libcpp libcpp; \
	mv stageautoprofile-libcpp prev-libcpp || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-libcody ] || \
	  mkdir stageautofeedback-libcody; \
	mv stageautofeedback-libcody libcody; \
	mv stageautoprofile-libcody prev-libcody || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-libdecnumber ] || \
	  mkdir stageautofeedback-libdecnumber; \
	mv stageautofeedback-libdecnumber libdecnumber; \
	mv stageautoprofile-libdecnumber prev-libdecnumber || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-libiberty ] || \
	  mkdir stageautofeedback-libiberty; \
	mv stageautofeedback-libiberty libiberty; \
	mv stageautoprofile-libiberty prev-libiberty || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-zlib ] || \
	  mkdir stageautofeedback-zlib; \
	mv stageautofeedback-zlib zlib; \
	mv stageautoprofile-zlib prev-zlib || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-lto-plugin ] || \
	  mkdir stageautofeedback-lto-plugin; \
	mv stageautofeedback-lto-plugin lto-plugin; \
	mv stageautoprofile-lto-plugin prev-lto-plugin || test -f stageautoprofile-lean 
	@cd $(HOST_SUBDIR); [ -d stageautofeedback-libctf ] || \
	  mkdir stageautofeedback-libctf; \
	mv stageautofeedback-libctf libctf; \
	mv stageautoprofile-libctf prev-libctf || test -f stageautoprofile-lean 
	@[ -d stageautofeedback-$(TARGET_SUBDIR) ] || \
	  mkdir stageautofeedback-$(TARGET_SUBDIR); \
	mv stageautofeedback-$(TARGET_SUBDIR) $(TARGET_SUBDIR); \
	mv stageautoprofile-$(TARGET_SUBDIR) prev-$(TARGET_SUBDIR) || test -f stageautoprofile-lean 

stageautofeedback-end:: 
	@if test -d $(HOST_SUBDIR)/bfd; then \
	  cd $(HOST_SUBDIR); mv bfd stageautofeedback-bfd; \
	  mv prev-bfd stageautoprofile-bfd; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/opcodes; then \
	  cd $(HOST_SUBDIR); mv opcodes stageautofeedback-opcodes; \
	  mv prev-opcodes stageautoprofile-opcodes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/binutils; then \
	  cd $(HOST_SUBDIR); mv binutils stageautofeedback-binutils; \
	  mv prev-binutils stageautoprofile-binutils; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/fixincludes; then \
	  cd $(HOST_SUBDIR); mv fixincludes stageautofeedback-fixincludes; \
	  mv prev-fixincludes stageautoprofile-fixincludes; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gas; then \
	  cd $(HOST_SUBDIR); mv gas stageautofeedback-gas; \
	  mv prev-gas stageautoprofile-gas; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gcc; then \
	  cd $(HOST_SUBDIR); mv gcc stageautofeedback-gcc; \
	  mv prev-gcc stageautoprofile-gcc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/gmp; then \
	  cd $(HOST_SUBDIR); mv gmp stageautofeedback-gmp; \
	  mv prev-gmp stageautoprofile-gmp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpfr; then \
	  cd $(HOST_SUBDIR); mv mpfr stageautofeedback-mpfr; \
	  mv prev-mpfr stageautoprofile-mpfr; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/mpc; then \
	  cd $(HOST_SUBDIR); mv mpc stageautofeedback-mpc; \
	  mv prev-mpc stageautoprofile-mpc; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/isl; then \
	  cd $(HOST_SUBDIR); mv isl stageautofeedback-isl; \
	  mv prev-isl stageautoprofile-isl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/intl; then \
	  cd $(HOST_SUBDIR); mv intl stageautofeedback-intl; \
	  mv prev-intl stageautoprofile-intl; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/ld; then \
	  cd $(HOST_SUBDIR); mv ld stageautofeedback-ld; \
	  mv prev-ld stageautoprofile-ld; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libbacktrace; then \
	  cd $(HOST_SUBDIR); mv libbacktrace stageautofeedback-libbacktrace; \
	  mv prev-libbacktrace stageautoprofile-libbacktrace; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcpp; then \
	  cd $(HOST_SUBDIR); mv libcpp stageautofeedback-libcpp; \
	  mv prev-libcpp stageautoprofile-libcpp; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libcody; then \
	  cd $(HOST_SUBDIR); mv libcody stageautofeedback-libcody; \
	  mv prev-libcody stageautoprofile-libcody; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libdecnumber; then \
	  cd $(HOST_SUBDIR); mv libdecnumber stageautofeedback-libdecnumber; \
	  mv prev-libdecnumber stageautoprofile-libdecnumber; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libiberty; then \
	  cd $(HOST_SUBDIR); mv libiberty stageautofeedback-libiberty; \
	  mv prev-libiberty stageautoprofile-libiberty; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/zlib; then \
	  cd $(HOST_SUBDIR); mv zlib stageautofeedback-zlib; \
	  mv prev-zlib stageautoprofile-zlib; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/lto-plugin; then \
	  cd $(HOST_SUBDIR); mv lto-plugin stageautofeedback-lto-plugin; \
	  mv prev-lto-plugin stageautoprofile-lto-plugin; : ; \
	fi
	@if test -d $(HOST_SUBDIR)/libctf; then \
	  cd $(HOST_SUBDIR); mv libctf stageautofeedback-libctf; \
	  mv prev-libctf stageautoprofile-libctf; : ; \
	fi
	@if test -d $(TARGET_SUBDIR); then \
	  mv $(TARGET_SUBDIR) stageautofeedback-$(TARGET_SUBDIR); \
	  mv prev-$(TARGET_SUBDIR) stageautoprofile-$(TARGET_SUBDIR); : ; \
	fi
	rm -f stage_current

# Bubble a bug fix through all the stages up to stage autofeedback.  They are
# remade, but not reconfigured.  The next stage (if any) will not be
# reconfigured either.
.PHONY: stageautofeedback-bubble
stageautofeedback-bubble:: stageautoprofile-bubble
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	if test -f stageautofeedback-lean || test -f stageautoprofile-lean ; then \
	  echo Skipping rebuild of stageautofeedback; \
	else \
	  $(MAKE) stageautofeedback-start; \
	  $(MAKE) $(RECURSE_FLAGS_TO_PASS) all-stageautofeedback; \
	fi

.PHONY: all-stageautofeedback clean-stageautofeedback
do-clean: clean-stageautofeedback

# FIXME: Will not need to be conditional when toplevel bootstrap is the
# only possibility, but now it conflicts with no-bootstrap rules



stageprofile-end::
	$(MAKE) distclean-stagefeedback

stagefeedback-start::
	@r=`${PWD_COMMAND}`; export r; \
	s=`cd $(srcdir); ${PWD_COMMAND}`; export s; \
	for i in prev-*; do \
	  j=`echo $$i | sed s/^prev-//`; \
	  cd $$r/$$i && \
	  { find . -type d | sort | sed 's,.*,$(SHELL) '"$$s"'/mkinstalldirs "../'$$j'/&",' | $(SHELL); } && \
	  { find . -name '*.*da' | sed 's,.*,$(LN) -f "&" "../'$$j'/&",' | $(SHELL); }; \
	done


# --------------------------------------
# Dependencies between different modules
# --------------------------------------

# Generic dependencies for target modules on host stuff, especially gcc

configure-target-libstdc++-v3: maybe-all-gcc
configure-target-libsanitizer: maybe-all-gcc
configure-target-libvtv: maybe-all-gcc
configure-target-liboffloadmic: maybe-all-gcc
configure-target-libssp: maybe-all-gcc
configure-target-newlib: maybe-all-gcc
configure-target-libgcc: maybe-all-gcc
configure-target-libbacktrace: maybe-all-gcc
configure-target-libquadmath: maybe-all-gcc
configure-target-libgfortran: maybe-all-gcc
configure-target-libobjc: maybe-all-gcc
configure-target-libgo: maybe-all-gcc
configure-target-libphobos: maybe-all-gcc
configure-target-libtermcap: maybe-all-gcc
configure-target-winsup: maybe-all-gcc
configure-target-libgloss: maybe-all-gcc
configure-target-libffi: maybe-all-gcc
configure-target-zlib: maybe-all-gcc
configure-target-rda: maybe-all-gcc
configure-target-libada: maybe-all-gcc
configure-target-libgomp: maybe-all-gcc
configure-target-libitm: maybe-all-gcc
configure-target-libatomic: maybe-all-gcc


# There are two types of dependencies here: 'hard' dependencies, where one
# module simply won't build without the other; and 'soft' dependencies, where
# if the depended-on module is missing, the depending module will do without
# or find a substitute somewhere (perhaps installed).  Soft dependencies
# are made here to depend on a 'maybe-' target.  If you're not sure,
# it's safer to use a soft dependency.






# With all the machinery above in place, it is pretty easy to generate
# dependencies.  Host dependencies are a bit more complex because we have
# to check for bootstrap/prebootstrap dependencies.  To resolve
# prebootstrap dependencies, prebootstrap modules are gathered in
# a hash table.
all-build-bison: maybe-all-build-texinfo
all-build-flex: maybe-all-build-texinfo
all-build-flex: maybe-all-build-bison
all-build-flex: maybe-all-build-m4
all-build-libiberty: maybe-all-build-texinfo
all-build-m4: maybe-all-build-texinfo
all-build-fixincludes: maybe-all-build-libiberty
all-build-libcpp: maybe-all-build-libiberty
configure-gcc: maybe-configure-intl
configure-stage1-gcc: maybe-configure-stage1-intl
configure-stage2-gcc: maybe-configure-stage2-intl
configure-stage3-gcc: maybe-configure-stage3-intl
configure-stage4-gcc: maybe-configure-stage4-intl
configure-stageprofile-gcc: maybe-configure-stageprofile-intl
configure-stagetrain-gcc: maybe-configure-stagetrain-intl
configure-stagefeedback-gcc: maybe-configure-stagefeedback-intl
configure-stageautoprofile-gcc: maybe-configure-stageautoprofile-intl
configure-stageautofeedback-gcc: maybe-configure-stageautofeedback-intl
configure-gcc: maybe-all-gmp
configure-stage1-gcc: maybe-all-stage1-gmp
configure-stage2-gcc: maybe-all-stage2-gmp
configure-stage3-gcc: maybe-all-stage3-gmp
configure-stage4-gcc: maybe-all-stage4-gmp
configure-stageprofile-gcc: maybe-all-stageprofile-gmp
configure-stagetrain-gcc: maybe-all-stagetrain-gmp
configure-stagefeedback-gcc: maybe-all-stagefeedback-gmp
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-gmp
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-gmp
configure-gcc: maybe-all-mpfr
configure-stage1-gcc: maybe-all-stage1-mpfr
configure-stage2-gcc: maybe-all-stage2-mpfr
configure-stage3-gcc: maybe-all-stage3-mpfr
configure-stage4-gcc: maybe-all-stage4-mpfr
configure-stageprofile-gcc: maybe-all-stageprofile-mpfr
configure-stagetrain-gcc: maybe-all-stagetrain-mpfr
configure-stagefeedback-gcc: maybe-all-stagefeedback-mpfr
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-mpfr
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-mpfr
configure-gcc: maybe-all-mpc
configure-stage1-gcc: maybe-all-stage1-mpc
configure-stage2-gcc: maybe-all-stage2-mpc
configure-stage3-gcc: maybe-all-stage3-mpc
configure-stage4-gcc: maybe-all-stage4-mpc
configure-stageprofile-gcc: maybe-all-stageprofile-mpc
configure-stagetrain-gcc: maybe-all-stagetrain-mpc
configure-stagefeedback-gcc: maybe-all-stagefeedback-mpc
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-mpc
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-mpc
configure-gcc: maybe-all-isl
configure-stage1-gcc: maybe-all-stage1-isl
configure-stage2-gcc: maybe-all-stage2-isl
configure-stage3-gcc: maybe-all-stage3-isl
configure-stage4-gcc: maybe-all-stage4-isl
configure-stageprofile-gcc: maybe-all-stageprofile-isl
configure-stagetrain-gcc: maybe-all-stagetrain-isl
configure-stagefeedback-gcc: maybe-all-stagefeedback-isl
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-isl
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-isl
configure-gcc: maybe-all-lto-plugin
configure-stage1-gcc: maybe-all-stage1-lto-plugin
configure-stage2-gcc: maybe-all-stage2-lto-plugin
configure-stage3-gcc: maybe-all-stage3-lto-plugin
configure-stage4-gcc: maybe-all-stage4-lto-plugin
configure-stageprofile-gcc: maybe-all-stageprofile-lto-plugin
configure-stagetrain-gcc: maybe-all-stagetrain-lto-plugin
configure-stagefeedback-gcc: maybe-all-stagefeedback-lto-plugin
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-lto-plugin
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-lto-plugin
configure-gcc: maybe-all-binutils
configure-stage1-gcc: maybe-all-stage1-binutils
configure-stage2-gcc: maybe-all-stage2-binutils
configure-stage3-gcc: maybe-all-stage3-binutils
configure-stage4-gcc: maybe-all-stage4-binutils
configure-stageprofile-gcc: maybe-all-stageprofile-binutils
configure-stagetrain-gcc: maybe-all-stagetrain-binutils
configure-stagefeedback-gcc: maybe-all-stagefeedback-binutils
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-binutils
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-binutils
configure-gcc: maybe-all-gas
configure-stage1-gcc: maybe-all-stage1-gas
configure-stage2-gcc: maybe-all-stage2-gas
configure-stage3-gcc: maybe-all-stage3-gas
configure-stage4-gcc: maybe-all-stage4-gas
configure-stageprofile-gcc: maybe-all-stageprofile-gas
configure-stagetrain-gcc: maybe-all-stagetrain-gas
configure-stagefeedback-gcc: maybe-all-stagefeedback-gas
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-gas
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-gas
configure-gcc: maybe-all-ld
configure-stage1-gcc: maybe-all-stage1-ld
configure-stage2-gcc: maybe-all-stage2-ld
configure-stage3-gcc: maybe-all-stage3-ld
configure-stage4-gcc: maybe-all-stage4-ld
configure-stageprofile-gcc: maybe-all-stageprofile-ld
configure-stagetrain-gcc: maybe-all-stagetrain-ld
configure-stagefeedback-gcc: maybe-all-stagefeedback-ld
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-ld
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-ld
configure-gcc: maybe-all-gold
configure-stage1-gcc: maybe-all-stage1-gold
configure-stage2-gcc: maybe-all-stage2-gold
configure-stage3-gcc: maybe-all-stage3-gold
configure-stage4-gcc: maybe-all-stage4-gold
configure-stageprofile-gcc: maybe-all-stageprofile-gold
configure-stagetrain-gcc: maybe-all-stagetrain-gold
configure-stagefeedback-gcc: maybe-all-stagefeedback-gold
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-gold
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-gold
configure-gcc: maybe-all-libelf
configure-stage1-gcc: maybe-all-stage1-libelf
configure-stage2-gcc: maybe-all-stage2-libelf
configure-stage3-gcc: maybe-all-stage3-libelf
configure-stage4-gcc: maybe-all-stage4-libelf
configure-stageprofile-gcc: maybe-all-stageprofile-libelf
configure-stagetrain-gcc: maybe-all-stagetrain-libelf
configure-stagefeedback-gcc: maybe-all-stagefeedback-libelf
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-libelf
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-libelf
configure-gcc: maybe-all-libiconv
configure-stage1-gcc: maybe-all-stage1-libiconv
configure-stage2-gcc: maybe-all-stage2-libiconv
configure-stage3-gcc: maybe-all-stage3-libiconv
configure-stage4-gcc: maybe-all-stage4-libiconv
configure-stageprofile-gcc: maybe-all-stageprofile-libiconv
configure-stagetrain-gcc: maybe-all-stagetrain-libiconv
configure-stagefeedback-gcc: maybe-all-stagefeedback-libiconv
configure-stageautoprofile-gcc: maybe-all-stageautoprofile-libiconv
configure-stageautofeedback-gcc: maybe-all-stageautofeedback-libiconv
all-gcc: all-libiberty
all-stage1-gcc: all-stage1-libiberty
all-stage2-gcc: all-stage2-libiberty
all-stage3-gcc: all-stage3-libiberty
all-stage4-gcc: all-stage4-libiberty
all-stageprofile-gcc: all-stageprofile-libiberty
all-stagetrain-gcc: all-stagetrain-libiberty
all-stagefeedback-gcc: all-stagefeedback-libiberty
all-stageautoprofile-gcc: all-stageautoprofile-libiberty
all-stageautofeedback-gcc: all-stageautofeedback-libiberty
all-gcc: maybe-all-intl
all-stage1-gcc: maybe-all-stage1-intl
all-stage2-gcc: maybe-all-stage2-intl
all-stage3-gcc: maybe-all-stage3-intl
all-stage4-gcc: maybe-all-stage4-intl
all-stageprofile-gcc: maybe-all-stageprofile-intl
all-stagetrain-gcc: maybe-all-stagetrain-intl
all-stagefeedback-gcc: maybe-all-stagefeedback-intl
all-stageautoprofile-gcc: maybe-all-stageautoprofile-intl
all-stageautofeedback-gcc: maybe-all-stageautofeedback-intl
all-gcc: maybe-all-mpfr
all-stage1-gcc: maybe-all-stage1-mpfr
all-stage2-gcc: maybe-all-stage2-mpfr
all-stage3-gcc: maybe-all-stage3-mpfr
all-stage4-gcc: maybe-all-stage4-mpfr
all-stageprofile-gcc: maybe-all-stageprofile-mpfr
all-stagetrain-gcc: maybe-all-stagetrain-mpfr
all-stagefeedback-gcc: maybe-all-stagefeedback-mpfr
all-stageautoprofile-gcc: maybe-all-stageautoprofile-mpfr
all-stageautofeedback-gcc: maybe-all-stageautofeedback-mpfr
all-gcc: maybe-all-mpc
all-stage1-gcc: maybe-all-stage1-mpc
all-stage2-gcc: maybe-all-stage2-mpc
all-stage3-gcc: maybe-all-stage3-mpc
all-stage4-gcc: maybe-all-stage4-mpc
all-stageprofile-gcc: maybe-all-stageprofile-mpc
all-stagetrain-gcc: maybe-all-stagetrain-mpc
all-stagefeedback-gcc: maybe-all-stagefeedback-mpc
all-stageautoprofile-gcc: maybe-all-stageautoprofile-mpc
all-stageautofeedback-gcc: maybe-all-stageautofeedback-mpc
all-gcc: maybe-all-isl
all-stage1-gcc: maybe-all-stage1-isl
all-stage2-gcc: maybe-all-stage2-isl
all-stage3-gcc: maybe-all-stage3-isl
all-stage4-gcc: maybe-all-stage4-isl
all-stageprofile-gcc: maybe-all-stageprofile-isl
all-stagetrain-gcc: maybe-all-stagetrain-isl
all-stagefeedback-gcc: maybe-all-stagefeedback-isl
all-stageautoprofile-gcc: maybe-all-stageautoprofile-isl
all-stageautofeedback-gcc: maybe-all-stageautofeedback-isl
all-gcc: maybe-all-build-texinfo
all-stage1-gcc: maybe-all-build-texinfo
all-stage2-gcc: maybe-all-build-texinfo
all-stage3-gcc: maybe-all-build-texinfo
all-stage4-gcc: maybe-all-build-texinfo
all-stageprofile-gcc: maybe-all-build-texinfo
all-stagetrain-gcc: maybe-all-build-texinfo
all-stagefeedback-gcc: maybe-all-build-texinfo
all-stageautoprofile-gcc: maybe-all-build-texinfo
all-stageautofeedback-gcc: maybe-all-build-texinfo
all-gcc: maybe-all-build-bison
all-stage1-gcc: maybe-all-build-bison
all-stage2-gcc: maybe-all-build-bison
all-stage3-gcc: maybe-all-build-bison
all-stage4-gcc: maybe-all-build-bison
all-stageprofile-gcc: maybe-all-build-bison
all-stagetrain-gcc: maybe-all-build-bison
all-stagefeedback-gcc: maybe-all-build-bison
all-stageautoprofile-gcc: maybe-all-build-bison
all-stageautofeedback-gcc: maybe-all-build-bison
all-gcc: maybe-all-build-flex
all-stage1-gcc: maybe-all-build-flex
all-stage2-gcc: maybe-all-build-flex
all-stage3-gcc: maybe-all-build-flex
all-stage4-gcc: maybe-all-build-flex
all-stageprofile-gcc: maybe-all-build-flex
all-stagetrain-gcc: maybe-all-build-flex
all-stagefeedback-gcc: maybe-all-build-flex
all-stageautoprofile-gcc: maybe-all-build-flex
all-stageautofeedback-gcc: maybe-all-build-flex
all-gcc: maybe-all-build-libiberty
all-stage1-gcc: maybe-all-build-libiberty
all-stage2-gcc: maybe-all-build-libiberty
all-stage3-gcc: maybe-all-build-libiberty
all-stage4-gcc: maybe-all-build-libiberty
all-stageprofile-gcc: maybe-all-build-libiberty
all-stagetrain-gcc: maybe-all-build-libiberty
all-stagefeedback-gcc: maybe-all-build-libiberty
all-stageautoprofile-gcc: maybe-all-build-libiberty
all-stageautofeedback-gcc: maybe-all-build-libiberty
all-gcc: maybe-all-build-fixincludes
all-stage1-gcc: maybe-all-build-fixincludes
all-stage2-gcc: maybe-all-build-fixincludes
all-stage3-gcc: maybe-all-build-fixincludes
all-stage4-gcc: maybe-all-build-fixincludes
all-stageprofile-gcc: maybe-all-build-fixincludes
all-stagetrain-gcc: maybe-all-build-fixincludes
all-stagefeedback-gcc: maybe-all-build-fixincludes
all-stageautoprofile-gcc: maybe-all-build-fixincludes
all-stageautofeedback-gcc: maybe-all-build-fixincludes
all-gcc: maybe-all-build-libcpp
all-stage1-gcc: maybe-all-build-libcpp
all-stage2-gcc: maybe-all-build-libcpp
all-stage3-gcc: maybe-all-build-libcpp
all-stage4-gcc: maybe-all-build-libcpp
all-stageprofile-gcc: maybe-all-build-libcpp
all-stagetrain-gcc: maybe-all-build-libcpp
all-stagefeedback-gcc: maybe-all-build-libcpp
all-stageautoprofile-gcc: maybe-all-build-libcpp
all-stageautofeedback-gcc: maybe-all-build-libcpp
all-gcc: maybe-all-zlib
all-stage1-gcc: maybe-all-stage1-zlib
all-stage2-gcc: maybe-all-stage2-zlib
all-stage3-gcc: maybe-all-stage3-zlib
all-stage4-gcc: maybe-all-stage4-zlib
all-stageprofile-gcc: maybe-all-stageprofile-zlib
all-stagetrain-gcc: maybe-all-stagetrain-zlib
all-stagefeedback-gcc: maybe-all-stagefeedback-zlib
all-stageautoprofile-gcc: maybe-all-stageautoprofile-zlib
all-stageautofeedback-gcc: maybe-all-stageautofeedback-zlib
all-gcc: all-libbacktrace
all-stage1-gcc: all-stage1-libbacktrace
all-stage2-gcc: all-stage2-libbacktrace
all-stage3-gcc: all-stage3-libbacktrace
all-stage4-gcc: all-stage4-libbacktrace
all-stageprofile-gcc: all-stageprofile-libbacktrace
all-stagetrain-gcc: all-stagetrain-libbacktrace
all-stagefeedback-gcc: all-stagefeedback-libbacktrace
all-stageautoprofile-gcc: all-stageautoprofile-libbacktrace
all-stageautofeedback-gcc: all-stageautofeedback-libbacktrace
all-gcc: all-libcpp
all-stage1-gcc: all-stage1-libcpp
all-stage2-gcc: all-stage2-libcpp
all-stage3-gcc: all-stage3-libcpp
all-stage4-gcc: all-stage4-libcpp
all-stageprofile-gcc: all-stageprofile-libcpp
all-stagetrain-gcc: all-stagetrain-libcpp
all-stagefeedback-gcc: all-stagefeedback-libcpp
all-stageautoprofile-gcc: all-stageautoprofile-libcpp
all-stageautofeedback-gcc: all-stageautofeedback-libcpp
all-gcc: all-libcody
all-stage1-gcc: all-stage1-libcody
all-stage2-gcc: all-stage2-libcody
all-stage3-gcc: all-stage3-libcody
all-stage4-gcc: all-stage4-libcody
all-stageprofile-gcc: all-stageprofile-libcody
all-stagetrain-gcc: all-stagetrain-libcody
all-stagefeedback-gcc: all-stagefeedback-libcody
all-stageautoprofile-gcc: all-stageautoprofile-libcody
all-stageautofeedback-gcc: all-stageautofeedback-libcody
all-gcc: all-libdecnumber
all-stage1-gcc: all-stage1-libdecnumber
all-stage2-gcc: all-stage2-libdecnumber
all-stage3-gcc: all-stage3-libdecnumber
all-stage4-gcc: all-stage4-libdecnumber
all-stageprofile-gcc: all-stageprofile-libdecnumber
all-stagetrain-gcc: all-stagetrain-libdecnumber
all-stagefeedback-gcc: all-stagefeedback-libdecnumber
all-stageautoprofile-gcc: all-stageautoprofile-libdecnumber
all-stageautofeedback-gcc: all-stageautofeedback-libdecnumber
all-gcc: maybe-all-libiberty
all-stage1-gcc: maybe-all-stage1-libiberty
all-stage2-gcc: maybe-all-stage2-libiberty
all-stage3-gcc: maybe-all-stage3-libiberty
all-stage4-gcc: maybe-all-stage4-libiberty
all-stageprofile-gcc: maybe-all-stageprofile-libiberty
all-stagetrain-gcc: maybe-all-stagetrain-libiberty
all-stagefeedback-gcc: maybe-all-stagefeedback-libiberty
all-stageautoprofile-gcc: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-gcc: maybe-all-stageautofeedback-libiberty
all-gcc: maybe-all-fixincludes
all-stage1-gcc: maybe-all-stage1-fixincludes
all-stage2-gcc: maybe-all-stage2-fixincludes
all-stage3-gcc: maybe-all-stage3-fixincludes
all-stage4-gcc: maybe-all-stage4-fixincludes
all-stageprofile-gcc: maybe-all-stageprofile-fixincludes
all-stagetrain-gcc: maybe-all-stagetrain-fixincludes
all-stagefeedback-gcc: maybe-all-stagefeedback-fixincludes
all-stageautoprofile-gcc: maybe-all-stageautoprofile-fixincludes
all-stageautofeedback-gcc: maybe-all-stageautofeedback-fixincludes
all-gcc: maybe-all-lto-plugin
all-stage1-gcc: maybe-all-stage1-lto-plugin
all-stage2-gcc: maybe-all-stage2-lto-plugin
all-stage3-gcc: maybe-all-stage3-lto-plugin
all-stage4-gcc: maybe-all-stage4-lto-plugin
all-stageprofile-gcc: maybe-all-stageprofile-lto-plugin
all-stagetrain-gcc: maybe-all-stagetrain-lto-plugin
all-stagefeedback-gcc: maybe-all-stagefeedback-lto-plugin
all-stageautoprofile-gcc: maybe-all-stageautoprofile-lto-plugin
all-stageautofeedback-gcc: maybe-all-stageautofeedback-lto-plugin
all-gcc: maybe-all-libiconv
all-stage1-gcc: maybe-all-stage1-libiconv
all-stage2-gcc: maybe-all-stage2-libiconv
all-stage3-gcc: maybe-all-stage3-libiconv
all-stage4-gcc: maybe-all-stage4-libiconv
all-stageprofile-gcc: maybe-all-stageprofile-libiconv
all-stagetrain-gcc: maybe-all-stagetrain-libiconv
all-stagefeedback-gcc: maybe-all-stagefeedback-libiconv
all-stageautoprofile-gcc: maybe-all-stageautoprofile-libiconv
all-stageautofeedback-gcc: maybe-all-stageautofeedback-libiconv
info-gcc: maybe-all-build-libiberty
info-stage1-gcc: maybe-all-build-libiberty
info-stage2-gcc: maybe-all-build-libiberty
info-stage3-gcc: maybe-all-build-libiberty
info-stage4-gcc: maybe-all-build-libiberty
info-stageprofile-gcc: maybe-all-build-libiberty
info-stagetrain-gcc: maybe-all-build-libiberty
info-stagefeedback-gcc: maybe-all-build-libiberty
info-stageautoprofile-gcc: maybe-all-build-libiberty
info-stageautofeedback-gcc: maybe-all-build-libiberty
dvi-gcc: maybe-all-build-libiberty
dvi-stage1-gcc: maybe-all-build-libiberty
dvi-stage2-gcc: maybe-all-build-libiberty
dvi-stage3-gcc: maybe-all-build-libiberty
dvi-stage4-gcc: maybe-all-build-libiberty
dvi-stageprofile-gcc: maybe-all-build-libiberty
dvi-stagetrain-gcc: maybe-all-build-libiberty
dvi-stagefeedback-gcc: maybe-all-build-libiberty
dvi-stageautoprofile-gcc: maybe-all-build-libiberty
dvi-stageautofeedback-gcc: maybe-all-build-libiberty
pdf-gcc: maybe-all-build-libiberty
pdf-stage1-gcc: maybe-all-build-libiberty
pdf-stage2-gcc: maybe-all-build-libiberty
pdf-stage3-gcc: maybe-all-build-libiberty
pdf-stage4-gcc: maybe-all-build-libiberty
pdf-stageprofile-gcc: maybe-all-build-libiberty
pdf-stagetrain-gcc: maybe-all-build-libiberty
pdf-stagefeedback-gcc: maybe-all-build-libiberty
pdf-stageautoprofile-gcc: maybe-all-build-libiberty
pdf-stageautofeedback-gcc: maybe-all-build-libiberty
html-gcc: maybe-all-build-libiberty
html-stage1-gcc: maybe-all-build-libiberty
html-stage2-gcc: maybe-all-build-libiberty
html-stage3-gcc: maybe-all-build-libiberty
html-stage4-gcc: maybe-all-build-libiberty
html-stageprofile-gcc: maybe-all-build-libiberty
html-stagetrain-gcc: maybe-all-build-libiberty
html-stagefeedback-gcc: maybe-all-build-libiberty
html-stageautoprofile-gcc: maybe-all-build-libiberty
html-stageautofeedback-gcc: maybe-all-build-libiberty
install-gcc: maybe-install-fixincludes
install-gcc: maybe-install-lto-plugin
install-strip-gcc: maybe-install-strip-fixincludes
install-strip-gcc: maybe-install-strip-lto-plugin
configure-libcpp: configure-libiberty
configure-stage1-libcpp: configure-stage1-libiberty
configure-stage2-libcpp: configure-stage2-libiberty
configure-stage3-libcpp: configure-stage3-libiberty
configure-stage4-libcpp: configure-stage4-libiberty
configure-stageprofile-libcpp: configure-stageprofile-libiberty
configure-stagetrain-libcpp: configure-stagetrain-libiberty
configure-stagefeedback-libcpp: configure-stagefeedback-libiberty
configure-stageautoprofile-libcpp: configure-stageautoprofile-libiberty
configure-stageautofeedback-libcpp: configure-stageautofeedback-libiberty
configure-libcpp: maybe-configure-intl
configure-stage1-libcpp: maybe-configure-stage1-intl
configure-stage2-libcpp: maybe-configure-stage2-intl
configure-stage3-libcpp: maybe-configure-stage3-intl
configure-stage4-libcpp: maybe-configure-stage4-intl
configure-stageprofile-libcpp: maybe-configure-stageprofile-intl
configure-stagetrain-libcpp: maybe-configure-stagetrain-intl
configure-stagefeedback-libcpp: maybe-configure-stagefeedback-intl
configure-stageautoprofile-libcpp: maybe-configure-stageautoprofile-intl
configure-stageautofeedback-libcpp: maybe-configure-stageautofeedback-intl
configure-libcpp: maybe-all-libiconv
configure-stage1-libcpp: maybe-all-stage1-libiconv
configure-stage2-libcpp: maybe-all-stage2-libiconv
configure-stage3-libcpp: maybe-all-stage3-libiconv
configure-stage4-libcpp: maybe-all-stage4-libiconv
configure-stageprofile-libcpp: maybe-all-stageprofile-libiconv
configure-stagetrain-libcpp: maybe-all-stagetrain-libiconv
configure-stagefeedback-libcpp: maybe-all-stagefeedback-libiconv
configure-stageautoprofile-libcpp: maybe-all-stageautoprofile-libiconv
configure-stageautofeedback-libcpp: maybe-all-stageautofeedback-libiconv
all-libcpp: all-libiberty
all-stage1-libcpp: all-stage1-libiberty
all-stage2-libcpp: all-stage2-libiberty
all-stage3-libcpp: all-stage3-libiberty
all-stage4-libcpp: all-stage4-libiberty
all-stageprofile-libcpp: all-stageprofile-libiberty
all-stagetrain-libcpp: all-stagetrain-libiberty
all-stagefeedback-libcpp: all-stagefeedback-libiberty
all-stageautoprofile-libcpp: all-stageautoprofile-libiberty
all-stageautofeedback-libcpp: all-stageautofeedback-libiberty
all-libcpp: maybe-all-intl
all-stage1-libcpp: maybe-all-stage1-intl
all-stage2-libcpp: maybe-all-stage2-intl
all-stage3-libcpp: maybe-all-stage3-intl
all-stage4-libcpp: maybe-all-stage4-intl
all-stageprofile-libcpp: maybe-all-stageprofile-intl
all-stagetrain-libcpp: maybe-all-stagetrain-intl
all-stagefeedback-libcpp: maybe-all-stagefeedback-intl
all-stageautoprofile-libcpp: maybe-all-stageautoprofile-intl
all-stageautofeedback-libcpp: maybe-all-stageautofeedback-intl
all-libcpp: maybe-all-libiconv
all-stage1-libcpp: maybe-all-stage1-libiconv
all-stage2-libcpp: maybe-all-stage2-libiconv
all-stage3-libcpp: maybe-all-stage3-libiconv
all-stage4-libcpp: maybe-all-stage4-libiconv
all-stageprofile-libcpp: maybe-all-stageprofile-libiconv
all-stagetrain-libcpp: maybe-all-stagetrain-libiconv
all-stagefeedback-libcpp: maybe-all-stagefeedback-libiconv
all-stageautoprofile-libcpp: maybe-all-stageautoprofile-libiconv
all-stageautofeedback-libcpp: maybe-all-stageautofeedback-libiconv
all-fixincludes: maybe-all-libiberty
all-stage1-fixincludes: maybe-all-stage1-libiberty
all-stage2-fixincludes: maybe-all-stage2-libiberty
all-stage3-fixincludes: maybe-all-stage3-libiberty
all-stage4-fixincludes: maybe-all-stage4-libiberty
all-stageprofile-fixincludes: maybe-all-stageprofile-libiberty
all-stagetrain-fixincludes: maybe-all-stagetrain-libiberty
all-stagefeedback-fixincludes: maybe-all-stagefeedback-libiberty
all-stageautoprofile-fixincludes: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-fixincludes: maybe-all-stageautofeedback-libiberty
all-gnattools: maybe-all-target-libada
all-lto-plugin: maybe-all-libiberty
all-stage1-lto-plugin: maybe-all-stage1-libiberty
all-stage2-lto-plugin: maybe-all-stage2-libiberty
all-stage3-lto-plugin: maybe-all-stage3-libiberty
all-stage4-lto-plugin: maybe-all-stage4-libiberty
all-stageprofile-lto-plugin: maybe-all-stageprofile-libiberty
all-stagetrain-lto-plugin: maybe-all-stagetrain-libiberty
all-stagefeedback-lto-plugin: maybe-all-stagefeedback-libiberty
all-stageautoprofile-lto-plugin: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-lto-plugin: maybe-all-stageautofeedback-libiberty
all-lto-plugin: maybe-all-libiberty-linker-plugin
all-stage1-lto-plugin: maybe-all-stage1-libiberty-linker-plugin
all-stage2-lto-plugin: maybe-all-stage2-libiberty-linker-plugin
all-stage3-lto-plugin: maybe-all-stage3-libiberty-linker-plugin
all-stage4-lto-plugin: maybe-all-stage4-libiberty-linker-plugin
all-stageprofile-lto-plugin: maybe-all-stageprofile-libiberty-linker-plugin
all-stagetrain-lto-plugin: maybe-all-stagetrain-libiberty-linker-plugin
all-stagefeedback-lto-plugin: maybe-all-stagefeedback-libiberty-linker-plugin
all-stageautoprofile-lto-plugin: maybe-all-stageautoprofile-libiberty-linker-plugin
all-stageautofeedback-lto-plugin: maybe-all-stageautofeedback-libiberty-linker-plugin
all-gotools: maybe-all-target-libgo
configure-intl: maybe-all-libiconv
configure-stage1-intl: maybe-all-stage1-libiconv
configure-stage2-intl: maybe-all-stage2-libiconv
configure-stage3-intl: maybe-all-stage3-libiconv
configure-stage4-intl: maybe-all-stage4-libiconv
configure-stageprofile-intl: maybe-all-stageprofile-libiconv
configure-stagetrain-intl: maybe-all-stagetrain-libiconv
configure-stagefeedback-intl: maybe-all-stagefeedback-libiconv
configure-stageautoprofile-intl: maybe-all-stageautoprofile-libiconv
configure-stageautofeedback-intl: maybe-all-stageautofeedback-libiconv
configure-mpfr: maybe-all-gmp
configure-stage1-mpfr: maybe-all-stage1-gmp
configure-stage2-mpfr: maybe-all-stage2-gmp
configure-stage3-mpfr: maybe-all-stage3-gmp
configure-stage4-mpfr: maybe-all-stage4-gmp
configure-stageprofile-mpfr: maybe-all-stageprofile-gmp
configure-stagetrain-mpfr: maybe-all-stagetrain-gmp
configure-stagefeedback-mpfr: maybe-all-stagefeedback-gmp
configure-stageautoprofile-mpfr: maybe-all-stageautoprofile-gmp
configure-stageautofeedback-mpfr: maybe-all-stageautofeedback-gmp
configure-mpc: maybe-all-mpfr
configure-stage1-mpc: maybe-all-stage1-mpfr
configure-stage2-mpc: maybe-all-stage2-mpfr
configure-stage3-mpc: maybe-all-stage3-mpfr
configure-stage4-mpc: maybe-all-stage4-mpfr
configure-stageprofile-mpc: maybe-all-stageprofile-mpfr
configure-stagetrain-mpc: maybe-all-stagetrain-mpfr
configure-stagefeedback-mpc: maybe-all-stagefeedback-mpfr
configure-stageautoprofile-mpc: maybe-all-stageautoprofile-mpfr
configure-stageautofeedback-mpc: maybe-all-stageautofeedback-mpfr
configure-isl: maybe-all-gmp
configure-stage1-isl: maybe-all-stage1-gmp
configure-stage2-isl: maybe-all-stage2-gmp
configure-stage3-isl: maybe-all-stage3-gmp
configure-stage4-isl: maybe-all-stage4-gmp
configure-stageprofile-isl: maybe-all-stageprofile-gmp
configure-stagetrain-isl: maybe-all-stagetrain-gmp
configure-stagefeedback-isl: maybe-all-stagefeedback-gmp
configure-stageautoprofile-isl: maybe-all-stageautoprofile-gmp
configure-stageautofeedback-isl: maybe-all-stageautofeedback-gmp
all-intl: maybe-all-libiconv
all-stage1-intl: maybe-all-stage1-libiconv
all-stage2-intl: maybe-all-stage2-libiconv
all-stage3-intl: maybe-all-stage3-libiconv
all-stage4-intl: maybe-all-stage4-libiconv
all-stageprofile-intl: maybe-all-stageprofile-libiconv
all-stagetrain-intl: maybe-all-stagetrain-libiconv
all-stagefeedback-intl: maybe-all-stagefeedback-libiconv
all-stageautoprofile-intl: maybe-all-stageautoprofile-libiconv
all-stageautofeedback-intl: maybe-all-stageautofeedback-libiconv
configure-gdb: maybe-configure-sim
configure-gdb: maybe-all-gnulib
configure-gdb: maybe-all-gdbsupport
all-gdb: maybe-all-gnulib
all-gdb: maybe-all-gdbsupport
all-gdb: maybe-all-readline
all-gdb: maybe-all-build-bison
all-gdb: maybe-all-sim
all-gdb: maybe-all-libtermcap
configure-gdbserver: maybe-all-gnulib
all-gdbserver: maybe-all-gdbsupport
all-gdbserver: maybe-all-gnulib
configure-libgui: maybe-configure-tcl
configure-libgui: maybe-configure-tk
all-libgui: maybe-all-tcl
all-libgui: maybe-all-tk
all-libgui: maybe-all-itcl
configure-gdbsupport: maybe-configure-gnulib
all-gdbsupport: maybe-all-gnulib
configure-bfd: configure-libiberty
configure-stage1-bfd: configure-stage1-libiberty
configure-stage2-bfd: configure-stage2-libiberty
configure-stage3-bfd: configure-stage3-libiberty
configure-stage4-bfd: configure-stage4-libiberty
configure-stageprofile-bfd: configure-stageprofile-libiberty
configure-stagetrain-bfd: configure-stagetrain-libiberty
configure-stagefeedback-bfd: configure-stagefeedback-libiberty
configure-stageautoprofile-bfd: configure-stageautoprofile-libiberty
configure-stageautofeedback-bfd: configure-stageautofeedback-libiberty
configure-bfd: maybe-configure-intl
configure-stage1-bfd: maybe-configure-stage1-intl
configure-stage2-bfd: maybe-configure-stage2-intl
configure-stage3-bfd: maybe-configure-stage3-intl
configure-stage4-bfd: maybe-configure-stage4-intl
configure-stageprofile-bfd: maybe-configure-stageprofile-intl
configure-stagetrain-bfd: maybe-configure-stagetrain-intl
configure-stagefeedback-bfd: maybe-configure-stagefeedback-intl
configure-stageautoprofile-bfd: maybe-configure-stageautoprofile-intl
configure-stageautofeedback-bfd: maybe-configure-stageautofeedback-intl
all-bfd: maybe-all-libiberty
all-stage1-bfd: maybe-all-stage1-libiberty
all-stage2-bfd: maybe-all-stage2-libiberty
all-stage3-bfd: maybe-all-stage3-libiberty
all-stage4-bfd: maybe-all-stage4-libiberty
all-stageprofile-bfd: maybe-all-stageprofile-libiberty
all-stagetrain-bfd: maybe-all-stagetrain-libiberty
all-stagefeedback-bfd: maybe-all-stagefeedback-libiberty
all-stageautoprofile-bfd: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-bfd: maybe-all-stageautofeedback-libiberty
all-bfd: maybe-all-intl
all-stage1-bfd: maybe-all-stage1-intl
all-stage2-bfd: maybe-all-stage2-intl
all-stage3-bfd: maybe-all-stage3-intl
all-stage4-bfd: maybe-all-stage4-intl
all-stageprofile-bfd: maybe-all-stageprofile-intl
all-stagetrain-bfd: maybe-all-stagetrain-intl
all-stagefeedback-bfd: maybe-all-stagefeedback-intl
all-stageautoprofile-bfd: maybe-all-stageautoprofile-intl
all-stageautofeedback-bfd: maybe-all-stageautofeedback-intl
all-bfd: maybe-all-zlib
all-stage1-bfd: maybe-all-stage1-zlib
all-stage2-bfd: maybe-all-stage2-zlib
all-stage3-bfd: maybe-all-stage3-zlib
all-stage4-bfd: maybe-all-stage4-zlib
all-stageprofile-bfd: maybe-all-stageprofile-zlib
all-stagetrain-bfd: maybe-all-stagetrain-zlib
all-stagefeedback-bfd: maybe-all-stagefeedback-zlib
all-stageautoprofile-bfd: maybe-all-stageautoprofile-zlib
all-stageautofeedback-bfd: maybe-all-stageautofeedback-zlib
configure-opcodes: configure-libiberty
configure-stage1-opcodes: configure-stage1-libiberty
configure-stage2-opcodes: configure-stage2-libiberty
configure-stage3-opcodes: configure-stage3-libiberty
configure-stage4-opcodes: configure-stage4-libiberty
configure-stageprofile-opcodes: configure-stageprofile-libiberty
configure-stagetrain-opcodes: configure-stagetrain-libiberty
configure-stagefeedback-opcodes: configure-stagefeedback-libiberty
configure-stageautoprofile-opcodes: configure-stageautoprofile-libiberty
configure-stageautofeedback-opcodes: configure-stageautofeedback-libiberty
all-opcodes: maybe-all-libiberty
all-stage1-opcodes: maybe-all-stage1-libiberty
all-stage2-opcodes: maybe-all-stage2-libiberty
all-stage3-opcodes: maybe-all-stage3-libiberty
all-stage4-opcodes: maybe-all-stage4-libiberty
all-stageprofile-opcodes: maybe-all-stageprofile-libiberty
all-stagetrain-opcodes: maybe-all-stagetrain-libiberty
all-stagefeedback-opcodes: maybe-all-stagefeedback-libiberty
all-stageautoprofile-opcodes: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-opcodes: maybe-all-stageautofeedback-libiberty
configure-binutils: maybe-configure-intl
configure-stage1-binutils: maybe-configure-stage1-intl
configure-stage2-binutils: maybe-configure-stage2-intl
configure-stage3-binutils: maybe-configure-stage3-intl
configure-stage4-binutils: maybe-configure-stage4-intl
configure-stageprofile-binutils: maybe-configure-stageprofile-intl
configure-stagetrain-binutils: maybe-configure-stagetrain-intl
configure-stagefeedback-binutils: maybe-configure-stagefeedback-intl
configure-stageautoprofile-binutils: maybe-configure-stageautoprofile-intl
configure-stageautofeedback-binutils: maybe-configure-stageautofeedback-intl
all-binutils: maybe-all-libiberty
all-stage1-binutils: maybe-all-stage1-libiberty
all-stage2-binutils: maybe-all-stage2-libiberty
all-stage3-binutils: maybe-all-stage3-libiberty
all-stage4-binutils: maybe-all-stage4-libiberty
all-stageprofile-binutils: maybe-all-stageprofile-libiberty
all-stagetrain-binutils: maybe-all-stagetrain-libiberty
all-stagefeedback-binutils: maybe-all-stagefeedback-libiberty
all-stageautoprofile-binutils: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-binutils: maybe-all-stageautofeedback-libiberty
all-binutils: maybe-all-opcodes
all-stage1-binutils: maybe-all-stage1-opcodes
all-stage2-binutils: maybe-all-stage2-opcodes
all-stage3-binutils: maybe-all-stage3-opcodes
all-stage4-binutils: maybe-all-stage4-opcodes
all-stageprofile-binutils: maybe-all-stageprofile-opcodes
all-stagetrain-binutils: maybe-all-stagetrain-opcodes
all-stagefeedback-binutils: maybe-all-stagefeedback-opcodes
all-stageautoprofile-binutils: maybe-all-stageautoprofile-opcodes
all-stageautofeedback-binutils: maybe-all-stageautofeedback-opcodes
all-binutils: maybe-all-bfd
all-stage1-binutils: maybe-all-stage1-bfd
all-stage2-binutils: maybe-all-stage2-bfd
all-stage3-binutils: maybe-all-stage3-bfd
all-stage4-binutils: maybe-all-stage4-bfd
all-stageprofile-binutils: maybe-all-stageprofile-bfd
all-stagetrain-binutils: maybe-all-stagetrain-bfd
all-stagefeedback-binutils: maybe-all-stagefeedback-bfd
all-stageautoprofile-binutils: maybe-all-stageautoprofile-bfd
all-stageautofeedback-binutils: maybe-all-stageautofeedback-bfd
all-binutils: maybe-all-build-flex
all-stage1-binutils: maybe-all-build-flex
all-stage2-binutils: maybe-all-build-flex
all-stage3-binutils: maybe-all-build-flex
all-stage4-binutils: maybe-all-build-flex
all-stageprofile-binutils: maybe-all-build-flex
all-stagetrain-binutils: maybe-all-build-flex
all-stagefeedback-binutils: maybe-all-build-flex
all-stageautoprofile-binutils: maybe-all-build-flex
all-stageautofeedback-binutils: maybe-all-build-flex
all-binutils: maybe-all-build-bison
all-stage1-binutils: maybe-all-build-bison
all-stage2-binutils: maybe-all-build-bison
all-stage3-binutils: maybe-all-build-bison
all-stage4-binutils: maybe-all-build-bison
all-stageprofile-binutils: maybe-all-build-bison
all-stagetrain-binutils: maybe-all-build-bison
all-stagefeedback-binutils: maybe-all-build-bison
all-stageautoprofile-binutils: maybe-all-build-bison
all-stageautofeedback-binutils: maybe-all-build-bison
all-binutils: maybe-all-intl
all-stage1-binutils: maybe-all-stage1-intl
all-stage2-binutils: maybe-all-stage2-intl
all-stage3-binutils: maybe-all-stage3-intl
all-stage4-binutils: maybe-all-stage4-intl
all-stageprofile-binutils: maybe-all-stageprofile-intl
all-stagetrain-binutils: maybe-all-stagetrain-intl
all-stagefeedback-binutils: maybe-all-stagefeedback-intl
all-stageautoprofile-binutils: maybe-all-stageautoprofile-intl
all-stageautofeedback-binutils: maybe-all-stageautofeedback-intl
all-binutils: maybe-all-gas
all-stage1-binutils: maybe-all-stage1-gas
all-stage2-binutils: maybe-all-stage2-gas
all-stage3-binutils: maybe-all-stage3-gas
all-stage4-binutils: maybe-all-stage4-gas
all-stageprofile-binutils: maybe-all-stageprofile-gas
all-stagetrain-binutils: maybe-all-stagetrain-gas
all-stagefeedback-binutils: maybe-all-stagefeedback-gas
all-stageautoprofile-binutils: maybe-all-stageautoprofile-gas
all-stageautofeedback-binutils: maybe-all-stageautofeedback-gas
all-binutils: maybe-all-libctf
all-stage1-binutils: maybe-all-stage1-libctf
all-stage2-binutils: maybe-all-stage2-libctf
all-stage3-binutils: maybe-all-stage3-libctf
all-stage4-binutils: maybe-all-stage4-libctf
all-stageprofile-binutils: maybe-all-stageprofile-libctf
all-stagetrain-binutils: maybe-all-stagetrain-libctf
all-stagefeedback-binutils: maybe-all-stagefeedback-libctf
all-stageautoprofile-binutils: maybe-all-stageautoprofile-libctf
all-stageautofeedback-binutils: maybe-all-stageautofeedback-libctf
all-ld: maybe-all-libctf
all-stage1-ld: maybe-all-stage1-libctf
all-stage2-ld: maybe-all-stage2-libctf
all-stage3-ld: maybe-all-stage3-libctf
all-stage4-ld: maybe-all-stage4-libctf
all-stageprofile-ld: maybe-all-stageprofile-libctf
all-stagetrain-ld: maybe-all-stagetrain-libctf
all-stagefeedback-ld: maybe-all-stagefeedback-libctf
all-stageautoprofile-ld: maybe-all-stageautoprofile-libctf
all-stageautofeedback-ld: maybe-all-stageautofeedback-libctf
install-binutils: maybe-install-opcodes
install-strip-binutils: maybe-install-strip-opcodes
install-libctf: maybe-install-bfd
install-ld: maybe-install-bfd
install-ld: maybe-install-libctf
install-strip-libctf: maybe-install-strip-bfd
install-strip-ld: maybe-install-strip-bfd
install-strip-ld: maybe-install-strip-libctf
configure-opcodes: configure-bfd
configure-stage1-opcodes: configure-stage1-bfd
configure-stage2-opcodes: configure-stage2-bfd
configure-stage3-opcodes: configure-stage3-bfd
configure-stage4-opcodes: configure-stage4-bfd
configure-stageprofile-opcodes: configure-stageprofile-bfd
configure-stagetrain-opcodes: configure-stagetrain-bfd
configure-stagefeedback-opcodes: configure-stagefeedback-bfd
configure-stageautoprofile-opcodes: configure-stageautoprofile-bfd
configure-stageautofeedback-opcodes: configure-stageautofeedback-bfd
install-opcodes: maybe-install-bfd
install-strip-opcodes: maybe-install-strip-bfd
configure-gas: maybe-configure-intl
configure-stage1-gas: maybe-configure-stage1-intl
configure-stage2-gas: maybe-configure-stage2-intl
configure-stage3-gas: maybe-configure-stage3-intl
configure-stage4-gas: maybe-configure-stage4-intl
configure-stageprofile-gas: maybe-configure-stageprofile-intl
configure-stagetrain-gas: maybe-configure-stagetrain-intl
configure-stagefeedback-gas: maybe-configure-stagefeedback-intl
configure-stageautoprofile-gas: maybe-configure-stageautoprofile-intl
configure-stageautofeedback-gas: maybe-configure-stageautofeedback-intl
all-gas: maybe-all-libiberty
all-stage1-gas: maybe-all-stage1-libiberty
all-stage2-gas: maybe-all-stage2-libiberty
all-stage3-gas: maybe-all-stage3-libiberty
all-stage4-gas: maybe-all-stage4-libiberty
all-stageprofile-gas: maybe-all-stageprofile-libiberty
all-stagetrain-gas: maybe-all-stagetrain-libiberty
all-stagefeedback-gas: maybe-all-stagefeedback-libiberty
all-stageautoprofile-gas: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-gas: maybe-all-stageautofeedback-libiberty
all-gas: maybe-all-opcodes
all-stage1-gas: maybe-all-stage1-opcodes
all-stage2-gas: maybe-all-stage2-opcodes
all-stage3-gas: maybe-all-stage3-opcodes
all-stage4-gas: maybe-all-stage4-opcodes
all-stageprofile-gas: maybe-all-stageprofile-opcodes
all-stagetrain-gas: maybe-all-stagetrain-opcodes
all-stagefeedback-gas: maybe-all-stagefeedback-opcodes
all-stageautoprofile-gas: maybe-all-stageautoprofile-opcodes
all-stageautofeedback-gas: maybe-all-stageautofeedback-opcodes
all-gas: maybe-all-bfd
all-stage1-gas: maybe-all-stage1-bfd
all-stage2-gas: maybe-all-stage2-bfd
all-stage3-gas: maybe-all-stage3-bfd
all-stage4-gas: maybe-all-stage4-bfd
all-stageprofile-gas: maybe-all-stageprofile-bfd
all-stagetrain-gas: maybe-all-stagetrain-bfd
all-stagefeedback-gas: maybe-all-stagefeedback-bfd
all-stageautoprofile-gas: maybe-all-stageautoprofile-bfd
all-stageautofeedback-gas: maybe-all-stageautofeedback-bfd
all-gas: maybe-all-intl
all-stage1-gas: maybe-all-stage1-intl
all-stage2-gas: maybe-all-stage2-intl
all-stage3-gas: maybe-all-stage3-intl
all-stage4-gas: maybe-all-stage4-intl
all-stageprofile-gas: maybe-all-stageprofile-intl
all-stagetrain-gas: maybe-all-stagetrain-intl
all-stagefeedback-gas: maybe-all-stagefeedback-intl
all-stageautoprofile-gas: maybe-all-stageautoprofile-intl
all-stageautofeedback-gas: maybe-all-stageautofeedback-intl
configure-ld: maybe-configure-intl
configure-stage1-ld: maybe-configure-stage1-intl
configure-stage2-ld: maybe-configure-stage2-intl
configure-stage3-ld: maybe-configure-stage3-intl
configure-stage4-ld: maybe-configure-stage4-intl
configure-stageprofile-ld: maybe-configure-stageprofile-intl
configure-stagetrain-ld: maybe-configure-stagetrain-intl
configure-stagefeedback-ld: maybe-configure-stagefeedback-intl
configure-stageautoprofile-ld: maybe-configure-stageautoprofile-intl
configure-stageautofeedback-ld: maybe-configure-stageautofeedback-intl
all-ld: maybe-all-libiberty
all-stage1-ld: maybe-all-stage1-libiberty
all-stage2-ld: maybe-all-stage2-libiberty
all-stage3-ld: maybe-all-stage3-libiberty
all-stage4-ld: maybe-all-stage4-libiberty
all-stageprofile-ld: maybe-all-stageprofile-libiberty
all-stagetrain-ld: maybe-all-stagetrain-libiberty
all-stagefeedback-ld: maybe-all-stagefeedback-libiberty
all-stageautoprofile-ld: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-ld: maybe-all-stageautofeedback-libiberty
all-ld: maybe-all-bfd
all-stage1-ld: maybe-all-stage1-bfd
all-stage2-ld: maybe-all-stage2-bfd
all-stage3-ld: maybe-all-stage3-bfd
all-stage4-ld: maybe-all-stage4-bfd
all-stageprofile-ld: maybe-all-stageprofile-bfd
all-stagetrain-ld: maybe-all-stagetrain-bfd
all-stagefeedback-ld: maybe-all-stagefeedback-bfd
all-stageautoprofile-ld: maybe-all-stageautoprofile-bfd
all-stageautofeedback-ld: maybe-all-stageautofeedback-bfd
all-ld: maybe-all-opcodes
all-stage1-ld: maybe-all-stage1-opcodes
all-stage2-ld: maybe-all-stage2-opcodes
all-stage3-ld: maybe-all-stage3-opcodes
all-stage4-ld: maybe-all-stage4-opcodes
all-stageprofile-ld: maybe-all-stageprofile-opcodes
all-stagetrain-ld: maybe-all-stagetrain-opcodes
all-stagefeedback-ld: maybe-all-stagefeedback-opcodes
all-stageautoprofile-ld: maybe-all-stageautoprofile-opcodes
all-stageautofeedback-ld: maybe-all-stageautofeedback-opcodes
all-ld: maybe-all-build-bison
all-stage1-ld: maybe-all-build-bison
all-stage2-ld: maybe-all-build-bison
all-stage3-ld: maybe-all-build-bison
all-stage4-ld: maybe-all-build-bison
all-stageprofile-ld: maybe-all-build-bison
all-stagetrain-ld: maybe-all-build-bison
all-stagefeedback-ld: maybe-all-build-bison
all-stageautoprofile-ld: maybe-all-build-bison
all-stageautofeedback-ld: maybe-all-build-bison
all-ld: maybe-all-build-flex
all-stage1-ld: maybe-all-build-flex
all-stage2-ld: maybe-all-build-flex
all-stage3-ld: maybe-all-build-flex
all-stage4-ld: maybe-all-build-flex
all-stageprofile-ld: maybe-all-build-flex
all-stagetrain-ld: maybe-all-build-flex
all-stagefeedback-ld: maybe-all-build-flex
all-stageautoprofile-ld: maybe-all-build-flex
all-stageautofeedback-ld: maybe-all-build-flex
all-ld: maybe-all-intl
all-stage1-ld: maybe-all-stage1-intl
all-stage2-ld: maybe-all-stage2-intl
all-stage3-ld: maybe-all-stage3-intl
all-stage4-ld: maybe-all-stage4-intl
all-stageprofile-ld: maybe-all-stageprofile-intl
all-stagetrain-ld: maybe-all-stagetrain-intl
all-stagefeedback-ld: maybe-all-stagefeedback-intl
all-stageautoprofile-ld: maybe-all-stageautoprofile-intl
all-stageautofeedback-ld: maybe-all-stageautofeedback-intl
all-ld: maybe-all-gas
all-stage1-ld: maybe-all-stage1-gas
all-stage2-ld: maybe-all-stage2-gas
all-stage3-ld: maybe-all-stage3-gas
all-stage4-ld: maybe-all-stage4-gas
all-stageprofile-ld: maybe-all-stageprofile-gas
all-stagetrain-ld: maybe-all-stagetrain-gas
all-stagefeedback-ld: maybe-all-stagefeedback-gas
all-stageautoprofile-ld: maybe-all-stageautoprofile-gas
all-stageautofeedback-ld: maybe-all-stageautofeedback-gas
all-ld: maybe-all-binutils
all-stage1-ld: maybe-all-stage1-binutils
all-stage2-ld: maybe-all-stage2-binutils
all-stage3-ld: maybe-all-stage3-binutils
all-stage4-ld: maybe-all-stage4-binutils
all-stageprofile-ld: maybe-all-stageprofile-binutils
all-stagetrain-ld: maybe-all-stagetrain-binutils
all-stagefeedback-ld: maybe-all-stagefeedback-binutils
all-stageautoprofile-ld: maybe-all-stageautoprofile-binutils
all-stageautofeedback-ld: maybe-all-stageautofeedback-binutils
install-ld: maybe-install-gold
install-strip-ld: maybe-install-strip-gold
configure-gold: maybe-configure-intl
configure-stage1-gold: maybe-configure-stage1-intl
configure-stage2-gold: maybe-configure-stage2-intl
configure-stage3-gold: maybe-configure-stage3-intl
configure-stage4-gold: maybe-configure-stage4-intl
configure-stageprofile-gold: maybe-configure-stageprofile-intl
configure-stagetrain-gold: maybe-configure-stagetrain-intl
configure-stagefeedback-gold: maybe-configure-stagefeedback-intl
configure-stageautoprofile-gold: maybe-configure-stageautoprofile-intl
configure-stageautofeedback-gold: maybe-configure-stageautofeedback-intl
all-gold: maybe-all-libiberty
all-stage1-gold: maybe-all-stage1-libiberty
all-stage2-gold: maybe-all-stage2-libiberty
all-stage3-gold: maybe-all-stage3-libiberty
all-stage4-gold: maybe-all-stage4-libiberty
all-stageprofile-gold: maybe-all-stageprofile-libiberty
all-stagetrain-gold: maybe-all-stagetrain-libiberty
all-stagefeedback-gold: maybe-all-stagefeedback-libiberty
all-stageautoprofile-gold: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-gold: maybe-all-stageautofeedback-libiberty
all-gold: maybe-all-intl
all-stage1-gold: maybe-all-stage1-intl
all-stage2-gold: maybe-all-stage2-intl
all-stage3-gold: maybe-all-stage3-intl
all-stage4-gold: maybe-all-stage4-intl
all-stageprofile-gold: maybe-all-stageprofile-intl
all-stagetrain-gold: maybe-all-stagetrain-intl
all-stagefeedback-gold: maybe-all-stagefeedback-intl
all-stageautoprofile-gold: maybe-all-stageautoprofile-intl
all-stageautofeedback-gold: maybe-all-stageautofeedback-intl
all-gold: maybe-all-bfd
all-stage1-gold: maybe-all-stage1-bfd
all-stage2-gold: maybe-all-stage2-bfd
all-stage3-gold: maybe-all-stage3-bfd
all-stage4-gold: maybe-all-stage4-bfd
all-stageprofile-gold: maybe-all-stageprofile-bfd
all-stagetrain-gold: maybe-all-stagetrain-bfd
all-stagefeedback-gold: maybe-all-stagefeedback-bfd
all-stageautoprofile-gold: maybe-all-stageautoprofile-bfd
all-stageautofeedback-gold: maybe-all-stageautofeedback-bfd
all-gold: maybe-all-build-bison
all-stage1-gold: maybe-all-build-bison
all-stage2-gold: maybe-all-build-bison
all-stage3-gold: maybe-all-build-bison
all-stage4-gold: maybe-all-build-bison
all-stageprofile-gold: maybe-all-build-bison
all-stagetrain-gold: maybe-all-build-bison
all-stagefeedback-gold: maybe-all-build-bison
all-stageautoprofile-gold: maybe-all-build-bison
all-stageautofeedback-gold: maybe-all-build-bison
all-gold: maybe-all-gas
all-stage1-gold: maybe-all-stage1-gas
all-stage2-gold: maybe-all-stage2-gas
all-stage3-gold: maybe-all-stage3-gas
all-stage4-gold: maybe-all-stage4-gas
all-stageprofile-gold: maybe-all-stageprofile-gas
all-stagetrain-gold: maybe-all-stagetrain-gas
all-stagefeedback-gold: maybe-all-stagefeedback-gas
all-stageautoprofile-gold: maybe-all-stageautoprofile-gas
all-stageautofeedback-gold: maybe-all-stageautofeedback-gas
check-gold: maybe-all-binutils
check-stage1-gold: maybe-all-stage1-binutils
check-stage2-gold: maybe-all-stage2-binutils
check-stage3-gold: maybe-all-stage3-binutils
check-stage4-gold: maybe-all-stage4-binutils
check-stageprofile-gold: maybe-all-stageprofile-binutils
check-stagetrain-gold: maybe-all-stagetrain-binutils
check-stagefeedback-gold: maybe-all-stagefeedback-binutils
check-stageautoprofile-gold: maybe-all-stageautoprofile-binutils
check-stageautofeedback-gold: maybe-all-stageautofeedback-binutils
check-gold: maybe-all-gas
check-stage1-gold: maybe-all-stage1-gas
check-stage2-gold: maybe-all-stage2-gas
check-stage3-gold: maybe-all-stage3-gas
check-stage4-gold: maybe-all-stage4-gas
check-stageprofile-gold: maybe-all-stageprofile-gas
check-stagetrain-gold: maybe-all-stagetrain-gas
check-stagefeedback-gold: maybe-all-stagefeedback-gas
check-stageautoprofile-gold: maybe-all-stageautoprofile-gas
check-stageautofeedback-gold: maybe-all-stageautofeedback-gas
configure-opcodes: maybe-configure-intl
configure-stage1-opcodes: maybe-configure-stage1-intl
configure-stage2-opcodes: maybe-configure-stage2-intl
configure-stage3-opcodes: maybe-configure-stage3-intl
configure-stage4-opcodes: maybe-configure-stage4-intl
configure-stageprofile-opcodes: maybe-configure-stageprofile-intl
configure-stagetrain-opcodes: maybe-configure-stagetrain-intl
configure-stagefeedback-opcodes: maybe-configure-stagefeedback-intl
configure-stageautoprofile-opcodes: maybe-configure-stageautoprofile-intl
configure-stageautofeedback-opcodes: maybe-configure-stageautofeedback-intl
all-opcodes: maybe-all-bfd
all-stage1-opcodes: maybe-all-stage1-bfd
all-stage2-opcodes: maybe-all-stage2-bfd
all-stage3-opcodes: maybe-all-stage3-bfd
all-stage4-opcodes: maybe-all-stage4-bfd
all-stageprofile-opcodes: maybe-all-stageprofile-bfd
all-stagetrain-opcodes: maybe-all-stagetrain-bfd
all-stagefeedback-opcodes: maybe-all-stagefeedback-bfd
all-stageautoprofile-opcodes: maybe-all-stageautoprofile-bfd
all-stageautofeedback-opcodes: maybe-all-stageautofeedback-bfd
all-opcodes: maybe-all-libiberty
all-stage1-opcodes: maybe-all-stage1-libiberty
all-stage2-opcodes: maybe-all-stage2-libiberty
all-stage3-opcodes: maybe-all-stage3-libiberty
all-stage4-opcodes: maybe-all-stage4-libiberty
all-stageprofile-opcodes: maybe-all-stageprofile-libiberty
all-stagetrain-opcodes: maybe-all-stagetrain-libiberty
all-stagefeedback-opcodes: maybe-all-stagefeedback-libiberty
all-stageautoprofile-opcodes: maybe-all-stageautoprofile-libiberty
all-stageautofeedback-opcodes: maybe-all-stageautofeedback-libiberty
all-opcodes: maybe-all-intl
all-stage1-opcodes: maybe-all-stage1-intl
all-stage2-opcodes: maybe-all-stage2-intl
all-stage3-opcodes: maybe-all-stage3-intl
all-stage4-opcodes: maybe-all-stage4-intl
all-stageprofile-opcodes: maybe-all-stageprofile-intl
all-stagetrain-opcodes: maybe-all-stagetrain-intl
all-stagefeedback-opcodes: maybe-all-stagefeedback-intl
all-stageautoprofile-opcodes: maybe-all-stageautoprofile-intl
all-stageautofeedback-opcodes: maybe-all-stageautofeedback-intl
all-dejagnu: maybe-all-tcl
all-dejagnu: maybe-all-expect
all-dejagnu: maybe-all-tk
configure-expect: maybe-configure-tcl
configure-expect: maybe-configure-tk
all-expect: maybe-all-tcl
all-expect: maybe-all-tk
configure-itcl: maybe-configure-tcl
configure-itcl: maybe-configure-tk
all-itcl: maybe-all-tcl
all-itcl: maybe-all-tk
install-itcl: maybe-install-tcl
install-strip-itcl: maybe-install-strip-tcl
configure-tk: maybe-configure-tcl
all-tk: maybe-all-tcl
all-sid: maybe-all-tcl
all-sid: maybe-all-tk
install-sid: maybe-install-tcl
install-strip-sid: maybe-install-strip-tcl
install-sid: maybe-install-tk
install-strip-sid: maybe-install-strip-tk
configure-sim: maybe-all-gnulib
configure-sim: maybe-all-readline
all-fastjar: maybe-all-build-texinfo
all-libctf: all-libiberty
all-stage1-libctf: all-stage1-libiberty
all-stage2-libctf: all-stage2-libiberty
all-stage3-libctf: all-stage3-libiberty
all-stage4-libctf: all-stage4-libiberty
all-stageprofile-libctf: all-stageprofile-libiberty
all-stagetrain-libctf: all-stagetrain-libiberty
all-stagefeedback-libctf: all-stagefeedback-libiberty
all-stageautoprofile-libctf: all-stageautoprofile-libiberty
all-stageautofeedback-libctf: all-stageautofeedback-libiberty
all-libctf: maybe-all-bfd
all-stage1-libctf: maybe-all-stage1-bfd
all-stage2-libctf: maybe-all-stage2-bfd
all-stage3-libctf: maybe-all-stage3-bfd
all-stage4-libctf: maybe-all-stage4-bfd
all-stageprofile-libctf: maybe-all-stageprofile-bfd
all-stagetrain-libctf: maybe-all-stagetrain-bfd
all-stagefeedback-libctf: maybe-all-stagefeedback-bfd
all-stageautoprofile-libctf: maybe-all-stageautoprofile-bfd
all-stageautofeedback-libctf: maybe-all-stageautofeedback-bfd
all-libctf: maybe-all-zlib
all-stage1-libctf: maybe-all-stage1-zlib
all-stage2-libctf: maybe-all-stage2-zlib
all-stage3-libctf: maybe-all-stage3-zlib
all-stage4-libctf: maybe-all-stage4-zlib
all-stageprofile-libctf: maybe-all-stageprofile-zlib
all-stagetrain-libctf: maybe-all-stagetrain-zlib
all-stagefeedback-libctf: maybe-all-stagefeedback-zlib
all-stageautoprofile-libctf: maybe-all-stageautoprofile-zlib
all-stageautofeedback-libctf: maybe-all-stageautofeedback-zlib
configure-libctf: maybe-all-bfd
configure-stage1-libctf: maybe-all-stage1-bfd
configure-stage2-libctf: maybe-all-stage2-bfd
configure-stage3-libctf: maybe-all-stage3-bfd
configure-stage4-libctf: maybe-all-stage4-bfd
configure-stageprofile-libctf: maybe-all-stageprofile-bfd
configure-stagetrain-libctf: maybe-all-stagetrain-bfd
configure-stagefeedback-libctf: maybe-all-stagefeedback-bfd
configure-stageautoprofile-libctf: maybe-all-stageautoprofile-bfd
configure-stageautofeedback-libctf: maybe-all-stageautofeedback-bfd
configure-libctf: maybe-all-intl
configure-stage1-libctf: maybe-all-stage1-intl
configure-stage2-libctf: maybe-all-stage2-intl
configure-stage3-libctf: maybe-all-stage3-intl
configure-stage4-libctf: maybe-all-stage4-intl
configure-stageprofile-libctf: maybe-all-stageprofile-intl
configure-stagetrain-libctf: maybe-all-stagetrain-intl
configure-stagefeedback-libctf: maybe-all-stagefeedback-intl
configure-stageautoprofile-libctf: maybe-all-stageautoprofile-intl
configure-stageautofeedback-libctf: maybe-all-stageautofeedback-intl
configure-libctf: maybe-all-zlib
configure-stage1-libctf: maybe-all-stage1-zlib
configure-stage2-libctf: maybe-all-stage2-zlib
configure-stage3-libctf: maybe-all-stage3-zlib
configure-stage4-libctf: maybe-all-stage4-zlib
configure-stageprofile-libctf: maybe-all-stageprofile-zlib
configure-stagetrain-libctf: maybe-all-stagetrain-zlib
configure-stagefeedback-libctf: maybe-all-stagefeedback-zlib
configure-stageautoprofile-libctf: maybe-all-stageautoprofile-zlib
configure-stageautofeedback-libctf: maybe-all-stageautofeedback-zlib
configure-libctf: maybe-all-libiconv
configure-stage1-libctf: maybe-all-stage1-libiconv
configure-stage2-libctf: maybe-all-stage2-libiconv
configure-stage3-libctf: maybe-all-stage3-libiconv
configure-stage4-libctf: maybe-all-stage4-libiconv
configure-stageprofile-libctf: maybe-all-stageprofile-libiconv
configure-stagetrain-libctf: maybe-all-stagetrain-libiconv
configure-stagefeedback-libctf: maybe-all-stagefeedback-libiconv
configure-stageautoprofile-libctf: maybe-all-stageautoprofile-libiconv
configure-stageautofeedback-libctf: maybe-all-stageautofeedback-libiconv
check-libctf: maybe-all-ld
check-stage1-libctf: maybe-all-stage1-ld
check-stage2-libctf: maybe-all-stage2-ld
check-stage3-libctf: maybe-all-stage3-ld
check-stage4-libctf: maybe-all-stage4-ld
check-stageprofile-libctf: maybe-all-stageprofile-ld
check-stagetrain-libctf: maybe-all-stagetrain-ld
check-stagefeedback-libctf: maybe-all-stagefeedback-ld
check-stageautoprofile-libctf: maybe-all-stageautoprofile-ld
check-stageautofeedback-libctf: maybe-all-stageautofeedback-ld
distclean-gnulib: maybe-distclean-gdb
distclean-gnulib: maybe-distclean-gdbserver
all-bison: maybe-all-build-texinfo
all-flex: maybe-all-build-bison
all-flex: maybe-all-m4
all-flex: maybe-all-build-texinfo
all-m4: maybe-all-build-texinfo
configure-target-libgo: maybe-configure-target-libffi
all-target-libgo: maybe-all-target-libffi
configure-target-libphobos: maybe-configure-target-libbacktrace
configure-stage1-target-libphobos: maybe-configure-stage1-target-libbacktrace
configure-stage2-target-libphobos: maybe-configure-stage2-target-libbacktrace
configure-stage3-target-libphobos: maybe-configure-stage3-target-libbacktrace
configure-stage4-target-libphobos: maybe-configure-stage4-target-libbacktrace
configure-stageprofile-target-libphobos: maybe-configure-stageprofile-target-libbacktrace
configure-stagetrain-target-libphobos: maybe-configure-stagetrain-target-libbacktrace
configure-stagefeedback-target-libphobos: maybe-configure-stagefeedback-target-libbacktrace
configure-stageautoprofile-target-libphobos: maybe-configure-stageautoprofile-target-libbacktrace
configure-stageautofeedback-target-libphobos: maybe-configure-stageautofeedback-target-libbacktrace
configure-target-libphobos: maybe-configure-target-zlib
configure-stage1-target-libphobos: maybe-configure-stage1-target-zlib
configure-stage2-target-libphobos: maybe-configure-stage2-target-zlib
configure-stage3-target-libphobos: maybe-configure-stage3-target-zlib
configure-stage4-target-libphobos: maybe-configure-stage4-target-zlib
configure-stageprofile-target-libphobos: maybe-configure-stageprofile-target-zlib
configure-stagetrain-target-libphobos: maybe-configure-stagetrain-target-zlib
configure-stagefeedback-target-libphobos: maybe-configure-stagefeedback-target-zlib
configure-stageautoprofile-target-libphobos: maybe-configure-stageautoprofile-target-zlib
configure-stageautofeedback-target-libphobos: maybe-configure-stageautofeedback-target-zlib
all-target-libphobos: maybe-all-target-libbacktrace
all-stage1-target-libphobos: maybe-all-stage1-target-libbacktrace
all-stage2-target-libphobos: maybe-all-stage2-target-libbacktrace
all-stage3-target-libphobos: maybe-all-stage3-target-libbacktrace
all-stage4-target-libphobos: maybe-all-stage4-target-libbacktrace
all-stageprofile-target-libphobos: maybe-all-stageprofile-target-libbacktrace
all-stagetrain-target-libphobos: maybe-all-stagetrain-target-libbacktrace
all-stagefeedback-target-libphobos: maybe-all-stagefeedback-target-libbacktrace
all-stageautoprofile-target-libphobos: maybe-all-stageautoprofile-target-libbacktrace
all-stageautofeedback-target-libphobos: maybe-all-stageautofeedback-target-libbacktrace
all-target-libphobos: maybe-all-target-zlib
all-stage1-target-libphobos: maybe-all-stage1-target-zlib
all-stage2-target-libphobos: maybe-all-stage2-target-zlib
all-stage3-target-libphobos: maybe-all-stage3-target-zlib
all-stage4-target-libphobos: maybe-all-stage4-target-zlib
all-stageprofile-target-libphobos: maybe-all-stageprofile-target-zlib
all-stagetrain-target-libphobos: maybe-all-stagetrain-target-zlib
all-stagefeedback-target-libphobos: maybe-all-stagefeedback-target-zlib
all-stageautoprofile-target-libphobos: maybe-all-stageautoprofile-target-zlib
all-stageautofeedback-target-libphobos: maybe-all-stageautofeedback-target-zlib
all-target-libphobos: maybe-all-target-libatomic
all-stage1-target-libphobos: maybe-all-stage1-target-libatomic
all-stage2-target-libphobos: maybe-all-stage2-target-libatomic
all-stage3-target-libphobos: maybe-all-stage3-target-libatomic
all-stage4-target-libphobos: maybe-all-stage4-target-libatomic
all-stageprofile-target-libphobos: maybe-all-stageprofile-target-libatomic
all-stagetrain-target-libphobos: maybe-all-stagetrain-target-libatomic
all-stagefeedback-target-libphobos: maybe-all-stagefeedback-target-libatomic
all-stageautoprofile-target-libphobos: maybe-all-stageautoprofile-target-libatomic
all-stageautofeedback-target-libphobos: maybe-all-stageautofeedback-target-libatomic
configure-target-libstdc++-v3: maybe-configure-target-libgomp
configure-stage1-target-libstdc++-v3: maybe-configure-stage1-target-libgomp
configure-stage2-target-libstdc++-v3: maybe-configure-stage2-target-libgomp
configure-stage3-target-libstdc++-v3: maybe-configure-stage3-target-libgomp
configure-stage4-target-libstdc++-v3: maybe-configure-stage4-target-libgomp
configure-stageprofile-target-libstdc++-v3: maybe-configure-stageprofile-target-libgomp
configure-stagetrain-target-libstdc++-v3: maybe-configure-stagetrain-target-libgomp
configure-stagefeedback-target-libstdc++-v3: maybe-configure-stagefeedback-target-libgomp
configure-stageautoprofile-target-libstdc++-v3: maybe-configure-stageautoprofile-target-libgomp
configure-stageautofeedback-target-libstdc++-v3: maybe-configure-stageautofeedback-target-libgomp
configure-target-libsanitizer: maybe-all-target-libstdc++-v3
configure-stage1-target-libsanitizer: maybe-all-stage1-target-libstdc++-v3
configure-stage2-target-libsanitizer: maybe-all-stage2-target-libstdc++-v3
configure-stage3-target-libsanitizer: maybe-all-stage3-target-libstdc++-v3
configure-stage4-target-libsanitizer: maybe-all-stage4-target-libstdc++-v3
configure-stageprofile-target-libsanitizer: maybe-all-stageprofile-target-libstdc++-v3
configure-stagetrain-target-libsanitizer: maybe-all-stagetrain-target-libstdc++-v3
configure-stagefeedback-target-libsanitizer: maybe-all-stagefeedback-target-libstdc++-v3
configure-stageautoprofile-target-libsanitizer: maybe-all-stageautoprofile-target-libstdc++-v3
configure-stageautofeedback-target-libsanitizer: maybe-all-stageautofeedback-target-libstdc++-v3
configure-target-libvtv: maybe-all-target-libstdc++-v3
configure-stage1-target-libvtv: maybe-all-stage1-target-libstdc++-v3
configure-stage2-target-libvtv: maybe-all-stage2-target-libstdc++-v3
configure-stage3-target-libvtv: maybe-all-stage3-target-libstdc++-v3
configure-stage4-target-libvtv: maybe-all-stage4-target-libstdc++-v3
configure-stageprofile-target-libvtv: maybe-all-stageprofile-target-libstdc++-v3
configure-stagetrain-target-libvtv: maybe-all-stagetrain-target-libstdc++-v3
configure-stagefeedback-target-libvtv: maybe-all-stagefeedback-target-libstdc++-v3
configure-stageautoprofile-target-libvtv: maybe-all-stageautoprofile-target-libstdc++-v3
configure-stageautofeedback-target-libvtv: maybe-all-stageautofeedback-target-libstdc++-v3
all-target-libstdc++-v3: maybe-configure-target-libgomp
all-stage1-target-libstdc++-v3: maybe-configure-stage1-target-libgomp
all-stage2-target-libstdc++-v3: maybe-configure-stage2-target-libgomp
all-stage3-target-libstdc++-v3: maybe-configure-stage3-target-libgomp
all-stage4-target-libstdc++-v3: maybe-configure-stage4-target-libgomp
all-stageprofile-target-libstdc++-v3: maybe-configure-stageprofile-target-libgomp
all-stagetrain-target-libstdc++-v3: maybe-configure-stagetrain-target-libgomp
all-stagefeedback-target-libstdc++-v3: maybe-configure-stagefeedback-target-libgomp
all-stageautoprofile-target-libstdc++-v3: maybe-configure-stageautoprofile-target-libgomp
all-stageautofeedback-target-libstdc++-v3: maybe-configure-stageautofeedback-target-libgomp
install-target-libgo: maybe-install-target-libatomic
install-target-libgfortran: maybe-install-target-libquadmath
install-target-libgfortran: maybe-install-target-libgcc
install-target-libphobos: maybe-install-target-libatomic
install-target-libsanitizer: maybe-install-target-libstdc++-v3
install-target-libsanitizer: maybe-install-target-libgcc
install-target-libvtv: maybe-install-target-libstdc++-v3
install-target-libvtv: maybe-install-target-libgcc
install-target-liboffloadmic: maybe-install-target-libstdc++-v3
install-target-liboffloadmic: maybe-install-target-libgcc
install-target-libitm: maybe-install-target-libgcc
install-target-libobjc: maybe-install-target-libgcc
install-target-libstdc++-v3: maybe-install-target-libgcc
all-target-libgloss: maybe-all-target-newlib
all-target-winsup: maybe-all-target-libtermcap
configure-target-libgfortran: maybe-all-target-libquadmath



all-gnattools: maybe-all-target-libstdc++-v3
configure-libcc1: maybe-configure-gcc
all-libcc1: maybe-all-gcc
all-c++tools: maybe-all-gcc
all-utils: maybe-all-libiberty
configure-gdb: maybe-all-intl
configure-gdb: maybe-all-bfd
configure-gdb: maybe-all-libiconv
all-gdb: maybe-all-libiberty
all-gdb: maybe-all-libiconv
all-gdb: maybe-all-opcodes
all-gdb: maybe-all-libdecnumber
all-gdb: maybe-all-libctf
all-gdb: maybe-all-libbacktrace
all-gdbserver: maybe-all-libiberty
configure-gdbsupport: maybe-configure-intl
all-gdbsupport: maybe-all-intl
configure-gprof: maybe-configure-intl
all-gprof: maybe-all-libiberty
all-gprof: maybe-all-bfd
all-gprof: maybe-all-opcodes
all-gprof: maybe-all-intl
all-gprof: maybe-all-gas
all-sid: maybe-all-libiberty
all-sid: maybe-all-bfd
all-sid: maybe-all-opcodes
configure-sim: maybe-configure-intl
all-sim: maybe-all-intl
all-sim: maybe-all-libiberty
all-sim: maybe-all-bfd
all-sim: maybe-all-opcodes
all-fastjar: maybe-all-zlib
all-fastjar: maybe-all-libiberty
all-bison: maybe-all-intl
all-flex: maybe-all-intl
all-m4: maybe-all-intl
configure-target-fastjar: maybe-configure-target-zlib
all-target-fastjar: maybe-all-target-zlib
configure-target-libgo: maybe-all-target-libstdc++-v3
all-target-libgo: maybe-all-target-libbacktrace
all-target-libgo: maybe-all-target-libatomic
configure-target-liboffloadmic: maybe-configure-target-libgomp
all-target-liboffloadmic: maybe-all-target-libgomp
configure-target-newlib: maybe-all-binutils
configure-target-newlib: maybe-all-ld
configure-target-libgfortran: maybe-all-target-libbacktrace

# Dependencies for target modules on other target modules are
# described by lang_env_dependencies; the defaults apply to anything
# not mentioned there.



configure-target-libstdc++-v3: maybe-all-target-libgcc
configure-target-libsanitizer: maybe-all-target-libgcc
configure-target-libvtv: maybe-all-target-libgcc
configure-target-liboffloadmic: maybe-all-target-libgcc
configure-target-libssp: maybe-all-target-libgcc
configure-target-newlib: maybe-all-target-libgcc
configure-target-libbacktrace: maybe-all-target-libgcc
configure-target-libquadmath: maybe-all-target-libgcc
configure-target-libgfortran: maybe-all-target-libgcc
configure-target-libobjc: maybe-all-target-libgcc
configure-target-libgo: maybe-all-target-libgcc
configure-target-libphobos: maybe-all-target-libgcc
configure-target-libtermcap: maybe-all-target-libgcc
configure-target-winsup: maybe-all-target-libgcc
configure-target-libgloss: maybe-all-target-libgcc
configure-target-libffi: maybe-all-target-libgcc
configure-target-zlib: maybe-all-target-libgcc
configure-target-rda: maybe-all-target-libgcc
configure-target-libada: maybe-all-target-libgcc
configure-target-libgomp: maybe-all-target-libgcc
configure-target-libitm: maybe-all-target-libgcc
configure-target-libatomic: maybe-all-target-libgcc


configure-target-libstdc++-v3: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libsanitizer: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libvtv: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-liboffloadmic: maybe-all-target-newlib maybe-all-target-libgloss
configure-target-liboffloadmic: maybe-all-target-libstdc++-v3

configure-target-libssp: maybe-all-target-newlib maybe-all-target-libgloss



configure-target-libbacktrace: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libquadmath: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libgfortran: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libobjc: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libgo: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libphobos: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libtermcap: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-winsup: maybe-all-target-newlib maybe-all-target-libgloss


configure-target-libffi: maybe-all-target-newlib maybe-all-target-libgloss
configure-target-libffi: maybe-all-target-libstdc++-v3

configure-target-zlib: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-rda: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libada: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libgomp: maybe-all-target-newlib maybe-all-target-libgloss

configure-target-libitm: maybe-all-target-newlib maybe-all-target-libgloss
configure-target-libitm: maybe-all-target-libstdc++-v3

configure-target-libatomic: maybe-all-target-newlib maybe-all-target-libgloss


CONFIGURE_GDB_TK = 
GDB_TK = 
INSTALL_GDB_TK = 
configure-gdb: $(CONFIGURE_GDB_TK)
all-gdb: $(gdbnlmrequirements) $(GDB_TK)
install-gdb: $(INSTALL_GDB_TK)

# Serialization dependencies.  Host configures don't work well in parallel to
# each other, due to contention over config.cache.  Target configures and 
# build configures are similar.
# serdep.tmp

# --------------------------------
# Regenerating top level configury
# --------------------------------

# Rebuilding Makefile.in, using autogen.
AUTOGEN = autogen
$(srcdir)/Makefile.in: # $(srcdir)/Makefile.tpl $(srcdir)/Makefile.def
	cd $(srcdir) && $(AUTOGEN) Makefile.def

# Rebuilding Makefile.
Makefile: $(srcdir)/Makefile.in config.status
	CONFIG_FILES=$@ CONFIG_HEADERS= $(SHELL) ./config.status

config.status: configure
	CONFIG_SHELL="$(SHELL)" $(SHELL) ./config.status --recheck

# Rebuilding configure.
AUTOCONF = autoconf
$(srcdir)/configure: # $(srcdir)/configure.ac $(srcdir)/config/acx.m4 \
	$(srcdir)/config/override.m4 $(srcdir)/config/proginstall.m4 \
	$(srcdir)/config/elf.m4 $(srcdir)/config/isl.m4 \
	$(srcdir)/libtool.m4 $(srcdir)/ltoptions.m4 $(srcdir)/ltsugar.m4 \
	$(srcdir)/ltversion.m4 $(srcdir)/lt~obsolete.m4
	cd $(srcdir) && $(AUTOCONF)

# ------------------------------
# Special directives to GNU Make
# ------------------------------

# Don't pass command-line variables to submakes.
.NOEXPORT:
MAKEOVERRIDES=

# end of Makefile.in