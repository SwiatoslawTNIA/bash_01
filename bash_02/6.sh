#!/bin/bash
#Displaying the contents of the file line per line:
exec 0<log_file_1.log

counter=1
while read line
do
	echo "Line $counter: $line"
       	counter=$[ $counter + 1 ] 
done


