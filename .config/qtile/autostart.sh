#!/bin/sh
# picom -b
# picom --config ~/.config/picom/picom.conf --experimental-backends -b
xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

feh --bg-scale ~/Pictures/wall.jpg &
