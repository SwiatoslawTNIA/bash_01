#!/bin/bash
#The task is to create a folder with 5 temp files, store values, display values, using the tee command:
temp_dir=$(mktemp -d directory.XXXXXX)
echo "Created a new directory at $temp_dir"
temp_file_1=$(mktemp $temp_dir/file_1.XXXXXX)
temp_file_2=$(mktemp $temp_dir/file_2.XXXXXX)
temp_file_3=$(mktemp $temp_dir/file_3.XXXXXX)
temp_file_4=$(mktemp $temp_dir/file_4.XXXXXX)
#Open 4 channels simult:
#Now temp_file_1 points to that location
#reset the stdout, :
exec 3>&1
exec 1>/dev/null
#Write data:
echo "Something to write to" | tee $temp_file_1
echo "Something to write to" | tee $temp_file_2
echo "Something to write to" | tee $temp_file_3
echo "Something to write to" | tee $temp_file_4

#Display:
#reset the stdout:
exec 1>&3
echo "Displaying the contents of the dir \"$temp_dir\":" 
ls -alF $temp_dir
cat $temp_file_1
cat $temp_file_2
cat $temp_file_3
cat $temp_file_4
#remove the files:
echo "Removing the data:"
rm -fr $temp_dir


