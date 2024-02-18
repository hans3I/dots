#!/bin/bash

picom --vsync --xrender-sync-fence &
mpDris2 &
dunst &
#ibus-daemon -drx &
fcitx &
/usr/lib/kdeconnectd  &
$HOME/.scripts/autolock &
$HOME/.scripts/aarchupstartup.sh &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
