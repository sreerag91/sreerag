#!/bin/bash
factorial=1
for (( n = 1; n <= $1; n++ ))
do
	factorial=$[ $factorial * $n ]
done
echo " the factorial of a number is $factorial"
