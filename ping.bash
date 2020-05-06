#!/bin/bash
rm -rf /root/ping.txt
iteration=6
for i in $(cat /root/test.txt)
do
	echo "echo from $i"
	ping -c $iteration $i

if [ $? != 0 ]
then
	echo "connection failed is $i"
fi>>/root/ping.txt

done
