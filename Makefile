LIBRARY_VERSION = 1.0.8
STRIP ?= strip

all:
	$(MAKE) -f Makefile-libbz2_so DESTDIR=$(DESTDIR) PREFIX=$(PREFIX) all
	$(MAKE) -f Makefile-libbz2_a clean *.o
	$(MAKE) -f Makefile-libbz2_a DESTDIR=$(DESTDIR) PREFIX=$(PREFIX) all

install-common:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man1
	mkdir -p $(DESTDIR)$(PREFIX)/lib$(LIBSUFFIX)/pkgconfig
	mkdir -p $(DESTDIR)$(PREFIX)/include
	chmod 644 bzlib.h
	cp -p bzlib.h $(DESTDIR)$(PREFIX)/include
	install -m 755 bzip2recover bzgrep bzdiff bzmore  $(DESTDIR)$(PREFIX)/bin/
	install -m 644 libbz2.a $(DESTDIR)$(PREFIX)/lib$(LIBSUFFIX)
	ln -fs bzip2 $(DESTDIR)$(PREFIX)/bin/bunzip2
	ln -fs bzip2 $(DESTDIR)$(PREFIX)/bin/bzcat
	ln -fs bzdiff $(DESTDIR)$(PREFIX)/bin/bzcmp
	ln -fs bzmore $(DESTDIR)$(PREFIX)/bin/bzless
	ln -fs bzgrep $(DESTDIR)$(PREFIX)/bin/bzegrep
	ln -fs bzgrep $(DESTDIR)$(PREFIX)/bin/bzfgrep
	ln -fs libbz2.so.$(LIBRARY_VERSION) $(DESTDIR)$(PREFIX)/lib$(LIBSUFFIX)/libbz2.so.1
	ln -fs libbz2.so.1 $(DESTDIR)$(PREFIX)/lib$(LIBSUFFIX)/libbz2.so
	install -m 644 bzip2.pc $(DESTDIR)$(PREFIX)/lib$(LIBSUFFIX)/pkgconfig/bzip2.pc
	cp -p bzip2.1 bzdiff.1 bzgrep.1 bzmore.1  $(DESTDIR)$(PREFIX)/share/man/man1/
	ln -fs bzip2.1 $(DESTDIR)$(PREFIX)/share/man/man1/bzip2recover.1
	ln -fs bzip2.1 $(DESTDIR)$(PREFIX)/share/man/man1/bunzip2.1
	ln -fs bzip2.1 $(DESTDIR)$(PREFIX)/share/man/man1/bzcat.1
	ln -fs bzdiff.1 $(DESTDIR)$(PREFIX)/share/man/man1/bzcmp.1
	ln -fs bzmore.1 $(DESTDIR)$(PREFIX)/share/man/man1/bzless.1
	ln -fs bzgrep.1 $(DESTDIR)$(PREFIX)/share/man/man1/bzegrep.1
	ln -fs bzgrep.1 $(DESTDIR)$(PREFIX)/share/man/man1/bzfgrep.1

install: all install-common
	install -m 755 libbz2.so.$(LIBRARY_VERSION) $(DESTDIR)$(PREFIX)/lib$(LIBSUFFIX)
	install -m 755 bzip2-shared  $(DESTDIR)$(PREFIX)/bin/bzip2

install-strip: all install-common
	install --strip-program=$(STRIP) -s -m 755 libbz2.so.$(LIBRARY_VERSION) $(DESTDIR)$(PREFIX)/lib$(LIBSUFFIX)
	install --strip-program=$(STRIP) -s -m 755 bzip2-shared  $(DESTDIR)$(PREFIX)/bin/bzip2

clean:
	$(MAKE) -f Makefile-libbz2_so DESTDIR=$(DESTDIR) PREFIX=$(PREFIX) clean
	$(MAKE) -f Makefile-libbz2_a DESTDIR=$(DESTDIR) PREFIX=$(PREFIX) clean
