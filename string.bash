#!/bin/bash
val1=testing
val2=''
if [ -n $val ]
then 
	echo "the string value is not empty"
else 
	echo " the value is empty"

fi
if [ -z $val2 ]
then
	echo " the string is empty"
else
	echo " not empty"
fi
if  [ -z $val3 ]
then 
	echo " empty"
else
	echo "not empty"
fi
