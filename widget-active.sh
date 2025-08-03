#!/bin/bash

[[ "$(xdotool getactivewindow getwindowname)" == "Desktop" ]] && exit 1

#cbin/notify.sh "$0 \"$(xdotool getwindowfocus getwindowname)\""
/cbin/window/skip-taskbar-active.sh
/cbin/window/sticky-active.sh
/cbin/window/below-active.sh
/cbin/window/toggle-decorations-active.py
