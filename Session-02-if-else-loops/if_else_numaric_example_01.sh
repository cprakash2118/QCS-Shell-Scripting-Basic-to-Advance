#!/bin/bash
read -p "Enter the 1st number: " num1 
read -p "Enter the 2nd number: " num2
if test ${num1} -eq ${num2} 
#if [ ${num1} -eq ${num2} ]
 then
  echo "Both given numers are equal"
else
  echo "Both given numers are not equal"
fi
  
