#!/bin/bash
fact=1
for (( n = 1 ; n <= $1 ; n++ ))
do
	fact=$[ $fact * $n ]
done
echo "The factorial of $1 is $fact"
