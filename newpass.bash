#!/bin/bash
for server in `cat hostlist`
do
echo $server
ssh $server -l root 'passwd <<EOF
sreerag 
sreerag
EOF';
done

