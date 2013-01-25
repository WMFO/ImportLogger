#Makefile for Import Logger
#Bash scripts aren't compiled, but used for install
#Suggested usage: git pull
# sudo make install

INSTALLDIR = /opt/wmfo/importLogger
LOGDIR = /var/log/importLogger
OWNER = root
MOD = 755
FILE = importLogger.sh

.PHONY: all install uninstall

all:
	@echo "make: nothing to build for bash scripts"
	@echo "make: suggested usage: sudo make install"

install: $(INSTALLDIR)/$(FILE)

$(INSTALLDIR)/%.sh: %.sh
	@mkdir -p $(INSTALLDIR)
	@mkdir -p $(LOGDIR)
	@cp $< $@
	@chown $(OWNER) $@
	@chmod $(MOD) $@

uninstall:
	$(RM) $(INSTALLDIR)/$(FILE)
