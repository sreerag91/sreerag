#!/bin/bash
echo "This is my first program"
#uid=$(id | cut -d "=" -f2 | cut -d "(" -f1)
uid=$(id -u)
if [ $uid -eq 0 ]
then 	
		echo "This is a root user"
else
	echo "Sorry! this is not a root user"

fi
