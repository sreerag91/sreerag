#!/bin/bash
while [ -n "$1" ]
do
	case "$1" in
		-a) echo " found the -a option ";;
		-b) echo " found the -b option " ;;
		-c) echo " found the -c option " ;;
		*) echo "$2 is not an option" ;;
	esac
	shift
done
