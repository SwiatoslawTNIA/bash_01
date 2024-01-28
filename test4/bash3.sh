#!/bin/bash
#The program tests if a specific user is a current user, then outputs the command:
user=swiatoslaw
if [ $USER = $user ] 
then 
	echo Welcome $user
fi
if [ $USER != $user ] 
then 
	echo This is not $user
else
	echo This is $user
fi


