#!/bin/bash
picom &
fcitx5 &
dunst &
bash $HOME/.config/polybar/launch.sh &

xset +fp $HOME/.config/local/share/fonts
# xset +fp $HOME/.local/share/fonts
# xset +fp $HOME/.myprofile/fonts
xset fp rehash
xsetroot -cursor_name left_ptr&

xrandr --output DisplayPort-0 --mode 1920x1080 --rate 144.00 --output HDMI-A-0 --mode 1920x1080 --rate 60.00 --left-of DisplayPort-0

feh --bg-fill $HOME/Picture/wallpaper/sandworm.jpg --bg-fill $HOME/Picture/wallpaper/sandworm.jpg

sh $MYPROFILE/bin/wacom_setup.sh
