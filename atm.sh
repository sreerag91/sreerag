#!/bin/sh
echo "Welcome to My bank"
sleep 1
echo "Type the password"
read pass
chrlen=${#pass}
#echo $chrlen
if [ $chrlen -eq 4 ]
then
	echo "Processing to transaction"
else
	echo "Wrong password"
exit 1
fi
sleep 1
echo "Enter only a)100 b)500 c)1000 d)2000"
echo "Enter the amount you need"
read money
case $money in
"100") echo "For $money enter multile 100";;
"500") echo "for $money enter multiple of 500";;
"1000") echo "Not availabe In INDIA";;
"2000") echo "for Sir/Madam you will not get change for 2000 from anyone";;
*)echo "GET LOST";;
esac 
