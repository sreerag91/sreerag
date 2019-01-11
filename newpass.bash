#!/bin/bash
for server in `cat hostlist`; do
echo $server;
ssh $server -l root 'passwd <<EOF
irage123
irage123
EOF';
done

