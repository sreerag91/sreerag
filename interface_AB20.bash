#!/bin/bash 
################################FOR AB20 BSE-NSE SERVERS CONNECTIVITY CHECKING #################################################OD
iterations=3
for list in `cat /root/ab20_bse.txt`
do 
	ping -c $iterations $list
#	echo $?
	if [ $? -eq 0 ]
	then 
	echo -e "$list lan connection is successfull"
	for i in $(cat /root/gw_NSE_BSE.txt); 
		do
#			echo "echo from root@$list to  $i ";
			ssh root@$list  ping -c 3 $i; 
			
#                     echo "test print $i"; 
		done
	if [ $? -eq 0 ]
        then 
		echo -e "Exchange side connection of $list successful"
	else
		echo -e "Exchange side failed for $list" >> /root/text_AB_BSE_NSE_EXCG.txt
		mail -s "Failed servers list" sreerag.s@iragecapital.com < /root/text_AB_BSE_NSE_EXCG.txt
	
	fi
	else
		echo "lan failed" >> /root/text_lan_AB_NSE_BSE.txt
                mail -s  "Failed servers list" sreerag.s@iragecapital.com < /root/text_lan_AB_NSE_BSE.txt
	fi
done
################################FOR AB20 NON BSE-NSE SERVERS CONNECTIVITY CHECKING #################################################
for list in `cat /root/ab20.txt`
do
        ping -c $iterations $list
#        echo $?
        if [ $? -eq 0 ]
        then
        echo -e " $list lan connection is successfull"
        for i in $(cat /root/gw.txt);
                do
                        ssh root@$list  ping -c 3 $i;
#                        continue;
#                        echo "test print $i";
#                         echo $?
                done
#        echo "result  $?"
        if [ $? -eq 0 ]
        then
                echo -e "Exchange side connection of $list successful"
        else
                echo -e " $list Exchange side failed" >> /root/text_excg_AB20.txt
                mail -s "$list Failed servers list" sreerag.s@iragecapital.com < /root/text_excg_AB20.txt

        fi
        else
                echo " $list lan failed" >> /root/text_lan_AB20.txt
                mail -s  " Failed servers list" sreerag.s@iragecapital.com < /root/text_lan_AB20.txt

        fi
done
#cat /dev/null >  /root/text_lan_AB20.txt
