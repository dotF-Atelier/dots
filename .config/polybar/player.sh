#!/bin/bash

# mpd first
mpd_status=`mpc status`

if [[ $mpd_status == *"[playing]"* ]]; then
    # echo -n $(echo -n $(mpc volume) | sed s/volume://) '| ' 
    echo `mpc current`
    exit
fi

players=$(playerctl -l)
output="wait for playing..."
for player in $players
do
        status=`playerctl -p $player status`
        if [[ $status == 'Playing' ]];then
            if [[ $(playerctl metadata artist) == '' ]];then
                output=$(playerctl -p $player metadata title -f '{{title}}')
            else
                output=$(playerctl -p $player metadata title -f '{{artist}} - {{title}}')
            fi
            break
        fi
done
echo $output
