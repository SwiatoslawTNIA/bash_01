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

if [ -f $file ] 
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
file=~/Documents/shell_scripting/Start/test4/jump.sh
if [ -f $file ] 
then
	if [ -s $file ]
	then
		echo The file $file contains data
		tail $file
	else
		echo The file $file is empty
	fi
else
	echo The file $file does not exist.
fi
#to check whether I own the /etc/passwd:
if [ -O /etc/passwd ]
then 
	echo You are the owner of /etc/passwd
else 
	echo Sorry, you are not the owner of the /etc/passwd
fi 

#testing compound comparisons:
new_file=/etc/passwd
if [ -d $new_file ] 
then 
	echo Sorry, the file $new_file is a dir.
else
	if [ -f $new_file ] && [ -r $new_file ];then 
		echo the file $new_file exists, it is a file and you can read it.
	elif [ -f $new_file ] &&  { [ -r $new_file ] || [ -x $new_file ]; }; then
		echo the file $new_file exists, and you can either write or execute it, or both.
	fi
fi