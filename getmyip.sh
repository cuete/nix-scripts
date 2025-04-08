#!/bin/bash
gateway=`ip r | grep -o -E 'via\s[0-9.]+' | cut -d" " -f2`
mac=`ip a show wlan0 | grep -o -E 'ether\s[0-9a-z:]+' | cut -d" " -f2`
omac=`ip a show wlan0 | grep -o -E 'permaddr\s[0-9a-z:]+' | cut -d" " -f2`
ip=`ip a show wlan0 | grep -o -E 'inet\s[0-9.]+' | cut -d" " -f2`
externalip=`curl -s https://ipinfo.io/ip`
ipv6=`ip a show wlan0 | grep -o -E 'inet6\s[0-9a-f:]+' -m 1  | cut -d" " -f2`


printf "Gateway =\t%s\n" $gateway
printf "IP =\t\t%s\n" $ip
printf "External IP =\t%s\n" $externalip
printf "IPv6 =\t\t%s\n" $ipv6
printf "MAC =\t\t%s\t(%s)\n" $mac $omac
