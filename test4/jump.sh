#!/bin/bash
#Jump to the dir if it exists:
cur_dir=$PWD
if [ -d cur_dir ]
then 
	echo current dir is: $cur_dir
	echo moving to /home/usr
	cd /home/$USER
	ls -lFa
elif [ -d /home/$USER ]
then
       echo current dir is: /home/$USER
	echo moving to /home/$USER/Documents/shell_scripting/Start
 	cd /home/$USER/Documents/shell_scripting/Start
fi


