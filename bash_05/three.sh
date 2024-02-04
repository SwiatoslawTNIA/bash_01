#!/bin/bash
#Demonstrating the local keyword:
function define
{
  result=$[ $1 + $2 ]
  local mimic=$[ $1 + $2 ]
}
#
result=1;
mimic=2;
echo "Result, current value: $result"
echo "Mimic, current value: $mimic"
define 40 60
echo "After function"
echo "Result, current value: $result"
echo "Mimic, current value: $mimic"