#!/bin/bash
#if then statement:
value1=10
value2=11
if [ $value1 -lt 5 ] 
then
	echo Value $value1 is less than 5
fi
if [ $value1 -eq $value2 ]
then
	echo The two values: $value1 and $value2 are equivalent
else
	echo THe two values: $value1 and $value2 are not equivalent
fi

