#!/bin/bash

# map monitor
if [ $1 == '1' ];then
    xsetwacom --set "Wacom Intuos Pro M Pen stylus" MapToOutput HDMI-A-0
elif [ $1 == '2' ];then
    xsetwacom --set "Wacom Intuos Pro M Pen stylus" MapToOutput DisplayPort-0
else
    xsetwacom --set "Wacom Intuos Pro M Pen stylus" MapToOutput "$1"
fi

# turn Ring off
xsetwacom --set "Wacom Intuos Pro M Pad pad" 'AbsWheelUp' 'button 0'
xsetwacom --set "Wacom Intuos Pro M Pad pad" 'AbsWheelDown' 'button 0'
xsetwacom --set "Wacom Intuos Pro M Pad pad" 'AbsWheel2Up' 'button 0'
xsetwacom --set "Wacom Intuos Pro M Pad pad" 'AbsWheel2Down' 'button 0'
xsetwacom --set "Wacom Intuos Pro M Pad pad" 'RelWheelUp' 'button 0'
xsetwacom --set "Wacom Intuos Pro M Pad pad" 'RelWheelDown' 'button 0'

# turn ExpressKeys off
xsetwacom -s --set "Wacom Intuos Pro M Pad pad" Button 1 "button 0"
xsetwacom -s --set "Wacom Intuos Pro M Pad pad" Button 2 "button 0"
xsetwacom -s --set "Wacom Intuos Pro M Pad pad" Button 3 "button 0"
xsetwacom -s --set "Wacom Intuos Pro M Pad pad" Button 8 "button 0"
xsetwacom -s --set "Wacom Intuos Pro M Pad pad" Button 9 "button 0"
xsetwacom -s --set "Wacom Intuos Pro M Pad pad" Button 10 "button 0"
xsetwacom -s --set "Wacom Intuos Pro M Pad pad" Button 11 "button 0"
xsetwacom -s --set "Wacom Intuos Pro M Pad pad" Button 12 "button 0"
xsetwacom -s --set "Wacom Intuos Pro M Pad pad" Button 13 "button 0"
