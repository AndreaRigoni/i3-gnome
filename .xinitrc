#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# if [ -d /etc/X11/xinit/xinitrc.d ]; then
#   for f in /etc/X11/xinit/xinitrc.d/*; do
#     [ -x "$f" ] && . "$f"
#   done
#   unset f
# fi

# xrandr --dpi 96

export XDG_SESSION_TYPE=x11

# exec gnome-session
# exec startkde
# exec startxfce4
# exec wmii
# exec gnome-session-wmii
# exec i3
# exec spectrwm

# export XDG_SESSION_TYPE=x11
# export XDG_CURRENT_DESKTOP=GNOME-Classic:GNOME
export GNOME_SHELL_SESSION_MODE=classic
# exec gnome-session --session=wmii-gnome
exec gnome-session-wmii
