#!/bin/bash
##### This is 1st Function using for 
function prime_no_for() {
num_fun1=$1
half_the_num1=$[${num_fun1} / 2]
count=1 
for number_one_by_one in $(eval echo "{1..${half_the_num1}}")
do
  check_prime_number=$[${num_fun1} % ${number_one_by_one}]
  if [ ${check_prime_number} -eq 0 ]
   then
      count=$[${count} + 1]
  fi
done
 if [ ${count} -eq 2 ]
  then 
    #echo "$num_fun1"
    return 0
  else
    return 11
 fi
}

##### This is 2nd Function using while
function prime_no_while() {
num_fun1=$1
half_the_num1=$[${num_fun1} / 2]
count=1 
number=1
while [ ${number} -le ${half_the_num1}  ]
 do
   check_prime_number=$[${num_fun1} % ${number}]
   if [ ${check_prime_number} -eq 0 ]
    then
     count=$[${count} + 1]
   fi
  number=$[${number} + 1]
done
 if [ ${count} -eq 2 ]
  then 
    #echo "$num_fun1"
    return 0
 fi
} 


##### This is 3rd Function using until
function prime_no_until() {
num_fun1=$1
half_the_num1=$[${num_fun1} / 2]
count=1 
number=1
until [ ${number} -gt ${half_the_num1} ]
do
  check_prime_number=$[${num_fun1} % ${number} ]
  if [ ${check_prime_number} -eq 0 ]
   then
     count=$[${count} + 1]
  fi
  number=$[${number} +1]
done
 if [ ${count} -eq 2 ]
  then 
    #echo "$num_fun1"
    return 0
 fi
}
