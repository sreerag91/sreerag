#!/bin/bash
arr=(20 20 30 40 50)
sum=0
for i in ${arr[@]}
do
sum=`expr $sum + $i`
done
echo $sum

