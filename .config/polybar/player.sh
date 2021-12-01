#!/bin/bash

# mpd first
mpd_status=`mpc status`

if [[ $mpd_status == *"[playing]"* ]]; then
    echo `mpc current`
    exit
fi

players=`playerctl -l`

output="wait for playing..."
for player in $players
do
        status=`playerctl -p $player status`
        if [[ $status == 'Playing' ]];then
                output=`playerctl -p $player metadata title -f '{{artist}} - {{title}}'`
                break
        fi
done

echo $output
