#!/bin/sh

# xkb map
setxkbmap -layout us,ru -variant ,legacy -option grp:shift_caps_toggle

# compositor
xcompmgr &

# taskbar / tray / etc
tint2 &

# give the tray some time
sleep 0.5

# xkb layout indicator/switcher
fbxkb &

# drop-down terminal
tilda &

# yeahconsole does not support transparency, alas
#xrdb ~/.Xdefaults
#yeahconsole &

