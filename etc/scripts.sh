#!/bin/sh
# env >/tmp/ocserv.log
datetime=`date +%F\ %T`
# 2020-04-07 12:47:54 user connect AnyConnect AppleSSLVPN_Darwin_ARM (iPhone) 4.8.02050 iPhone11,2 apple-ios from 183.39.33.103
str="$datetime $USERNAME $REASON from $IP_REAL [client:$USER_AGENT device:$DEVICE_TYPE platform:$DEVICE_PLATFORM]"
echo $str >> /var/log/ocserv.log
exit 0
