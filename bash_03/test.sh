#!/bin/bash
#Testing the nohup app:
count=1;
while (( count <= 5))
do
	sleep 5
	echo "Thue current loop number: #$count"
	count=$[ $count + 1]
done
#Now start the script using background mode  + nohup;
