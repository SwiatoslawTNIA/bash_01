#!/bin/bash
#A script that creates a window:
function menu
{
  clear
  echo
  echo -e "\t\t\tSys Admin Menu"
  echo -e "\t1.Display disk space"
  echo -e "\t2.Display logged users"
  echo -e "\t3.Display memory usage"
  echo -e "\t0.Exit menu\n\n"
  echo -en "\tEnter option: "
}
function reading
{
  read -n 1 value
  echo $value
}
function diskSpace
{
  clear 
  echo -e "\t\t\t\tOutput: "
  df -k
  exit
}
function displayLogged
{
  clear
  echo -e "\t\t\t\tOutput: "
  who
  exit
}
function displayMemory
{
  clear
  echo -e "\t\t\t\tOutput: "
  cat /proc/meminfo
  exit
}
#echo the value, so we can later catch it
menu
answer=$(reading)
while [ 1 ] 
do
  case $answer in
  0) 
    clear
    exit;;
  1) 
    diskSpace;;
  2)
    displayLogged;;
  3)
    displayMemory;;
  *)
    clear
    echo "Sorry, wrong selection, choose the correct option:"
    menu
    answer=$(reading)
  esac
done


