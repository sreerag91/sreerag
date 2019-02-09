#!/bin/bash
var1=200
var2=500
var3=$(echo "scale=5 ; $var1 / $var2 " | bc )
echo $var3
