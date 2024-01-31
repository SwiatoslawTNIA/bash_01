#!/bin/bash
#Intercept the SIGINT signal:
trap "echo 'Sorry, Ctrl + C is blocked' echo Hi, hi, hi" SIGINT 
trap "echo 'Sorry, SIGHUP is also blocked" SIGHUP
count=1
while [ $count -le 10 ]
  do 
    echo "This is the #$count message"
    sleep 10 
    $count = $[ $count + 1 ]
  done