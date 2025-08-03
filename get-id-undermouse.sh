#!/bin/bash
xdotool getmouselocation 2>/dev/null | sed 's/.*window:\(.*\)/\1/g'

