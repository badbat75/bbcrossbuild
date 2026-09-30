# TODO

Deferred work found while moving every `lfs` recipe to the latest upstream versions (September 2026,
gcc 16.2, glibc 2.44, binutils 2.47, OpenSSL 4) and validating the result with a clean container build
of `lfs rpi3-aarch64`. Each item names the workaround the recipes carry today, so that removing the
workaround is part of closing the item.

## Framework

1. **Empty the bootstrap scripts: build the host tools in place.** The goal is to remove almost
   every line of `utilities/bootstrap.*` and of the `dnf install` list of `Dockerfile`, leaving the
   host a compiler, a shell and little else: every other tool a build runs becomes a `:native`
   (or `:cross`) package the framework builds, as `lfs/perl5:native`, `lfs/Tcl:native`,
   `lfs/mdbook:native` and `lfs/libical:cross` already are. Known steps:
   - the wayland documentation still runs `dot` (graphviz), `xsltproc` and the docbook XSL style
     sheets of the host, and the `ical-glib-src-generator` of `lfs/libical:cross` links the host
     libxml2 (`graphviz`, `libxslt`, `docbook-style-xsl`, `libxml2-devel` in the lists):
     candidates for `lfs/graphviz:native`, native libxslt and docbook-xsl, an `lfs/libxml2:cross`
     variant;
   - go through the remaining lines one by one (docbook-utils, docbook2X, asciidoc, texinfo,
     gtk-doc, help2man, swig, gperf, pandoc, intltool, the `*-devel` packages) and either
     give the tool a native recipe or drop the feature that needs it.
