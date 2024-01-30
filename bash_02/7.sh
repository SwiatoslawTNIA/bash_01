#!/bin/bash
#store the STDOUT and then come back for it:
exec 3>&1
exec 1>file_name
echo "This text goes inside a file"
echo "Another one"
echo "And another one"
exec 1>&3
echo "This is displayed on the monitor"
echo "Closing..."
