#!/bin/bash
picom &
fcitx5 &
dunst &
ibus-daemon -drx
bash $HOME/.config/polybar/launch.sh &

xset +fp $HOME/.config/local/share/fonts
xset fp rehash
xsetroot -cursor_name left_ptr&
/usr/bin/setxkbmap -option "ctrl:nocaps"

xrandr --output HDMI-A-0 --primary --mode 1920x1080 --pos 0x0 --rotate left --output DisplayPort-0 --mode 1920x1080 --pos 1080x337 --rotate normal --output DisplayPort-1 --off

feh --bg-fill $HOME/Picture/wallpaper/sandworm.jpg --bg-fill $HOME/Picture/wallpaper/sandworm.jpg

sh $MYPROFILE/bin/wacom_setup.sh 1
