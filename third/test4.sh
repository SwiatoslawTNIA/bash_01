#!/bin/bash
#Using the if-then-else statements:
user=swiatoslaw
if grep swiatoslaw /etc/passwd; then
	echo The user $user exists on the system
	echo printing the bash files:
	ls -laF /home/$user/.b*
	exit 0
else
	echo The user $user was not found
	echo Exiting...
	exit 1
fi


