#!/bin/bash

option=$(dialog --title "Select Window" --menu "Options:" 15 30 2 \
    1 "Normal Window" \
    2 "Private Window" \
    2>&1 >/dev/tty)

case $option in
    1)
        clear
        echo "Launching Private Window..."
        firefox
        ;;
    2)
        clear
        echo "Launching Private Window..."
        firefox --private
        ;;
    *)
        clear
        echo "EXIT"
        ;;
esac