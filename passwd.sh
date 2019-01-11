#!/bin/bash 
for server in `cat hostlist` ; do
echo $server
ssh -l root $server
echo "Always protect your password"
user=$USER
echo $user
one="root"
if [ "$user" == "$one" ] ; 
then passwd="iragecap"
echo "$one:$passwd" | chpasswd 
else
echo "please use root user account"
fi
done
