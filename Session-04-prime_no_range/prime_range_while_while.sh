#!/bin/bash
read -p "Enter the 1st number : " num1
read -p "Enter the 2nd number : " num2
echo "List of prime number between ${num1} to ${num2}."
#for outer_loop_one_by_one in $(eval echo "{${num1}..${num2}}")
while [ ${num1} -le ${num2} ]
do

#############################################################
   half_the_number=$[${num1} / 2 ]
   count=1
   number=1
   while [ ${number} -le ${half_the_number} ]
   do
    check_prime_number=$[${num1} % ${number} ]
    if [ ${check_prime_number} -eq 0 ]
    then
	count=$[${count} + 1]
    fi
    number=$[${number} + 1]
   done
#############################################################
   if [ $count -eq 2 ] 
    then
      echo "$num1"
   fi
 num1=$[${num1} + 1]
done
