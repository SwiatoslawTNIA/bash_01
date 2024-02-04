#!/bin/bash
#Trapping two different ways:
echo "The process ID of the process you started is: $$"
count=1
while [ $count -le 5 ] 
do
        sleep 5
        echo "A loop num #$count"
        count=$[ $count + 1 ]
done
count=1
while [ $count -le 5 ]
do
        echo "A loop num #$count"
        count=$[ $count + 1 ]
        sleep 10
done

