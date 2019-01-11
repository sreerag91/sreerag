#!/bin/bash 
echo "Read size(N)"
read N
sum=0
echo "Enter Numbers"
for((i=1;i<=N;i++))
do 
read num
sum=`expr $num + $sum`
done
echo $sum

