#!/bin/bash
value1=10
value2=11
if [ $value1 -gt 5 ]
then 
	echo "the $value is grter than 5"
fi
if  [ $value1 -eq $value2 ]
then echo "The values are equal"
else
	echo "the values are different"
fi
