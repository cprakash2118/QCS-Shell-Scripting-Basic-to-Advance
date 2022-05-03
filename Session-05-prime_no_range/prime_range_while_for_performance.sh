#!/bin/bash
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
 count=1
 half_the_number=$[${number} / 2]
 for one_by_one in $(eval echo "{1..${half_the_number}}")
 do
   check_prime_number=$[${number} % ${one_by_one}]
   if [ ${check_prime_number} -eq 0 ]
   then
     count=$[${count} + 1]
   fi
    if [ ${count} -gt 2 ]
    then
      break
    fi
 done
 fi 
  if [ ${count} -eq 2 ]
  then
    echo ${number}
  fi
 number=$[${number} +1]
done 

