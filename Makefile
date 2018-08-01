#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr
WM_ALL   = i3 wmii
WM      ?= i3


PATH_GNOME = $(PREFIX)/bin/$(WM)-gnome
PATH_GNOME_DESKTOP = $(PREFIX)/share/applications/$(WM)-gnome.desktop
PATH_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/$(WM)-gnome.session
PATH_GNOME_XSESSION = $(PREFIX)/share/xsessions/$(WM)-gnome.desktop
PATH_GNOME_SESSION_I3 = $(PREFIX)/bin/gnome-session-$(WM)

#
# Targets
#

all:
	@echo "Nothing to do"

list:
	@echo $(WM)


install:
	$(INSTALL) -m0644 -D session/$(WM)-gnome-xsession.desktop $(PATH_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/$(WM)-gnome.desktop $(PATH_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/$(WM)-gnome.session $(PATH_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/$(WM)-gnome $(PATH_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-$(WM) $(PATH_GNOME_SESSION_I3)


uninstall:
	rm -f $(PATH_GNOME)
	rm -f $(PATH_GNOME_DESKTOP)
	rm -f $(PATH_GNOME_SESSION)
	rm -f $(PATH_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_I3)

%-all:
	@ $(foreach w,$(WM_ALL),$(MAKE) -s $* WM=$w; )

.PHONY: all install uninstall

