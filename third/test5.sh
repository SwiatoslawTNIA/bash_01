#!/bin/bash
#Check if the user exists on the system and has a folder:
user=swiatoslaw
if grep $user /etc/passwd;then
	#if the user exists:
	echo The user $user exists on the system.
else 
	echo The user $user does not exist on the system.
fi
if ls /home/$user; then
	#if the user has a home folder:
	echo The user $user has a home directory at: /home/$user

else
	echo "The user $user doesn't have a home directory at /home/$user"
fi

