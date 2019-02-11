#!/bin/bash
file=/home/sreerag/*
IFS=$'\n'
for state in $(cat $file)
do 
	echo "$state"
done
