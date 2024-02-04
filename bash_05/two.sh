#!/bin/bash
#Testing a function with return statement:
function experiment
{
  read -p "Type a value: " value
  echo "I'm doubling the value"
  return $[ $value * 2 ]
}
experiment
echo "The value that you entered is: $?"
#To extend the result and calculating possibilities:
function main
{
  read -p "Type: " value
  echo $[ $value * 3 ]
}
result=$(main)
echo "Result: $result"
#Function adds:
function adds
{
  if [ $# -eq 0 ] || [ $# -gt 2 ];then
    echo -1
  elif [ $# -eq 1 ];then
    echo $[ $1 + $1 ]
  else
    echo $[ $1 + $2 ]
  fi
}
res=$(adds 20)
res2=$(adds)
res3=$(adds 20 10)
res4=$(adds 30 40 50)
echo "The results: $res, $res2, $res3, $res4"

