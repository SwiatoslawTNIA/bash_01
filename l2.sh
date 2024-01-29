#!/bin/bash
#move through each file:
dir=/home/swiatoslaw/Documents/*
for file in $dir; do
	if [ -d $file ] 
	then 
		echo "$file is a directory"
	elif [ -f $file ] 
	then 
		echo "$file is a file"
	fi
done

#Testing the C-style loops:
for ((a = 0; a < 20; ++a))
do
	echo the current element is $a
done


