#!/bin/sh


# beep off
xset b off &

# enable touch to click
xinput set-prop 10 340 1 &

# disable blanking screen
xet -dpms &
xset s off &

# Increase Key Speed via a rate change
xset r rate 300 50

# wallpaper
nitrogen --restore &

# Compositor 
picom --experimental-backends &

# start Qtile windows manager 
exec qtile start
