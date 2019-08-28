#!/bin/bash
for i in $( cat user.txt ); do
    useradd $i
    echo "user $i added successfully!"
    echo $i:password | chpasswd
    echo "Password for user $i changed successfully"
done
