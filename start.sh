#!/bin/bash
iptables -t nat -A POSTROUTING -s 192.168.8.0/21 -o eth0 -j MASQUERADE
ocserv -f
