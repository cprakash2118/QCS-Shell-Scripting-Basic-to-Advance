#!/bin/bash
read -p "Enter the number: " num
check_no=$[${num} % 2]
if [ ${check_no} -eq  0 ]
 then
   echo "This is even"
 else
   echo "This is an odd number"
fi
