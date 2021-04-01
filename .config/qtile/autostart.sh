#!/bin/sh
picom --experimental-backends &
# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

feh --bg-scale ~/Pictures/wall.jpg &
