#!/bin/bash

function Go() {
    local WID
    WID="$(xdotool getmouselocation 2>/dev/null | sed 's/.*window:\(.*\)/\1/g')"
    (( $? != 0 )) && exit 1
    [[ "$(xdotool getwindowname "$WID")" == "Desktop" ]] && exit 1
    [[ "$(xdotool getwindowname "$WID")" == "" ]] && exit 1
    wmctrl -i -r "$WID" -b toggle,skip_taskbar,skip_pager
}

Go "$@"


