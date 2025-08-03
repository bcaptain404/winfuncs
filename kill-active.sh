>#!/bin/bash

function Go() {
    local WID
    WID="$(xdotool getwindowpid `xdotool getmouselocation 2>/dev/null | sed 's/.*window:\(.*\)/\1/g'`)"

    if (( $? != 0 )) ; then
        exit 1
    fi

    kill -9 "$WID"
}

Go "$@"


