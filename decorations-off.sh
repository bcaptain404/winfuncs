#!/bin/bash
#cbin/notify.sh "Turning Off Window Decorations"
mkdir -p $HOME/.themes/empty/xfwm4/ 2>/dev/null
touch $HOME/.themes/empty/xfwm4/themerc
echo "" > $HOME/.themes/empty/xfwm4/themerc
xfconf-query -c xfwm4 -p /general/theme -s empty
