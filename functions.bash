#!/bin/bash
<<<<<<< HEAD
function fun1 {
	echo " This is an example of a function"
}

count=1
while [ $count -le 5 ]
do 
	fun1
	count=$[ $count + 1 ]
done
=======
func ()
{
  echo "First version of func ()."
}

func1 ()
{
  echo "Second version of func ()."
}

func   # Second version of func ().
func1
exit $?

>>>>>>> 7819ba031dc78491e08052e10a6ec86a58bed6f7
