#!/bin/bash

[[ "$(xdotool getactivewindow getwindowname)" == "Desktop" ]] && exit 1

currentWindow=$(xdotool getwindowfocus)
xdotool windowminimize $currentWindow
