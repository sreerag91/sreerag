#!/bin/sh
while read f
do 
case $f in
      hello)     echo English ;;
      howdy)     echo American ;;
      gday )     echo Australian ;; 
      bonjour)    echo French  ;;
      guten)  echo germern ;;
      *)          echo unknown:$f;;
esac
done < myfile
