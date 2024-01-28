#!/bin/bash
#the -n is useful to determine if a value is empty:
val1=something
val2=''
if [ -n $val1 ]
then
	echo the value $val1 is not empty
else
	echo the value $val1 is emtpy
fi

if [ -n $val2 ]
then
	echo the value $val2 is not empty
else 
	echo the value $val2 is emtpy
fi
