#!/bin/bash
net=192.168.0.0/24
known=knownmac.txt

IFS="
"
for l in `fing -n $net`
do 
        IFS=";"
        array=($l)            
        cat knownmac.txt|grep ${array[5]}
        if [ `cat $known|grep ${array[5]}|wc -l` -eq "0" ] 
            then
               echo "${array[5]} is not known!"
           ./prowl.sh 0 "Mac Alert!" "New Mac ${array[5]}" &gt; /dev/null
            fi   

        IFS="
        " 
done
