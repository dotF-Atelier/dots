#!/bin/bash
picom &
fcitx5 &
dunst &
bash $HOME/.config/polybar/launch.sh &

# xset +fp $HOME/.config/local/share/fonts
# xset +fp $HOME/.local/share/fonts
# xset +fp $HOME/.myprofile/fonts
# xset fp rehash
xsetroot -cursor_name left_ptr&
setxkbmap -option ctrl:swapcaps

feh --bg-fill $HOME/.myprofile/wallpaper/sandworm.jpg

# sh $MYPROFILE/bin/wacom_setup.sh
