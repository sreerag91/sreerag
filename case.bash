#!/bin/bash
cd /root/git/sreerag
file=bc1.bash
case $file in 
	bc1.bash)
		echo "you are bc1";;
	sample.sh) echo "you are sample.sh";;
        *)
	  echo "bc.bash found";;
	esac

