#!/bin/bash
for file in /home/sreerag/*
do
	if [ -d $file ] 
	then 
		echo "$file is a directory"
	elif [ -f $file ] 
	then 
		echo "$file is a file"
	fi
done 2>/dev/null
