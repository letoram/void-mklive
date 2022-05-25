#!/bin/bash
cp ttyconf $1/etc/sv/agetty-tty1/conf
printf "installing $ARCAN_APPLBASEPATH/$2 into $1"
cp -LR "$ARCAN_APPLBASEPATH"/$2 "$1"/usr/share/arcan/appl
printf "arcan /usr/share/arcan/appl/$2\nshutdown -h now\n" > "$1"/root/.profile
