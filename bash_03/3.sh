#/bin/bash
#Create a temp dir, there create few files, store contents, display contents, delete dir:
#The dir in the current location:
temp_dir=$(mktemp -d directory.XXXXXX)
echo "The directory name is $temp_dir"
#Create temp files in that directory:
temp_file_1=$(mktemp $temp_dir/a.XXXXXX)
temp_file_2=$(mktemp $temp_dir/b.XXXXXX)
echo "The temp_file_1 was created at: $temp_file_1"
echo "The temp_file_2 was created at: $temp_file_2"
ls -lFa 
#Store some content:
exec 4>$temp_file_1
echo "Writing to file temp_1" >&4
echo "Contintue to write to temp_1" >&4
exec 4>&-
#Expression above closes the file descriptor 4
exec 4>$temp_file_2
echo "Now writing to temp_2" >&4
echo "Another line" >&4
#Display the input:
echo The $temp_file_1 contains:
cat $temp_file_1
echo The $temp_file_2 contains:
cat $temp_file_2
#Remove the files:
rm -rf $temp_dir
ls -alF
