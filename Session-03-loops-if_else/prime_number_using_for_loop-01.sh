#!/bin/bash
read -p "Enter the number: " num1
half_the_num1=$[${num1} / 2]
count=2 
for number_one_by_one in $(eval echo "{2..${half_the_num1}}")
do
  check_prime_number=$[${num1} % ${number_one_by_one}]
  if [ ${check_prime_number} -eq 0 ]
   then
      count=$[${count} + 1]
  fi
done
 if [ ${count} -ge 3 ]
  then 
    echo "It's not a prime number"
  else
    echo "It's prime number"
 fi
