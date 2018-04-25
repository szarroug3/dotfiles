#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

[[ -f ~/.profile ]] && . ~/.profile

xrdb -merge ~/.Xresources &
xrandr --output eDP1 --auto --scale .5x.5 &
compton --config ~/.config/compton.conf -b &
/home/samreen/.Xresources.d/random-color-picker &
unclutter &

# exec i3 -V >> ~/i3log-$(date +'%F-%k-%M-%S') 2>&1
exec i3
