#!/bin/bash

[[ "$(xdotool getactivewindow getwindowname)" == "Desktop" ]] && exit 1

currentWindow=$(xdotool getwindowfocus)

#if [ "$(xprop -id $currentWindow | grep _NET_WM_STATE_MAXIMIZED)" ] ; then
        ## Current window is maximized; unmaximize it    
        #wmctrl -ir $currentWindow -b remove,maximized_vert,maximized_horz
#else
        ## maximize it
        #wmctrl -ir $currentWindow -b add,maximized_vert,maximized_horz
#fi
wmctrl -ir $currentWindow -b toggle,maximized_vert,maximized_horz
