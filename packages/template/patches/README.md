# patches/

Patches applied to the sources before `prebuild.sh`, with `patch -f -p1`, in the order they are
listed in `PATCHES` (comma separated) in `package.env`:

```bash
PATCHES="fix-build.patch,https://www.linuxfromscratch.org/patches/blfs/svn/package-1.0-fix-1.patch"
```

An entry that is not a URL names a file in this directory. For gcc, binutils, glibc and gdb the
branch tracking patches and their `<pkg>_<ver>.patch` symlinks are generated here by
`utilities/update_patches`.
