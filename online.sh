#!/bin/bash
# Script online dropbear, webmin, squid3, openvpn, openssh
# Dev by Tao
echo -e "Online User & IP"
netstat -tnpa | grep 'ESTABLISHED.*sshd'