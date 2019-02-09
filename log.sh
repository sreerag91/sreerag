#!/bin/bash
find /var/log/ -iname "syslog.1.*" -type f -mtime -10 >> /home/sreerag.txt
