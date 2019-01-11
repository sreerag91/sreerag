#!/bin/bash

today_dt=`date +"%Y%m%d"`
#today_dt="20171007"
cd ~/scripts/


scp dropcopy@172.16.100.217:~/backend/idDistribution.csv ~/scripts/macListNSE #Copy idDistribution from 217
scp dropcopy@172.16.100.217:~/CDBackend/idDistribution.csv ~/scripts/macListNSECD

awk 'FNR==1{print ""}1' ~/scripts/macListNSE ~/scripts/macListNSECD ~/scripts/macListBSE | sed '/^$/d' > ~/scripts/macListIBSL      #Merge 3 files

grep -v ",OMM,\|,OMMCD," ~/scripts/macListIBSL | grep -v '#' > ~/scripts/mockList

        for mac in `cat mockList`
            do
                macPath=`echo $mac | cut -d, -f4` #Field 4 - path in Dropcopy
                #uiMac=`echo $mac | cut -d, -f2`
                machine=`echo $mac | cut -d, -f1` #Field 1 - Machine in Dropcopy
                seg=`echo $mac | cut -d, -f5`     #Field 5 - Segment in Dropcopy
                team=`echo $mac | cut -d, -f3`    #Field 3 - Team in Dropcopy
                echo "---------------------------- Rsyncing $macPath of $team  --------------------------------------"
            	mkdir -vp /TEMPO/compliance/Mock/IBSL/$seg/$machine/
                rsync -avzh --remove-source-files "$macPath":~/logs_backup/dump/ /TEMPO/compliance/Mock/IBSL/$seg/$machine/
            done
