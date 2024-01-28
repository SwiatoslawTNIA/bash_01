#!/bin/bash
#Misuse of the if statement:
val1=string1
val2=string2
if [ $val1 \> $val2 ] 
then
	echo $val1 is bigger than $val2
else
	echo $val1 is less than $val2
fi

