# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

BBCrossBuild (`bbxb`) is a pure-Bash framework that cross-compiles whole Linux systems (LFS-style root filesystems, kernels, disk images) from declarative `.prj` project files and `.pkg` package recipes. There is no build system and no compiled code: everything is Bash sourced into one process. The only tests are the bats suite under `tests/` (pure functions on fixture recipes, no build) and the hour-long smoke build `utilities/bbxb_test`. The README is the reference for every `PKG_*` / `CONF_*` package parameter and every library function signature; do not duplicate it here, read it when writing a recipe.

## Commands

The framework only runs on Linux with sudo, loop devices and `qemu-user-static`. This checkout lives inside WSL (`FedoraLinux-44`); run `bbxb` and `git` from inside WSL. From the Windows side git refuses the UNC path with "dubious ownership", so use `wsl -d FedoraLinux-44 -- git -C ~/git/bbcrossbuild ...`.

```bash
# The package groups are git submodules (packages/<group> -> repository packages-<group>, URLs relative to origin)
git clone --recurse-submodules https://github.com/badbat75/bbcrossbuild.git   # or, in a checkout: git submodule update --init
# A recipe change is committed inside packages/<group> (its own repository, branch main), then the new
# submodule commit is committed here: git -C packages/lfs commit ...; git add packages/lfs; git commit

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

# Regenerate the branch-tracking patches for gcc/binutils/glibc/gdb under packages/lfs/<pkg>/variants/version/<ver>/patches/
utilities/update_patches gcc 14.2.0
# Check the package directories (layout, variants tree, patches/ content, bash -n, shellcheck, removed variables, BUILD_PROCESS and PKG_DEPS resolution)
utilities/pkg_lint [generic-x64] [packages/lfs/gcc ...]
# See what a build would get: selected variants, effective scripts, resolved variables (-d: declare lines for diffing)
utilities/pkg_show [-p rpi3-aarch64] [-t llvm] [-d] lfs/systemd:bootstrap lfs/glibc:stage1
# Latest upstream versions (GitHub tags or the archive directory of PKG_URL, Anitya as second opinion); -P: what a
# project builds in build order; -a: rewrite PKG_VER when the new archive answers; <recipe>=<ver> forces a version
utilities/pkg_upstream [-p rpi3-aarch64] [-P lfs] [-a] [-o report.tsv] [lfs/curl lfs/expat=2.7.1 ...]

# Lint: the sources carry `# shellcheck disable=` directives, so shellcheck is the expected linter. There
# is no CI for now (the GitHub Actions were removed, September 2026): these three commands, bats and pkg_lint
# per package group are run by hand.
shellcheck -x bbxb seterr setenv core.functions build.functions toolchain.functions images.functions project.functions data.functions
shellcheck -x utilities/pkgtools.functions utilities/pkg_lint utilities/pkg_show utilities/update_patches
shellcheck -x tests/test_helper.bash tests/*.bats
# Unit tests (bats-core, seconds): variant selection, patch lists, recipe scripts, recipe checksum, target
# prefixes, recipe resolution, core helpers. tests/test_helper.bash sources the framework through
# utilities/pkgtools.functions and builds fixture recipes under the per-test temporary directory.
bats tests                    # dnf install bats / apt install bats; bats tests/variants.bats for one file
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

The script runs with `set -E -o pipefail` and an ERR trap (`on_error` in `core.functions`): any non-zero command aborts the whole run. Commands that may legitimately fail need `|| true`. A failure climbs the nested `build` subshells one level at a time: the innermost shell reports it once on the console (`BBXB_CONSOLE_FD`, the stderr `bbxb` started with) with the package, the call stack, the log file and its last error lines, the parents only pass the status on (flag file `/tmp/bbxb_error.<pid>`), and the main shell runs `unmount_tag --all`. SIGINT (`on_interrupt`) also unmounts everything. `run_cmd` never traps the failure itself: through `log_run` it waits for its two `log_buffer` writers and returns the status, so the log is complete before anything exits (a shell that exits with the writers behind loses the last lines, which are the error; as PID 1 of a container it also kills them, which used to show up as `fork: Cannot allocate memory`). A function passed to `log_run` runs in a `||` list, where the ERR trap is off: it has to return its own status.

### Platforms

`platforms/*.conf` define the target triple (`HOS`, `HM`, `HLIBC` combine into `HARCH`, e.g. `aarch64-linux-gnu`), compiler tuning (`HMARCH`, `HMCPU`, `HMFPU`, `HMFLOATABI`, `HMARCH_RUST`), kernel settings (`KERNEL_ARCH`, `KERNEL_DEFCONFIG`, `KERNEL_IMAGE`, `KERNEL_NAME`, `KERNEL_DTBS`) and QEMU settings used by `utilities/qemu_cmdgen`. `HARCH_LIB=64` selects `lib64`; leaving it empty with `MULTIARCH=1` (the default) selects Debian-style `lib/<triple>` multiarch directories.

### The `build` function (build.functions)

`build [opts] <dir>/<name>[:<target>]` is the core primitive. It runs in a subshell, unsets every recipe variable, computes the install prefixes for the target, then sources `packages/<dir>/<name>/package.env` (`RECIPE_FILENAME` in `setenv`; `PKG_RECIPEPATH` is the recipe directory). Consequently:

- A package is a directory: `package.env` (variable assignments common to every build, Bash evaluated with `PKG_TARGET`, `TOOLCHAIN`, `HARCH`, `HM`, `PLATFORM_NAME`, `INSTALL_*`, `GCC_VER` etc. already set), plus optional `prebuild.sh`, `postbuild.sh`, `build.sh` (`BUILD_PROCESS=custom`), `postinstall.sh`, `files/`, `patches/` and `variants/`. `packages/template/` documents all of it; `utilities/pkg_lint` checks it.
- `package.env` is the default build and nothing in it needs a `case`: what differs for a build goes into `variants/<axis>/<value>/`, a directory with the same layout as the recipe whose `package.env` is sourced on top of the recipe one when its selector matches (`recipe_variants` / `apply_recipe_variants` in `build.functions`). Axes, in application order: `target/` (`native`, `cross`, `sysroot` for anything else, then `default` or the `:<target>` name), `toolchain/gnu|llvm` (the toolchain the package is really built with), `arch/<HM>`, `platform/<PLATFORM_NAME>`, `version/<PKG_VER>`, `option/<name>` and `option/<name>=<value>` (selected by `WITH_<NAME>`, defaulted in `package.env` as `WITH_X=${WITH_X:-1}`); nested directories are conjunctions in that same order, applied after the single ones by depth; `a,b` lists values; there is no "other" (the default is the recipe itself). A variant replaces (`=`) or extends (`+=`): a target that must not have a default dependency restates `PKG_DEPS`, a large shared part stays in a recipe variable both compose from (`SYSTEMD_COMMON_FLAGS`), a default a variant overrides is used through single quotes and expanded at run time (`OPENSSL_TARGET`). A script in a selected variant replaces the recipe one (`recipe_script`), the `patches/` files of a variant join the recipe ones (`recipe_patches`), `PKG_VARIANTS` records the selection. See `packages/lfs/glibc` (targets, versions, options), `packages/lfs/systemd` (bootstrap, arch conjunction), `packages/lfs/openssl`. `utilities/pkg_show <group>/<name>[:target]` prints the resolution; `pkg_lint` warns about any `case`/`if` left in a `package.env` and rejects an `other` directory.
- The package name and its default target are `PKG_FULLNAME = <name><PKG_SUFFIX>_<PKG_VER>`. Directories like `rpi-kernel_6.12` or `camilladsp_1` carry the major version in the name and complete it with `PKG_SUFFIX`.
- `PKG_DEPS` are built recursively first. A dependency written as `lfs/bison:native` builds into the global toolchain; `:cross` builds into the per-platform toolchain; no suffix builds for the target. Native and cross parents propagate their target to their own dependencies.
- Three targets, three prefixes: `native` installs into `GLOBAL_TOOLCHAIN_PATH` (requires `PKG_CHECK`, never records status), `cross` installs into `TOOLCHAIN_PATH`, `target` (default) installs into a staging dir `PKG_PKGPATH`, has `.la` files stripped, is packed by `create_sfx_package` into `<platform>/packages/<fullname>.sfx` (a self-extracting installer with `--with-dev`, `--with-conf`, `--dest` options) and rsync'd into `BIN_PATH`.
- Status is the md5 of the whole recipe directory (`recipe_checksum`: names, symlink targets and contents, `*.bak`/`*.orig`/`*.rej` excluded). Editing the recipe, a script, a static file or a patch automatically invalidates it; `PKG_CHECK="<command>"` replaces the status check with a probe. `--temporary`, `--no_save_status`, `--force`, `--keep_builddir`, `--toolchain gnu|llvm` are the useful flags.
- `BUILD_PROCESS` is called as a function by name, so the valid values are the function names in `build.functions`: `configmake`, `cmakebuild`, `mesonninja`, `cargobuild`, `simplemake`, `pythonbuild`, `perlmodule`, `kernelbuild`, `kernelmodbuild`, `custom` (runs `PKG_BUILDSCRIPT`), `downloadonly`, `none` (only pre/post scripts). The README calls the custom one `custombuild`; the real name is `custom`.
- `prebuild.sh` (cwd `PKG_SRCPATH`, `set -x`, no `-e`), `postbuild.sh` (cwd `PKG_BLDPATH`, `set -ex`) and `build.sh` (`bash -ex`) are sourced by generated runners that first source `recipe.source` (`create_recipe_source`: a `declare -p` snapshot of every ALL_CAPS variable visible to `package.env`, Bash internals, session variables and the names owned by `environment.source` excluded) and then `environment.source` (`SYSROOT`, `CC`, `CFLAGS`, `PATH`, `PKG_CONFIG_*`). Inside the scripts every variable is therefore a plain `${VAR}`; the old `\${VAR}` escaping convention is gone. Lowercase names are never exported (they are framework loop variables or placeholders such as `${libdir}` in `.pc` heredocs). The same `recipe.source` is sourced by `runconfig.sh`/`runmake.sh`, so a single-quoted `CONF_FLAGS='--with-sysroot=${SYSROOT}'` is expanded at run time. A script, or the part of one, that only applies to some builds lives in their variant (`variants/target/cross/postbuild.sh`; `variants/target/sysroot/` for every target build), not behind a `case ${PKG_TARGET}` in the recipe script. The files a target build installs to record how it was built (`*-config`, `Makefile.inc`, `Config.pm`, the Python sysconfigdata, cmake exports listing sysroot paths) go through `strip_host_paths [--cmake]` (`build.functions`, also in `recipe.source`) in `postbuild.sh`: the image gets no compiler wrapper, toolchain directory or sysroot path.
- `postinstall.sh` is not run at build time. It is copied to `postinst_scripts/<PKG_POSTINSTALL_PRIO>_<name>` inside the sysroot behind a header of image-safe values (`INSTALL_*`, `PKG_NAME`, `PKG_VER`, `PKG_FULLNAME`, `PKG_TARGET`, `HARCH`, `HM`, `HOS`, `HLIBC`, `HARCH_LIB`, `PLATFORM_NAME`, `TOOLCHAIN`), ignored for native/cross builds, and executed later inside the chroot by `run_postinstall_scripts <tag>`.
- There is no `PATCHES` variable: `preparesources` applies every `*.patch` and `*.diff` file of the `patches/` directories of the recipe and of the selected variants (`recipe_patches`, built on `patch_list`), with `patch -f -p1`, in the byte order of the file names; a variant file with the same name replaces the recipe one, an empty file cancels it, and `pkg_lint` wants a `NN-` prefix on every name when more than one patch applies. `PATCHDEB` pulls a Debian source package and applies its `debian/patches/series`. `toolchain.functions` applies `packages/lfs/{gcc,binutils}/variants/version/<ver>/patches/` to the raw toolchain sources through the same `patch_list`/`apply_patches`.

`setbuildenv`, `settcenv` and `create_environment_source` (all in `build.functions`) compute the compiler, flag and pkg-config environment for the three targets; `setllvmpollyenv` adds Polly flags. Look there first when a package picks up the wrong sysroot, linker or `PKG_CONFIG_LIBDIR`. A target build and the gcc target libraries of `toolchain.functions` compile with the source path maps of `host_path_maps` (`-ffile-prefix-map` in `CFLAGS`/`CXXFLAGS`/`CPPFLAGS` and `CFLAGS_FOR_TARGET`, `--remap-path-scope=object --remap-path-prefix` in `RUSTFLAGS`): the data directory is recorded as `/usr/src/bbxb` and the sysroot as the image, so `__FILE__`, debug information and Rust panic locations carry no host path; the build logs keep the real paths. Target builds run pkgconf with the FDO sysroot rules (`PKG_CONFIG_FDO_SYSROOT_RULES=1`): the sysroot is prepended to `-I`/`-L` only, and `--variable` returns the path of the image, which is what install directories and run time paths need. The cross pkgconf (`lfs/pkgconf:cross`) has the include and library directories of the sysroot as its system directories, so `--cflags` and `--libs` leave them out: the compiler finds them through `--sysroot`, and no build copies a `-L`/`-I` of the sysroot into its own files (`.pc`, `*-config`) or turns it into a RUNPATH. A pc variable naming a program or a file that later builds read carries `${pc_sysrootdir}`, written by the `postbuild.sh` of the recipe that installs it (lfs/GLib, lfs/gobject-introspection, lfs/wayland, lfs/gdk-pixbuf, lfs/xorg-sgml-doc-tools); a build that reads a standard variable as an input gets the sysroot through its own option or the `PKG_CONFIG_<PACKAGE>_<VARIABLE>` override of pkgconf (lfs/libX11, lfs/gobject-introspection, lfs/Mesa).

### Toolchain bootstrap (toolchain.functions)

`setup_full_toolchain` runs, in order: `setup_rust`, then `lfs/sccache:native` (started as a server and installed as `CCWRAPPER` for everything that follows), make, autotools, pkgconf (native and cross), bison, cmake, `setup_binutils`, `setup_gcc` (host compiler plus target libraries), the toolchain wrapper, ninja, `setup_llvm` when `--with-llvm` is passed or `TOOLCHAIN=llvm`, a native Python and meson, and finally the cross Python only with `--with-python`. Most steps are ordinary `build ...:native` / `:cross` calls on `packages/lfs/*.pkg` recipes. Versions come from `setenv` (`BINUTILS_VER`, `GCC_VER`, `LLVM_VER`, `PYTHON_VER`, `KERNEL_VER`, `GLIBC_VER`, autotools versions). Patches for gcc, binutils, glibc and gdb are release-branch diffs named `packages/lfs/<pkg>/variants/version/<ver>/patches/00-<pkg>_<ver>+<shortsha>.patch`, generated by `utilities/update_patches`; adding a new toolchain version means running that script (an unknown version builds unpatched). The glibc variants also carry `10-glibc-<ver>-fhs-1.patch`, the LFS FHS patch. `PKG_VER` of these recipes is the plain version: the patch content is part of the recipe checksum. `build lfs/gcc:binaries` builds only the host programs (`lfs.prj` does that for the development image).

### Images and chroot (images.functions)

`create_image` / `mount_tag` / `unmount_tag` manage loop-mounted disk images under `<platform>/diskimages`; `mount_tag --url` also downloads a vendor image (the moode project mounts a Raspberry Pi OS image as `distos`). `inject_into_mount_tag` copies the sysroot in, `run_on_root_dir` chroots with qemu-user-static, `unmount_tag --finalize` produces a `.dd` file. All of this needs root, which is why the container runs `--privileged` and why the ERR trap unmounts on failure.

### Projects and packages layout

- `projects/*.prj`: `lfs.prj` is the full reference project (toolchain, kernel, ~100 packages, image creation, QEMU command generation). `librespot.prj` and `rpi-kernel.prj` are minimal examples. `projects/*.conf` and `projects/test*.prj` are gitignored user files.
- `packages/<group>/<name>/`: `lfs/` (BLFS-style recipes, the bulk), `raspberrypi/`, `moode/`, `python/`, `perl/`, `firmwares/`, `fonts/`, `microsoft/` (WSL kernel). Every group is a git submodule of its own repository `packages-<group>` (`.gitmodules`); `bbxb` stops with an error when a group directory is empty. `packages/template/` is the annotated starting point for a new recipe and lives in this repository.
- `configurations/`: templates for `bbxb.conf` and `lfs.conf`.
- `utilities/`: host helpers (`deptool`, `crossgdb`, `crossldd`, `qemu_cmdgen`, `fs_manager`, `aws_create_infrastructure`, bootstrap scripts, container scripts); `pkg_lint` and `pkg_show` share `utilities/pkgtools.functions`, which sources the framework with the build steps stubbed out and resolves a recipe through `set_target_prefixes` and `apply_recipe_variants`, the same code `build` uses.
- `tests/*.bats`: the bats suite; `tests/test_helper.bash` loads the framework the same way (`load_framework`, platform from `PLATFORM_NAME`) and offers `make_recipe`, `put`, `select_target`, `assert_output_lines`, `assert_equal` to build and check fixture recipes under `BATS_TEST_TMPDIR`. One file per area: `variants`, `recipe_files` (patches, scripts), `checksum`, `prefixes`, `pkgtools` (`recipe_resolve`), `core`, `host_paths` (`strip_host_paths`, `host_path_maps`).

## Conventions

- Bash is indented with tabs; functions are declared `function name () {`; nested helper functions are defined inside their parent. Keep `# shellcheck disable=SCxxxx` / `# shellcheck source=/dev/null` directives on lines that need them.
- Every external command inside a library function goes through `run_cmd` (with `-s` for sudo) so it is logged via `log_buffer` into the package log; do not print progress with bare `echo` inside build steps, the console line is written by `build` itself.
- New optional recipe variables must also be added to the `unset` list at the top of `build` in `build.functions`, otherwise they leak from one package into the next.
- A change to the pure logic of `build.functions` (variant selection, patch lists, checksum, prefixes) or of `core.functions` comes with a bats test in `tests/`; run `bats tests` and the shellcheck commands above before committing: nothing else gates them.
- Branching: work happens on `development`; `master` holds releases tagged `X.Y.Z`. The two GitHub Actions (`docker-build.yml`, which built and pushed the Docker image, and `checks.yml`, which ran shellcheck, the bats suite and `pkg_lint`) were removed in September 2026 because they kept failing; they are in the git history for when CI comes back, and the image is built with `utilities/container/build.sh`.
