#!/bin/bash
# baraction.sh script for spectrwm status bar

SLEEP_SEC=5  # set bar_delay = 5 in /etc/spectrwm.conf

function Volume() {
    echo "V +@fg=4;$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master))+@fg=2;"
}

function Battery() {
	battery_status=$(cat /sys/class/power_supply/BAT0/status)
	percentage=$(cat /sys/class/power_supply/BAT0/capacity)
	icon=''
	text_prefix=''

	if [ $battery_status != "Discharging" ]
	then
		icon=""
		text_prefix='AC'
	else
	    text_prefix='B'
	    if [ $percentage -ge "95" ]; then
		icon=''
	    elif [ $percentage -ge "75" ]; then
		icon=''
	    elif [ $percentage -ge "50" ]; then
		icon=''
	    elif [ $percentage -ge "25" ]; then
		icon=''
	    else
		icon=''
	    fi
	fi
	if [ "$1" == "icons" ]
	then
	    echo "$icon +@fg=4;$percentage%+@fg=2;"
	else
	    echo "$text_prefix +@fg=4;$percentage%+@fg=2;"
	fi
}	

WiFi() {
	ssid=$(nmcli -t -f active,ssid dev wifi | egrep '^yes' | cut -d\: -f2)
        if [ -z $ssid ]; then ssid="None"; fi
	echo "W +@fg=4;$ssid+@fg=2;"
}

#loops forever outputting a line every SLEEP_SEC secs
while :; do
    echo "//// $(WiFi) // $(Volume) // $(Battery)"
    sleep $SLEEP_SEC
done
