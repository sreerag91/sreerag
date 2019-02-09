#!/bin/bash

today_dt=`date +"%Y%m%d"`

cd ~/scripts/

for createPath in `cat macListMCX`
do
    for mac in `cat macListMCX`
        do
            macPath=`echo $mac | cut -d, -f4`
            machine=`echo $mac | cut -d, -f1`
    	    seg=`echo $mac | cut -d, -f5`
	        team=`echo $mac | cut -d, -f3`
            echo $stratMac, $uiMac, $path
            echo "---------------------------- Rsyncing Mock $macPath of $team  --------------------------------------"

	        mkdir -vp /TEMPO/compliance/Mock/MCX/$seg/$machine/
            rsync -avzh --remove-source-files "$macPath":~/logs_backup/dump/ /TEMPO/compliance/Mock/MCX/$seg/$machine/

        done
done
