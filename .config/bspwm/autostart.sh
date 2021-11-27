#!/bin/bash
picom &
fcitx5 &
wal -R
dunst &
bash $HOME/.config/polybar/launch.sh &
xrandr --output DisplayPort-0 --mode 1920x1080 --rate 144.00 --output HDMI-A-0 --mode 1920x1080 --rate 60.00 --left-of DisplayPort-0
xset +fp /home/npchitman/.config/local/share/fonts
xset fp rehash
xsetroot -cursor_name left_ptr&
