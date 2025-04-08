#!/bin/sh
sudo networkctl down wlan0
sudo macchanger -r -p wlan0
sudo networkctl up wlan0
xdg-open http://www.msftconnecttest.com/redirect
