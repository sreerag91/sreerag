#!/bin/bash

today_dt=`date +"%Y%m%d"`
#today_dt="20171111"
cd ~/scripts/


scp dropcopy@172.16.100.217:~/backend/idDistribution.csv ~/scripts/macListNSE #Copy idDistribution from 217
scp dropcopy@172.16.100.217:~/CDBackend/idDistribution.csv ~/scripts/macListNSECD

awk 'FNR==1{print ""}1' ~/scripts/macListNSE ~/scripts/macListNSECD ~/scripts/macListBSE | sed '/^$/d' > ~/scripts/macListIBSL      #Merge 3 files


egrep ",FO$|,CD$" ~/scripts/macListIBSL | grep OMM | cut -d, -f4,5 | grep -v '#' | cut -d'@' -f2 | sort | uniq > ~/scripts/mockList # Added just for FO 20170808 , 20180203 - grepping just for OMM

for mac in `cat mockList`
do
    macIP=`echo $mac | cut -d, -f1`
    machine=`echo $mac | cut -d, -f1 | cut -d. -f4` #Field 1 - Machine IP Last Number
    seg=`echo $mac | cut -d, -f2`     #Field 5 - Segment in Dropcopy
    mkdir -vp /TEMPO/compliance/Mock/IBSL/$seg/$machine/

    echo "---------------------------- Rsyncing $mac   --------------------------------------"
    if [ $seg == "FO" ] ; then
        rsync -avzh --remove-source-files mock@"$macIP":~/logs_backup/dump/ /TEMPO/compliance/Mock/IBSL/$seg/$machine/

    elif [ $seg == "CD" ] ; then
        rsync -avzh --remove-source-files mockcd@"$macIP":~/logs_backup/dump/ /TEMPO/compliance/Mock/IBSL/$seg/$machine/

    fi

done

