#!/bin/bash
read -p "Enter the number: " num
check_no=$[${num} % 2]
if [ ${check_no} -ne  0 ]
 then
   echo "This is odd"
 else
   echo "This is an even number"
fi
