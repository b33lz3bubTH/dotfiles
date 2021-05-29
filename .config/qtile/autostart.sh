#!/bin/sh
# picom -b
# picom --experimental-backends -b
# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
nitrogen --restore &

xcompmgr -f -C -n -D 3 &

# xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
