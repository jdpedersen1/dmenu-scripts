#!/bin/bash

declare options=("Badwolf
Brave
Firefox
Jakes
Librewolf
Qutebrowser
Surf")

choice=$(echo -e "${options[@]}" | dmenu -c -g 1 -l 10 -i -fn 'Roboto Mono' -p 'launch browser: ' -nb '#3b3b3b' -nf '#71988a' -sb '#000000' -sf '#71988a')
#choice=$(echo -e "${options[@]}" | rofi -dmenu -p 'Launch browser: ')


case "$choice" in 
    quit)
        echo "program terminated." && exit 1
    ;;
    Badwolf)
        choice="badwolf"
    ;;
    Brave)
        choice="brave"
    ;;
    Firefox)
        choice="firefox"
    ;;
    Jakes)
        choice="jakeweb"
    ;;
    Librewolf)
        choice="librewolf"
    ;;
    Qutebrowser)
        choice="qutebrowser"
    ;;
    Surf)
        choice="surf" && www.suckless.org 
    ;;
esac
"$choice"
