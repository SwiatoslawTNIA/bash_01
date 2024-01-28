#!/bin/bash
#Check the files:
if [ -e susu ] 
then
	echo the file susu already exists
else
	echo creating file susu
	touch susu
fi

#check whether a file or directory exists:
# location=$HOME/Documents/shell_scripting/Start/first/bash.sh
# if [ -e $location ]
# then 
# 	echo The location $location does exist
# 	echo But is it a file?
# 	if [ -f $location ]
# 	then 
# 		echo The location $location is a file
# 		echo 
# 	else
# 		echo The location $location is a dir
# 	fi
# else
# 	echo The specified location $location does not exist
# fi
#check if the we can read the file:
file=/etc/passwd

if [ -e $file ] 
then
	if [ -r $file ]
	then
		echo You have the permission to read the file $file
		tail $file
	else
		echo You do not have the permission to read $file 
	fi
else
	echo The file does not exist.
fi

