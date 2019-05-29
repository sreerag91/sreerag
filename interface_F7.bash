#!/bin/bash 
################################FOR NSE-F7  SERVERS CONNECTIVITY CHECKING #################################################OD
rm -rf /root/text_*
iterations=3
for list in `cat /root/f7.txt`
do 
	ping -c $iterations $list
#	echo $?
	if [ $? -eq 0 ]
	then 
	echo -e "$list lan connection is successfull"
	for i in $(cat /root/gw_f7.txt); 
		do
			
                        echo "echo from root@$list to  $i ";
			ssh root@$list  ping -c 3 $i; 
			
#                     echo "test print $i"; 
		done
	if [ $? -eq 0 ]
        then 
		echo -e "Exchange side connection of $list successful"
	else
		echo -e "$list Exchange side failed" > /root/text_f7_excg.txt
	 mail -s "Failed servers list" sreerag.s@iragecapital.com < /root/text_f7_excg.txt
        fi
	else
		echo "$list lan failed " > /root/text_lan_f7.txt
                mail -s "Failed servers list" sreerag.s@iragecapital.com < /root/text_lan_f7.txt

	fi
done
