#!/bin/bash

setxkbmap -option caps:swapescape\
          -option compose:lctrl-altgr
nitrogen --restore
xrdb ~/.Xresources
$HOME/.scripts/natscroll
xss-lock --transfer-sleep-lock -- "betterlockscreen -l dimblur" --nofork &
mpd &
