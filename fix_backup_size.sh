#! /bin/bash
for mac in `cat macListIBSL`

    do
        date="20180725"
        machine=`echo $mac | cut -d, -f1`
        userId=`echo $mac | cut -d, -f2`
        team=`echo $mac | cut -d, -f3`
        macpath=`echo $mac | cut -d, -f4`
        segment=`echo $mac | cut -d, -f5`
mkdir -p ~/templogs/Backup
        cd /TEMPO/compliance/IBSL/${segment}/${machine}/${date}
        ls fix*.tgz | xargs -n1 tar -ztvf  > ~/templogs/backup_${date}_${machine}.txt
        egrep 'backup' ~/templogs/backup_${date}_${machine}.txt | sed "s/^/${machine} ${team} ${date} /g" > ~/templogs/Backup/backup_${date}_${machine}.txt
        cat ~/templogs/Backup/*.txt > ~/scripts/fixBackup/Backup${date}.txt
    done

rm -r ~/templogs
