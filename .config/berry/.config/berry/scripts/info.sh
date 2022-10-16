#!/bin/sh
while true; do
  #Time
    date=$(date)
    notify-send -u critical "$date" -h string:x-canonical-private-synchronous:my-notification
  #Workspace
    text="Workspace"
    workspace=$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')
    notify-send "$text $workspace" -h string:x-canonical-private-synchronous:my-notification2
  sleep 0
done
