#!/bin/bash
#/cbin/notify.sh "$0 \"$(xdotool getwindowfocus getwindowname)\""
function Go() {
    local RET="$(xwininfo | grep "Window id" | sed -E 's/.*Window id: ([^ ]*).*/\1/g')"
    #echo "## xwininfo: $RET" >&2
    RET="$(echo "$RET" | sed 's/^0x//g' | tr 'a-z' 'A-Z')"
    #echo "## sed: $RET" >&2
    RET="$(/cbin/hex2int "$RET")"
    #echo "## hex2int: $RET" >&2
    echo "$RET"
}

Go "$@"

