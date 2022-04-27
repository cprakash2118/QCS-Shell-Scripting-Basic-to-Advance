#!/bin/bash
read -p "Enter the 1st value: " num1
read -p "Enter the 2nd value: " num2
###
if test ${num1} -eq ${num2} 
#if [ ${num1} -eq ${num2} ]
 then
  echo "Both given numers are equal"
  echo "This is 1st statement"
else
  echo "Both numbers are not equal, else statement of 1st if"
fi
echo "-------------------"
##
if [ ${num1} -gt ${num2} ]
 then
  echo "\${num1}=${num1} is greater than \${num2}=${num2}"
  echo "This is 2nd statement"
else
  echo " else statement of 2nd if"
fi
echo "-------------------"
##
if [ ${num1} -lt ${num2} ]
 then
  echo "\${num1}=${num1} is less than \${num2}=${num2}"
  echo "This is 3rd statement"
else
  echo " else statement of 3rd if"
fi
echo "-------------------"
##
if [ ${num1} -ne ${num2} ]
 then
  echo "Both given numers are not equal"
  echo "This is 4th statement"
else
  echo " else statement of 4th if"
fi
echo "-------------------"
