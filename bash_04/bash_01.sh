#!/bin/bash
#Testing the at command scheduler:
#We have to redirect the output
file=/home/swiatoslaw/Documents/schell_scripting/bash_04/log.txt:
exec 1>$file
exec 2>error.txt
echo "Some very important scripting message" >> &1 
#Append to the stdout
echo "This is another example" >> &1
#Also append to stdout

