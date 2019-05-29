#!/bin/bash 
exch=10.230.38.1
for list in `cat /home/sreerag/test.txt`
do 
ssh -l "/home/sreerag/test.txt"	
	ping -c 5 $list
	echo $?
	if [ $? -eq 0 ]
	then 
		echo "connection is successfull"
	ssh root@`cat /home/sreerag/test.txt`
	ping -c $exch
	if [ $? -eq 0 ]
		
	then 
		echo -n "Exchange side connection successful"
	else
		echo -n "Exchange side failed"
	fi
else
		echo "failed"

	fi
done


