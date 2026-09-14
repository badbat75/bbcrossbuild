# shellcheck shell=bash
# shellcheck disable=SC2154
# upmpdcli_1.5: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

sed -i 's|cd $(DESTDIR)$(pkgdatadir); tar xzf -) < web.tar.gz|cd $(DESTDIR)$(pkgdatadir); tar xzf -) < $(srcdir)/web.tar.gz|g' Makefile.am
sed -i 's|cd $(DESTDIR)$(pkgdatadir); tar xzf -) < rdpl2stream.tar.gz|cd $(DESTDIR)$(pkgdatadir); tar xzf -) < $(srcdir)/rdpl2stream.tar.gz|g' Makefile.am
sed -i 's|cd $(DESTDIR)$(pkgdatadir); tar xzf -) < uprclbottle.tar.gz|cd\ $(DESTDIR)$(pkgdatadir); tar xzf -) < $(srcdir)/uprclbottle.tar.gz|g' Makefile.am
