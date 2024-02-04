#!/bin/bash
#Trapping two different ways:
trap "echo 'I\'ve trapped the CTRL+C" SIGINT
count=1
while [ $count -le 5 ] 
do
	sleep 1
	echo "A loop num #$count"
	count=$[ $count + 1 ]
done
trap "echo 'Modified'" SIGINT
count=1
while [ $count -le 5 ]
do
	echo "A loop num #$count"
	count=$[ $count + 1 ]
	sleep 2
done
