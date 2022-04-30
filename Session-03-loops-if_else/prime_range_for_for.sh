#!/bin/bash
read -p "Enter the 1st number: " num1 
read -p "Enter the 2nd number: " num2
echo "List of prime number between ${num1} to ${num2}"

for outer_loop in $(eval echo "{${num1}..${num2}}")
  do
count=2
half_the_num1=$[${outer_loop} / 2]

for number_one_by_one in $(eval echo "{2..${half_the_num1}}")
do
  check_prime_number=$[${outer_loop} % ${number_one_by_one}]
  if [ ${check_prime_number} -eq 0 ]
   then
      count=$[${count} + 1]
  fi
done
 if [ ${count} -lt 3 ]
  then
    echo $outer_loop
 fi

done

