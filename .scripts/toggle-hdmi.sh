#!/bin/sh
intern=eDP1
extern=HDMI-1-0

if xrandr | grep -E "$extern (connected \(|disconnected)" &> /dev/null; then
    xrandr --output "$intern" --auto --output "$extern" --auto
else
    xrandr --output "$intern" --auto --output "$extern" --off
fi
