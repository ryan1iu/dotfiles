#!/usr/bin/env bash

# This script toggles the redshift process.
if [[ $1 = "toggle" ]]; then

    if pidof redshift > /dev/null; then
        killall redshift
        echo "󰛨"
    else
        redshift -l 38:114 &
        echo "󱩌"
    fi
else
    if pidof redshift > /dev/null; then
        echo "󱩌"
    else
        echo "󰛨"
    fi
fi

