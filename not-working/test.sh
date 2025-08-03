#!/bin/bash

WIN_ID="`/cbin/window/get-id-target.sh`"
echo "## hiding decorations for window id: $WIN_ID"
xprop -id "$WIN_ID" -format _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS 2

