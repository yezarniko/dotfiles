#!/bin/sh
#      _       _ _            
#__  _(_)_ __ (_) |_ _ __ ___ 
#\ \/ / | '_ \| | __| '__/ __|
# >  <| | | | | | |_| | | (__ 
#/_/\_\_|_| |_|_|\__|_|  \___|
# 
# The xinit program allows a user to manually start an X display server.

# Xresources
user_resources=$HOME/.Xresources
[ -f $user_resources ] && xrdb -merge $user_resources

# beep off
xset b off &

# enable touch to click
xinput set-prop "Synaptics TM3336-001" "libinput Tapping Enabled" 1

# disable blanking screen
xet -dpms &
xset s off &

# Increase Key Speed via a rate change
xset r rate 300 50 &

# Keybindings
sxhkd &

# Notifications
dunst &

# Autolock Screen
autolock &

# wallpaper
xwallpaper --zoom ~/background &

# Compositor 
picom --config ~/.config/picom/picom.conf --experimental-backends &

# start Qtile windows manager 
exec qtile start
