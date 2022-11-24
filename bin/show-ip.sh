#!/bin/bash

ip=$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')
echo -ne $ip | xclip -selection clipboard
notify-send "IP" "Se ha copiado con éxito la IP"
