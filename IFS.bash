#!/bin/bash
path=/root/git/sreerag/*
for i in $path
do
echo "$i"
if [ -x  $i ]
then 
	echo "this is an executable file"

else
	echo " not an executable file"
fi
done
