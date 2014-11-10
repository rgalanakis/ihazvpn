#!/bin/bash
IP=$(curl -s http://icanhazip.com)
curl -s ${IP}:8888/speedtest/ >/dev/null 2>&1
RETVAL=$?
[ $RETVAL -eq 0 ] && echo "You are connected to VPN with IP ${IP}"
[ $RETVAL -ne 0 ] && echo "You are not connected to a VPN. Your IP is ${IP}"
