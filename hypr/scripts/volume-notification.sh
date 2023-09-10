#!/bin/sh
out=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk -F "." {'print $2'})

if [ "$out" -lt "30" ]; then
  symbol="Volume"
elif [ "$out" -lt "64" ]; then
  symbol="Volume"
else
  symbol="Volume"
fi
  
notify-send --transient -t 1000 --hint=int:value:$out "$symbol: $out" -r 555
