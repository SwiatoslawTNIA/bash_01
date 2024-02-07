#!/bin/bash
#A config file contains all the files to be gzipped
#A stdin change to $CONFIG_FILE:
FILE_EXISTS



exec < $CONFIG_FILE
read $FILE_NAME
while [ $? -eq 0 ]
do
#When the read command hits the EOF, it returns 1, so the loop is exited at that point
#1.Check if the directory exists, if it does, it is added to the dir lilst FILE_LIST:
	#something
	read $FILE_NAME
	if [ -f $FILE_NAME -o -d $FILE_NAME ]; then
		#If file exists, add its name to the list
		FILE_EXISTS ="$FILE_EXISTS $FILE_NAME"
	else
		#if the file doesn't exist, issue a warning:
		echo
		echo "The file $FILE_NAME does not exist"
		echo "(I won't include it in this archive."
		echo "It is listed on the line $LINE_NUM of the config file."
	fi


	LINE_NUM=$[ $LINE_NUM + 1 ]
	
done
#Central repository archive file at /archive
#1.Check if the directory exists, if it does, it is added to the dir lilst FILE_LIST:

	
	
	
	
tar -zcvf 
