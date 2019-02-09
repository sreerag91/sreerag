#!/bin/bash
cd /root/git/sreerag
file=bc1.bash
if [ -G $file ]
then 
	echo " pass"
else  
	echo "fail"
fi

