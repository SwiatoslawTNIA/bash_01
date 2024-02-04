#!/bin/bash
#Now let's work with functions:
#There are two different syntaxes, let's try the first one:
c=1
function call_me
{
	file=example.txt
	echo "Will you call me?"
	echo "Creating a file a $c time"
	if [ ! -f "$file" ];then
		touch $file
	fi
	c=$[ $c + 1 ]
}

count=1
while [ $count -le 2 ]
do
	call_me
	count=$[ $count + 1 ]
done
echo "Testing the exit status of a function: $?"
function two
{
	ls -lFa badguy
}
two
echo "The exit status: $?"
#We can use  a return statement