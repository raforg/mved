prefix := $(DESTDIR)/usr/local
bindir := $(prefix)/bin
mandir := $(shell [ -d $(prefix)/share/man ] && echo $(prefix)/share/man || echo $(prefix)/man)

name := mved
version := 2.2
date := 20111027

install:
	@set -e; \
	[ -d $(bindir) ] || mkdir $(bindir); \
	[ -d $(mandir) ] || mkdir $(mandir); \
	[ -d $(mandir)/man1 ] || mkdir $(mandir)/man1; \
	install -m 755 $(name) $(bindir); \
	./$(name) -r > $(mandir)/man1/$(name).1

uninstall:
	rm -f $(bindir)/$(name) $(mandir)/man1/$(name).1 $(mandir)/man1/$(name).1

dist:
	@base=`basename \`pwd\``; \
	cd ..; \
	ln -s $$base $$base-$(version); \
	tar chzf $$base-$(version).tar.gz $$base-$(version)/[RMm]*; \
	tar tvzf $$base-$(version).tar.gz; \
	rm -f $$base-$(version)

help:
	@echo "This Makefile supports the following targets:"; \
	echo; \
	echo "  install   - Installs mved and its manpage"; \
	echo "  uninstall - Uninstalls mved and its manpage"; \
	echo "  dist      - Create the distribution tarball from the source"; \
	echo

