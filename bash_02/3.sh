#!/bin/bash
#Testing the read again:
if read -t 5 -p "Enter your name please" name 
then
  echo "Hi, $name, how are you today???"
else
  echo "Sorry, could you provide your name next time???"
fi

