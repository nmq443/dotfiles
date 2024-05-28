#!/bin/sh

# slstatus bar
slstatus &

# ibus for vietnamese
ibus-daemon -d

# background image with feh
feh --bg-scale ~/Pictures/backgrounds/b-011.jpg

# redshift for night light
redshift -O 4000
