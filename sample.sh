#!/bin/sh
echo "Read the number"
read n
while [ $n -ge 0 ]
do
#if(-z $n)
#then
echo "the value is $n"
break
#fi
done
