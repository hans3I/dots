bat() {
	batstat="$(cat /sys/class/power_supply/BAT1/status)"
	battery="$(cat /sys/class/power_supply/BAT1/capacity)"
	batstat0="$(cat /sys/class/power_supply/BAT0/status)"
	battery0="$(cat /sys/class/power_supply/BAT0/capacity)"
	if [ $batstat = 'Charging' ]; then
		batstat="󱟦 "
	elif [ $batstat = 'Full' ]; then
		batstat="󱟢 "
  else
    batstat="󱟤 "
	fi

	if [ $batstat0 = 'Charging' ]; then
		batstat0="󱟦 "
	elif [ $batstat = 'Full' ]; then
		batstat="󱟢 "
  else
    batstat0="󱟤 "
	fi
	#echo "+@fg=4;+@fg=9;+@bg=4; $batstat$battery% +@fg=5;+@fg=9;+@bg=5; $batstat0$battery0%+@fg=9; +@bg=0;" #powerline
	echo "+@fg=3;+@fg=7;+@bg=3; $batstat$battery% +@fg=3;+@bg=0; +@fg=5;+@fg=7;+@bg=5; $batstat0$battery0% +@fg=5;+@bg=0;" 
}

SLEEP_SEC=0.25
#loops forever outputting a line every SLEEP_SEC secs
 
# It seems that we are limited to how many characters can be displayed via
# the baraction script output. And the the markup tags count in that limit.
# So I would love to add more functions to this script but it makes the 
# echo output too long to display correctly.
while :; do
    echo "$(bat)"
    sleep $SLEEP_SEC
done
