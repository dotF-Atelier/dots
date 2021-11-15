#!/bin/bash

rofi_command="rofi -theme themes/apps.rasi"

# Links
docviewer=""
files="ﱮ"
editor=""
browser=""
music=""
settings="漣"

# Variable passed to rofi
options="$browser\n$editor\n$music\n$files\n$settings\n$docviewer"

chosen="$(echo -e "$options" | $rofi_command -p "Most Used" -dmenu -selected-row 0)"
case $chosen in
    $docviewer)
        evince &
        ;;
    $files)
        thunar &
        ;;
    $editor)
        emacsclient -n -c
        ;;
    $browser)
        chromium &
        ;;
    $music)
        spotify %U --force-device-scale-factor=1.1 --disable-gpu&
        ;;
    $settings)
        blueberry &
        ;;
esac

