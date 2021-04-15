#!/bin/bash

declare options=("badwolf
brave
firefox
librewolf
qutebrowser
surf")

choice=$(echo -e "${options[@]}" | dmenu -c -g 1 -l 10 -i -fn 'Roboto Mono' -p 'launch browser: ' -nb '#222222' -nf '#71988a' -sb '#000000' -sf '#71988a')

case "$choice" in 
    quit)
        echo "program terminated." && exit 1
    ;;
    badwolf)
        choice="badwolf"
    ;;
    brave)
        choice="brave"
    ;;
    firefox)
        choice="firefox"
    ;;
    librewolf)
        choice="librewolf"
    ;;
    qutebrowser)
        choice="qutebrowser"
    ;;
    surf)
        choice="surf"
    ;;
esac
"$choice"
