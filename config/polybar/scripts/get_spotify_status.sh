#!/bin/bash

if [ "$(playerctl status spotify)" = "Stopped" ]; then
    echo "BLANNNNNNNK"

elif [ "$(playerctl status spotify)" = "Paused"  ]; then
    # polybar-msg -p "$(pgrep -f "polybar bottom")" hook spotify-play-pause 2 >/dev/null
    # playerctl metadata spotify --format "{{ title }} - {{ artist }}"
		python $HOME/.config/polybar/scripts/spotify_status.py
else
    # polybar-msg -p "$(pgrep -f "polybar bottom")" hook spotify-play-pause 1 > /dev/null
    # playerctl metadata spotify --format "{{ title }} - {{ artist }}"
		python $HOME/.config/polybar/scripts/spotify_status.py
fi
