#!/bin/bash

cd ~/.config/herbstluftwm
python system_setup.py list | rofi -p 'switch screen: ' -dmenu | xargs python system_setup.py set

# restart topbar if running
if pidof lemonbar; then
    killall lemonbar
    sh topbar.sh &
fi