# paths
PREFIX ?= /usr/local
INSTALL_BIN := $(DESTDIR)$(PREFIX)/bin
INSTALL_MAN := $(DESTDIR)$(PREFIX)/share/man/man1

# files
SELF := git-profile
MANUAL := $(SELF).1

# commands
HELP2MAN ?= help2man -L en_US --no-info


.PHONY: build
build: $(MANUAL)

$(MANUAL): $(SELF)
	$(HELP2MAN) ./$(SELF) > $(MANUAL)

.PHONY: test-manual
test-manual: $(MANUAL)
	man ./$(MANUAL)

.PHONY: install
install: install-bin install-manual

.PHONY: install-bin
install-bin:
	install -d $(INSTALL_BIN)
	install -m0755 $(SELF) $(INSTALL_BIN)

.PHONY: install-manual
install-manual: build
	install -d $(INSTALL_MAN)
	install -m0644 $(MANUAL) $(INSTALL_MAN)

.PHONY: uninstall
uninstall:
	rm -f $(INSTALL_BIN)/$(SELF)
	rm -f $(INSTALL_MAN)/$(MANUAL)

.PHONY: clean
clean:
	rm -f $(MANUAL)
