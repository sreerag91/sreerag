# /opt/scripts/remote-backup-3.sh

#!/bin/bash

#Local backup location
lbackuploc=/sreerag/Downloads//

#Remote backup location
rbackuploc=/home/daygeek/site

for rserver in 192.168.1.5 192.168.1.8

do

rsync -avz -e ssh $lbackuploc $rserver:$rbackuploc

find $rbackuploc/* -mtime +10 -exec rm {} \;

done

