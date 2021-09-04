#!/bin/bash

# update the packages list
# update installed packages
apt-get -y update
apt-get -y upgrade



apt-get install iptables-persistent
iptables-restore < ./iptables/iptables.pihole.rules
sh -c 'iptables-save > /etc/iptables.up.rules'
reboot

