#!/bin/bash

hidden=/tmp/syshide.lock
file="$HOME/.config/polybar/config.ini"

if [[ $(pidof stalonetray) ]]; then
	if [[ ! -e $hidden ]]; then
		polybar-msg action "#systray.hook.1"
		xdo hide -N stalonetray
		touch "$hidden"
		# perl -0 -i -pe 's/systray\ninitial=.*/systray\ninitial=2/g' "$file"
	else
		xdo show -N stalonetray
        xdo resize -w 32 -N stalonetray
		rm "$hidden"
        polybar-msg action "#systray.hook.0"
		# perl -0 -i -pe 's/systray\ninitial=.*/systray\ninitial=1/g' "$file"
	fi
else
  touch "$hidden"
  stalonetray &
  xdo hide -N stalonetray
fi
