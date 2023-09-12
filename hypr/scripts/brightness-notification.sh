#!/bin/sh
raw=$(brightnessctl g)
out=$((($raw*100)/255))

if [ "$out" -lt "30" ]; then
  symbol="Brightness"
elif [ "$out" -lt "64" ]; then
  symbol="Brightness"
else
  symbol="Brightness"
fi
  
notify-send --transient -t 1000 --hint=int:value:$out "$symbol: $out" -r 555
