# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

BBCrossBuild (`bbxb`) is a pure-Bash framework that cross-compiles whole Linux systems (LFS-style root filesystems, kernels, disk images) from declarative `.prj` project files and `.pkg` package recipes. There is no build system, no compiled code and no unit-test suite: everything is Bash sourced into one process. The README is the reference for every `PKG_*` / `CONF_*` package parameter and every library function signature; do not duplicate it here, read it when writing a recipe.

## Commands

The framework only runs on Linux with sudo, loop devices and `qemu-user-static`. This checkout lives inside WSL (`FedoraLinux-44`); run `bbxb` and `git` from inside WSL. From the Windows side git refuses the UNC path with "dubious ownership", so use `wsl -d FedoraLinux-44 -- git -C ~/git/bbcrossbuild ...`.

```bash
# One-time host setup and configuration
utilities/bootstrap.fedora            # or bootstrap.ubuntu / bootstrap.aws
cp configurations/bbxb.conf bbxb.conf # README mentions bbxb.conf.default; that file does not exist
cp configurations/lfs.conf projects/lfs.conf   # optional per-project settings (gitignored)

# Build a project for a platform (project = projects/<name>.prj, platform = platforms/<name>.conf)
./bbxb lfs rpi3-aarch64
DATA_PATH=~/.bbxb TOOLCHAIN=llvm ./bbxb lfs generic-x64   # any setenv/bbxb.conf variable can be overridden from the environment

# Smoke test: bootstraps a toolchain and a handful of packages for gnu+llvm on generic-x64, rpi, rpi3-aarch64.
# It writes projects/test.prj, uses ~/.bbxb_test as DATA_PATH and takes hours.
utilities/bbxb_test [clean-start|clean-platform]

# Test a single package: projects/test*.prj is gitignored, so write a throwaway project
cat > projects/test-zlib.prj <<'EOF'
build lfs/create-base-fs_1.0
setup_full_toolchain --with-gnu-install
build --force --keep_builddir lfs/zlib
EOF
./bbxb test-zlib generic-x64
# With --keep_builddir the build dir keeps recipe.source, environment.source, runprebuild.sh, runpostbuild.sh: re-runnable by hand

# Containers (image name derives from the git branch: development -> bbcrossbuild-devel, master -> bbcrossbuild-latest)
utilities/container/build.sh [base]
utilities/container/run.sh            # privileged, mounts HOST_DATA_PATH at /mnt/bbcrossbuild/datadir

# Regenerate the branch-tracking patches for gcc/binutils/glibc/gdb under packages/lfs/<pkg>/patches/ and write packages/lfs/<pkg>/variants/version/<ver>/package.env
utilities/update_patches gcc 14.2.0
# Check the package directories (layout, variants tree, bash -n, shellcheck, removed variables, BUILD_PROCESS, PATCHES and PKG_DEPS resolution)
utilities/pkg_lint [generic-x64] [packages/lfs/gcc ...]
# See what a build would get: selected variants, effective scripts, resolved variables (-d: declare lines for diffing)
utilities/pkg_show [-p rpi3-aarch64] [-t llvm] [-d] lfs/systemd:bootstrap lfs/glibc:stage1

# Lint: the sources carry `# shellcheck disable=` directives, so shellcheck is the expected linter
shellcheck -x bbxb core.functions build.functions toolchain.functions images.functions project.functions data.functions
```

Where things land (`DATA_PATH` defaults to `/mnt/bbcrossbuild/datadir`; the config template switches it to `~/.bbxb`):

| Path under `DATA_PATH` | Content |
| --- | --- |
| `downloads/` | Download cache keyed by URL md5, index in `url2file.map` |
| `toolchain/` | Global native toolchain shared by every project (`:native` builds) |
| `<project>/sources/` | Extracted sources, shared across platforms of a project |
| `<project>/<platform>/logs/<pkg>.log` | Full log of one package build; the console only prints one line per step |
| `<project>/<platform>/status/<pkg>` | md5 of the whole recipe directory at build time; delete it or use `build --force` to rebuild |
| `<project>/<platform>/binaries/` | The target sysroot (`BIN_PATH`), where every target package is rsync'd |
| `<project>/<platform>/toolchain/` | Per-platform cross toolchain (`:cross` builds) |
| `<project>/<platform>/builds/`, `packages/`, `diskimages/`, `distos/` | Build dirs, staging dirs, loop-mounted images, downloaded distro image |

## Architecture

### Sourcing chain

`bbxb <project> <platform>` sources, in order: `seterr` (error codes), `core.functions`, optional `bbxb.conf`, `platforms/<platform>.conf`, `setenv` (all path and version defaults, computed from what was set so far), then `build.functions`, `project.functions`, `toolchain.functions`, `images.functions`, `data.functions`, and finally `projects/<project>.prj` itself. A project file is therefore ordinary Bash executed with every library function and variable in scope: it sets policy variables (`TOOLCHAIN`, `LTOENABLE`, `BUILD_LIBSTATIC`, versions), calls `setup_full_toolchain`, then calls `build`, image and chroot functions in sequence.

Precedence for a setting: environment variable > `bbxb.conf` > platform `.conf` > `setenv` default, and a `.prj` can overwrite any of them before the first `build`.

The script runs with `set -E -o pipefail` and an ERR trap: any non-zero command aborts the whole run after `unmount_tag --all`. Commands that may legitimately fail need `|| true`. SIGINT also unmounts everything.

### Platforms

`platforms/*.conf` define the target triple (`HOS`, `HM`, `HLIBC` combine into `HARCH`, e.g. `aarch64-linux-gnu`), compiler tuning (`HMARCH`, `HMCPU`, `HMFPU`, `HMFLOATABI`, `HMARCH_RUST`), kernel settings (`KERNEL_ARCH`, `KERNEL_DEFCONFIG`, `KERNEL_IMAGE`, `KERNEL_NAME`, `KERNEL_DTBS`) and QEMU settings used by `utilities/qemu_cmdgen`. `HARCH_LIB=64` selects `lib64`; leaving it empty with `MULTIARCH=1` (the default) selects Debian-style `lib/<triple>` multiarch directories.

### The `build` function (build.functions)

`build [opts] <dir>/<name>[:<target>]` is the core primitive. It runs in a subshell, unsets every recipe variable, computes the install prefixes for the target, then sources `packages/<dir>/<name>/package.env` (`RECIPE_FILENAME` in `setenv`; `PKG_RECIPEPATH` is the recipe directory). Consequently:

- A package is a directory: `package.env` (variable assignments common to every build, Bash evaluated with `PKG_TARGET`, `TOOLCHAIN`, `HARCH`, `HM`, `PLATFORM_NAME`, `INSTALL_*`, `GCC_VER` etc. already set), plus optional `prebuild.sh`, `postbuild.sh`, `build.sh` (`BUILD_PROCESS=custom`), `postinstall.sh`, `files/`, `patches/` and `variants/`. `packages/template/` documents all of it; `utilities/pkg_lint` checks it.
- `package.env` is the default build and nothing in it needs a `case`: what differs for a build goes into `variants/<axis>/<value>/`, a directory with the same layout as the recipe whose `package.env` is sourced on top of the recipe one when its selector matches (`recipe_variants` / `apply_recipe_variants` in `build.functions`). Axes, in application order: `target/` (`native`, `cross`, `sysroot` for anything else, then `default` or the `:<target>` name), `toolchain/gnu|llvm` (the toolchain the package is really built with), `arch/<HM>`, `platform/<PLATFORM_NAME>`, `version/<PKG_VER>`, `option/<name>` and `option/<name>=<value>` (selected by `WITH_<NAME>`, defaulted in `package.env` as `WITH_X=${WITH_X:-1}`); nested directories are conjunctions in that same order, applied after the single ones by depth; `a,b` lists values; there is no "other" (the default is the recipe itself). A variant replaces (`=`) or extends (`+=`): a target that must not have a default dependency restates `PKG_DEPS`, a large shared part stays in a recipe variable both compose from (`SYSTEMD_COMMON_FLAGS`), a default a variant overrides is used through single quotes and expanded at run time (`OPENSSL_TARGET`). A script in a selected variant replaces the recipe one (`recipe_script`), `PATCHES` entries are looked up in the variant `patches/` first (`recipe_patch`), `PKG_VARIANTS` records the selection. See `packages/lfs/glibc` (targets, versions, options), `packages/lfs/systemd` (bootstrap, arch conjunction), `packages/lfs/openssl`. `utilities/pkg_show <group>/<name>[:target]` prints the resolution; `pkg_lint` warns about any `case`/`if` left in a `package.env` and rejects an `other` directory.
- The package name and its default target are `PKG_FULLNAME = <name><PKG_SUFFIX>_<PKG_VER>`. Directories like `rpi-kernel_6.12` or `camilladsp_1` carry the major version in the name and complete it with `PKG_SUFFIX`.
- `PKG_DEPS` are built recursively first. A dependency written as `lfs/bison:native` builds into the global toolchain; `:cross` builds into the per-platform toolchain; no suffix builds for the target. Native and cross parents propagate their target to their own dependencies.
- Three targets, three prefixes: `native` installs into `GLOBAL_TOOLCHAIN_PATH` (requires `PKG_CHECK`, never records status), `cross` installs into `TOOLCHAIN_PATH`, `target` (default) installs into a staging dir `PKG_PKGPATH`, has `.la` files stripped, is packed by `create_sfx_package` into `<platform>/packages/<fullname>.sfx` (a self-extracting installer with `--with-dev`, `--with-conf`, `--dest` options) and rsync'd into `BIN_PATH`.
- Status is the md5 of the whole recipe directory (`recipe_checksum`: names, symlink targets and contents, `*.bak`/`*.orig`/`*.rej` excluded). Editing the recipe, a script, a static file or a patch automatically invalidates it; `PKG_CHECK="<command>"` replaces the status check with a probe. `--temporary`, `--no_save_status`, `--force`, `--keep_builddir`, `--toolchain gnu|llvm` are the useful flags.
- `BUILD_PROCESS` is called as a function by name, so the valid values are the function names in `build.functions`: `configmake`, `cmakebuild`, `mesonninja`, `cargobuild`, `simplemake`, `pythonbuild`, `perlmodule`, `kernelbuild`, `kernelmodbuild`, `custom` (runs `PKG_BUILDSCRIPT`), `downloadonly`, `none` (only pre/post scripts). The README calls the custom one `custombuild`; the real name is `custom`.
- `prebuild.sh` (cwd `PKG_SRCPATH`, `set -x`, no `-e`), `postbuild.sh` (cwd `PKG_BLDPATH`, `set -ex`) and `build.sh` (`bash -ex`) are sourced by generated runners that first source `recipe.source` (`create_recipe_source`: a `declare -p` snapshot of every ALL_CAPS variable visible to `package.env`, Bash internals, session variables and the names owned by `environment.source` excluded) and then `environment.source` (`SYSROOT`, `CC`, `CFLAGS`, `PATH`, `PKG_CONFIG_*`). Inside the scripts every variable is therefore a plain `${VAR}`; the old `\${VAR}` escaping convention is gone. Lowercase names are never exported (they are framework loop variables or placeholders such as `${libdir}` in `.pc` heredocs). The same `recipe.source` is sourced by `runconfig.sh`/`runmake.sh`, so a single-quoted `CONF_FLAGS='--with-sysroot=${SYSROOT}'` is expanded at run time.
- `postinstall.sh` is not run at build time. It is copied to `postinst_scripts/<PKG_POSTINSTALL_PRIO>_<name>` inside the sysroot behind a header of image-safe values (`INSTALL_*`, `PKG_NAME`, `PKG_VER`, `PKG_FULLNAME`, `PKG_TARGET`, `HARCH`, `HM`, `HOS`, `HLIBC`, `HARCH_LIB`, `PLATFORM_NAME`, `TOOLCHAIN`), ignored for native/cross builds, and executed later inside the chroot by `run_postinstall_scripts <tag>`.
- `PATCHES` is comma-separated (the loop sets `IFS=,`) and applied in order, each entry either a file under a `patches/` directory of the recipe (selected variants first) or a URL; `PATCHDEB` pulls a Debian source package and applies its `debian/patches/series`. `toolchain.functions` applies `packages/lfs/{gcc,binutils}/patches/<pkg>_<ver>.patch` (symlinks kept by `update_patches`) to the raw toolchain sources.

`setbuildenv`, `settcenv` and `create_environment_source` (all in `build.functions`) compute the compiler, flag and pkg-config environment for the three targets; `setllvmpollyenv` adds Polly flags. Look there first when a package picks up the wrong sysroot, linker or `PKG_CONFIG_LIBDIR`.

### Toolchain bootstrap (toolchain.functions)

`setup_full_toolchain` runs, in order: `setup_rust`, then `lfs/sccache:native` (started as a server and installed as `CCWRAPPER` for everything that follows), make, autotools, pkgconf (native and cross), bison, cmake, `setup_binutils`, `setup_gcc` (host compiler plus target libraries), the toolchain wrapper, ninja, `setup_llvm` when `--with-llvm` is passed or `TOOLCHAIN=llvm`, a native Python and meson, and finally the cross Python only with `--with-python`. Most steps are ordinary `build ...:native` / `:cross` calls on `packages/lfs/*.pkg` recipes. Versions come from `setenv` (`BINUTILS_VER`, `GCC_VER`, `LLVM_VER`, `PYTHON_VER`, `KERNEL_VER`, `GLIBC_VER`, autotools versions). Patches for gcc, binutils, glibc and gdb are release-branch diffs named `packages/lfs/<pkg>/patches/<pkg>_<ver>+<shortsha>.patch` with a `<pkg>_<ver>.patch` symlink, generated by `utilities/update_patches`; adding a new toolchain version means running that script, which also writes `packages/lfs/<pkg>/variants/version/<ver>/package.env` (the `PATCHES` line; an unknown version builds unpatched). `PKG_VER` of these recipes is the plain version: the patch content is part of the recipe checksum. `build lfs/gcc:binaries` builds only the host programs (`lfs.prj` does that for the development image).

### Images and chroot (images.functions)

`create_image` / `mount_tag` / `unmount_tag` manage loop-mounted disk images under `<platform>/diskimages`; `mount_tag --url` also downloads a vendor image (the moode project mounts a Raspberry Pi OS image as `distos`). `inject_into_mount_tag` copies the sysroot in, `run_on_root_dir` chroots with qemu-user-static, `unmount_tag --finalize` produces a `.dd` file. All of this needs root, which is why the container runs `--privileged` and why the ERR trap unmounts on failure.

### Projects and packages layout

- `projects/*.prj`: `lfs.prj` is the full reference project (toolchain, kernel, ~100 packages, image creation, QEMU command generation). `librespot.prj` and `rpi-kernel.prj` are minimal examples. `projects/*.conf` and `projects/test*.prj` are gitignored user files.
- `packages/<group>/<name>/`: `lfs/` (BLFS-style recipes, the bulk), `raspberrypi/`, `moode/`, `python/`, `perl/`, `firmwares/`, `fonts/`, `microsoft/` (WSL kernel). `packages/template/` is the annotated starting point for a new recipe.
- `configurations/`: templates for `bbxb.conf` and `lfs.conf`.
- `utilities/`: host helpers (`deptool`, `crossgdb`, `crossldd`, `qemu_cmdgen`, `fs_manager`, `aws_create_infrastructure`, bootstrap scripts, container scripts); `pkg_lint` and `pkg_show` share `utilities/pkgtools.functions`, which sources the framework with the build steps stubbed out and resolves a recipe through `set_target_prefixes` and `apply_recipe_variants`, the same code `build` uses.

## Conventions

- Bash is indented with tabs; functions are declared `function name () {`; nested helper functions are defined inside their parent. Keep `# shellcheck disable=SCxxxx` / `# shellcheck source=/dev/null` directives on lines that need them.
- Every external command inside a library function goes through `run_cmd` (with `-s` for sudo) so it is logged via `log_buffer` into the package log; do not print progress with bare `echo` inside build steps, the console line is written by `build` itself.
- New optional recipe variables must also be added to the `unset` list at the top of `build` in `build.functions`, otherwise they leak from one package into the next.
- Branching: work happens on `development`; `master` holds releases tagged `X.Y.Z`. The GitHub Action builds and pushes the Docker image on pushes to `development` and on version tags.
