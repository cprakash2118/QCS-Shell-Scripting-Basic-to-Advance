#!/bin/bash
read -p "Enter the 1st no: " num1
read -p "Enter the 2nd no: " num2
for top_loop_no in $(eval echo {${num1}..${num2}})
do
count_status=2
#half_num=$[${num} / 2]
half_num=$[${top_loop_no} / 2]
for one_by_one in $(eval echo {2..${half_num}})
 do
  #check_prime_no=$[${num} %  ${one_by_one}]
  check_prime_no=$[${top_loop_no} %  ${one_by_one}]
  if [ ${check_prime_no} -eq 0 ]
   then 
     count_status=$[${count_status} + 1 ]
  fi
done
 if [ $count_status -eq 2 ]
  then
   echo "This is a Prime no: $top_loop_no"
 fi
done
