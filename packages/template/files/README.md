# files/

Static files installed by the recipe scripts (configuration files, systemd units, Makefiles,
helper scripts). Reference them as `${PKG_RECIPEPATH}/files/<name>` from `prebuild.sh`,
`build.sh` or `postbuild.sh`, for example:

```bash
install -v -m644 ${PKG_RECIPEPATH}/files/package.conf ${PKG_PKGPATH}${INSTALL_SYSCONFDIR}/package.conf
```

Name every file with the extension of its format (`.conf`, `.service`, `.mk`, `.sh`, `.pc`...).
Files that need values from the build (paths, versions) are better written by the script with a
heredoc, since nothing is expanded inside `files/`.
