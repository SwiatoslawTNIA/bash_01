#!/bin/bash
#How the params @$ and $* work:
count=1
for param in $*
do 
	echo Param: $count, value: "$param"
	count=$(( $count + 1 ))
done
count_1=1
for param in "$@"
do 
	echo Param: $count_1, value: "$param"
	count_1=$(( $count_1 + 1 ))
done 
# #A test for the shift:
# count=1
# while [ -n "$1"]
# do
# 	echo "Param $count: $1"
# 	count=$[ $count + 1]
# 	shift
# done
while [ -n "$1" ]
do 
	case "$1" in
	-a) echo Found the param A;;
	-b) echo Found the param B;;
	-c) echo Found the param C;;
	*) echo Not a param;;
	esac
	shift
done


