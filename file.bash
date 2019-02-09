#!/bin/bash
location=/root/git/sreerag
file=bc1.bash
today=`date '+%Y-%s-%s %H:%M:%S'`
if [ -e $location ]
then 
	echo "Ok on the $location of the directory"
	echo "Now checking on the file, $filename."
fi
if [ -e $location/$filei ]
then 
	echo "ok on the file name"
	echo "update Current Date $today"

else
	echo " file doesnot exist"
fi
