#!/bin/bash

# this should work...
# # xdotool getmouselocation windowstate --add MAXIMIZED_VERT MAXIMIZED_HORZ

function Go() {
    local WID
    WID="$(xdotool getmouselocation 2>/dev/null | sed 's/.*window:\(.*\)/\1/g')"
    (( $? != 0 )) && exit 1
    [[ "$(xdotool getwindowname "$WID")" == "Desktop" ]] && exit 1
    [[ "$(xdotool getwindowname "$WID")" == "" ]] && exit 1
    xdotool windowraise "$WID"
    xdotool windowfocus "$WID"
    wmctrl -i -r "$WID" -b toggle,maximized_vert,maximized_horz
}

Go "$@"


