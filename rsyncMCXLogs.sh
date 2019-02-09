#!/bin/bash

today_dt=`date +"%Y%m%d"`
#today_dt="20180703"

cd ~/scripts/
mkdir -p /TEMPO/compliance/dump/MCX

for mac in `cat macListMCX | grep -v '#'`
do
            macPath=`echo $mac | cut -d, -f4`
            machine=`echo $mac | cut -d, -f1`
    	    seg=`echo $mac | cut -d, -f5`
	        team=`echo $mac | cut -d, -f3`
            echo $stratMac, $uiMac, $path
            echo "---------------------------- Rsyncing $macPath of $team  --------------------------------------"


	        mkdir -vp /TEMPO/compliance/MCX/$seg/$machine/
            rsync --bwlimit=400 -avzh --remove-source-files "$macPath":~/logs_backup/dump/ /TEMPO/compliance/MCX/$seg/$machine/
            #added on 12-02-2017 - Neha's Requirement
            #make a copy of Strategy logs on /media2/

    	    #mkdir -vp /media2/Workspace/MCX/$machine/$today_dt/
            #cp /TEMPO/compliance/MCX/$seg/$machine/$today_dt/strat_*$today_dt*.tgz /media2/Workspace/MCX/$machine/$today_dt/
            #chmod 777 /media2/Workspace/MCX/$machine/$today_dt/
done
