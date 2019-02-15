#!/bin/bash
file=/TEMPO/compliance/MCX/CO/* #location of the file
for i in $file
do
        du -csh $file/20190211 #to know size of perticular file
break
done

