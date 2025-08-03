#!/bin/bash

[[ "$(xdotool getactivewindow getwindowname)" == "Desktop" ]] && exit 1

#cbin/notify.sh "$0 \"$(xdotool getwindowfocus getwindowname)\""
wmctrl -r :ACTIVE: -b toggle,skip_taskbar -v

