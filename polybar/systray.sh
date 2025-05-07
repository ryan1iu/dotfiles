#!/bin/bash

file="$HOME/.config/polybar/config.ini"

if [[ $(pidof stalonetray) ]]; then
    polybar-msg action "#systray.hook.0"
    killall stalonetray
    perl -0 -i -pe 's/systray\ninitial=.*/systray\ninitial=1/g' "$file"
else
    polybar-msg action "#systray.hook.1"
    stalonetray &
    perl -0 -i -pe 's/systray\ninitial=.*/systray\ninitial=2/g' "$file"
fi
