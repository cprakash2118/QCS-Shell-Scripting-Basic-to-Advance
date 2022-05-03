#!/bin/bash
. /root/QCS-Shell-Scripting-Basic-to-Advance/Session-05-prime_no_range/prime_fuc.sh
read -p "Enter the 1st number : " num1 
read -p "Enter the 2nd number : " num2
echo "List of prime number between ${num1} to ${num2}."
number=${num1}
while [ ${number} -le ${num2} ]
do
 if [ ${number} -le 1 ]
 then
  count=1
 else
 prime_for	# Function caling

 fi 
  if [ ${count} -eq 2 ]
  then
    echo ${number}
  fi
 number=$[${number} +1]
done 

