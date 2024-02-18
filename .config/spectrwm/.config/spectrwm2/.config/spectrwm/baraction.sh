#!/bin/bash
vol(){
    vol=$(amixer get Master | awk -F'[]%[]' '/%/ {if ($7 == "off") { print "MM" } else { print $2 }}' | head -n 1)
    echo -e "+@fg=1;+@fn=2;墳+@fn=0; $vol"
}

wifi(){
    wifi=$(nmcli | sed '1q' | awk '{print $4}')
    [[ -n $wifi ]] && echo -e "+@fg=4;+@fn=2;直+@fn=0; $wifi" || echo -e "+@fg=1;+@fn=2;直+@fn=0; DISCONNECTED"
}

bri(){
    bri=$(light | cut -d. -f1)
    echo -e "+@fg=3;+@fn=2;+@fn=0; $bri"
}

I(){
    echo -e "+@fg=0;   "
}

SLEEP_SEC=1
while true; do 
    echo "$(vol)$(I)$(wifi)$(I)$(bri) "
    sleep $SLEEP_SEC
done
