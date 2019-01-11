#!/bin/bash

today_dt=`date +"%Y%m%d"`
#today_dt="20180716"
cd ~/scripts/
mkdir -p /TEMPO/compliance/dump/IBSL

scp dropcopy@172.16.100.217:~/backend/idDistribution.csv ~/scripts/macListNSE #Copy idDistribution from 217
scp dropcopy@172.16.100.217:~/CDBackend/idDistribution.csv ~/scripts/macListNSECD

awk 'FNR==1{print ""}1' ~/scripts/macListNSE ~/scripts/macListNSECD ~/scripts/macListBSE | sed '/^$/d' > ~/scripts/macListIBSL #Merge 3 files

    for mac in `cat macListIBSL | grep -v '#'`
        do
            macPath=`echo $mac | cut -d, -f4` #Field 4 - path in Dropcopy
            #uiMac=`echo $mac | cut -d, -f2`
            machine=`echo $mac | cut -d, -f1` #Field 1 - Machine in Dropcopy
	        seg=`echo $mac | cut -d, -f5`     #Field 5 - Segment in Dropcopy
    	    team=`echo $mac | cut -d, -f3`    #Field 3 - Team in Dropcopy
            echo "---------------------------- Rsyncing $macPath of $team  --------------------------------------"
	        mkdir -vp /TEMPO/compliance/IBSL/$seg/$machine/

            if [[ ( $machine -eq 234  &&  $seg == "CD" ) || ( $machine -eq 13  &&  $seg == "CD" ) || ( $machine -eq 27  &&  $seg == "CM" ) || ( $machine -eq 232  &&  $seg == "CM" ) || ( $machine -eq 17  &&  $seg == "CM" ) ]] ; then
                echo "Copying BSE CD Logs with Bandwidth Limit set to 200kbps"
                rsync --bwlimit=200 -avzh --remove-source-files "$macPath":~/logs_backup/dump/ /TEMPO/compliance/IBSL/$seg/$machine/
            #Added on 20170913 to solve BSECD stall issue
            else
                echo "Normal rsync without Bandwidth Restrictions"
                rsync -avzh --remove-source-files "$macPath":~/logs_backup/dump/ /TEMPO/compliance/IBSL/$seg/$machine/
            fi

            #added on 12-02-2017 - Neha's Requirement
            #make a copy of Strategy logs on /mnt2/

	        mkdir -vp /media2/Workspace/IBSL/$seg/$machine/$today_dt
            cp /TEMPO/compliance/IBSL/$seg/$machine/$today_dt/strat_*$today_dt*.tgz /media2/Workspace/IBSL/$seg/$machine/$today_dt/
            cp /TEMPO/compliance/IBSL/$seg/$machine/$today_dt/fix_*$today_dt*.tgz /media2/Workspace/IBSL/$seg/$machine/$today_dt/
            chmod 777 /media2/Workspace/IBSL/$seg/$machine/$today_dt/strat_*$today_dt*.tgz
            chmod 777 /media2/Workspace/IBSL/$seg/$machine/$today_dt/fix_*$today_dt*.tgz
            chmod 777 /media2/Workspace/IBSL/$seg/$machine/$today_dt/
        done
