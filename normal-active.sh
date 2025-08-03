#!/bin/bash

[[ "$(xdotool getactivewindow getwindowname)" == "Desktop" ]] && exit 1

#cbin/notify.sh "$0 \"$(xdotool getwindowfocus getwindowname)\""
/cbin/window/skip-taskbar-active-remove.sh
/cbin/window/sticky-active-remove.sh
/cbin/window/below-active-remove.sh
/cbin/window/above-active-remove.sh
/cbin/window/decorations-active-enable.py
