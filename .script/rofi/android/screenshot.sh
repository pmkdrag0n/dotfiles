#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme android/three.rasi"

# Options
screen=""
area=""
window=""

# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -p '' -dmenu -selected-row 1)"
case $chosen in
    $screen)
        sleep 1; spectacle -bo /tmp/screenshot.png ; xclip -selection clipboard -t $(file -b --mime-type /tmp/screenshot.png) < /tmp/screenshot.png;;
    $area)
       spectacle -bro /tmp/screenshot.png ; xclip -selection clipboard -t $(file -b --mime-type /tmp/screenshot.png) < /tmp/screenshot.png;;
    $window)
        sleep 1; spectacle -abo /tmp/screenshot.png ; xclip -selection clipboard -t $(file -b --mime-type /tmp/screenshot.png) < /tmp/screenshot.png       ;;
esac

