#!/bin/bash
echo "Enter 2 numbers"
read a b
function add()
{
sum=$(($a + $b))
echo "Sum=$sum"
}
#echo "Sum=$sum"
add $a $b
