#!/bin/sh
intern=eDP1

if xrandr | grep -E "$extern (connected \(|disconnected)" &> /dev/null; then
    xrandr --output "$extern" --auto
else
    xrandr --output "$extern" --off
fi
