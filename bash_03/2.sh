#!/bin/bash
#Create a temp file, write content, display content, delete file:
temp=$(mktemp -t x.XXXXXX)
exec 3>$temp
echo "Text" >3
echo "Another line" >3
echo "The file was created at $temp"
cat $temp
rm -f $temp
exit
