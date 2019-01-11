#!/bin/sh
file="/home/irage/server.txt"
#name=$(cat "$file")
for n in $(cat $file)
do 
ping -c 2 $n
i=`echo $?`
if [ $i = 0 ]
then
echo "Success"
else 
echo "Failed"
fi
done
