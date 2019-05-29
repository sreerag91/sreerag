#!/bin/bash
for i in `cat /`
do 
  ssh root@$i  | echo "nameserver 172.16.100.209" >> /etc/resolv.conf
