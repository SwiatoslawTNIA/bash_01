#!/bin/bash
#Checking the exec file descriptor:
exec 3> testfile
echo This goes inside of testfile >&3

/usr/bin/lsof -a -p $$ -d 3
exec 3>&-
#Now the third channel is closed:
#Redirect the stderr to null file:
exec 2>/dev/null
echo "This won't go there" >&3
exit 
