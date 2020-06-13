#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 30 \
        --delay 0.3 \
        --match-command "playerctl status spotify" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --match-text "No players found" "--scroll 0" \
        --update-check true '/home/npchitman/.config/polybar/scripts/get_spotify_status.sh' 2>/dev/null &
        # --update-check true 'python /home/npchitman/.config/polybar/scripts/spotify_status.py' 2>/dev/null &

wait
