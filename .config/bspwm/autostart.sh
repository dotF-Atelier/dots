#!/bin/bash
sxhkd&
picom &
dunst &
dispad &
ibus-daemon -drx

bash $HOME/.config/polybar/launch.sh &

xsetroot -cursor_name left_ptr&
setxkbmap -option ctrl:swapcaps

feh --bg-fill $HOME/.myprofile/wallpaper/sandworm.jpg
