#!/bin/bash
num1=$1
half_the_num1=$[${num1} / 2]
count=2
number=2
until [ ${number} -gt ${half_the_num1} ]
do
  check_prime_number=$[${num1} % ${number} ]
  if [ ${check_prime_number} -eq 0 ]
   then
     count=$[${count} + 1]
  fi
  number=$[${number} +1]
done
 if [ ${count} -ge 3 ]
  then 
    echo "It's not a prime number"
  else
    echo "It's prime number"
 fi

