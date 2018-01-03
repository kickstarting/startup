#!/bin/sh

iptables -t mangle -I FORWARD 1 -d 37.220.31.52/32 -j MARK --set-xmark 0x1/0x7
iptables -t nat -I PREROUTING 1 -m mac --mac-source d4:a3:3d:22:bb:cc -p tcp -m tcp --dport 80 -j DNAT --to-destination 37.220.31.52:8080
