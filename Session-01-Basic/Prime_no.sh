#!/bin/bash
read -p "Enter the no: " num
count_status=2
half_num=$[${num} / 2]
for one_by_one in $(eval echo {2..${half_num}})
 do
  check_prime_no=$[${num} %  ${one_by_one}]
  if [ ${check_prime_no} -eq 0 ]
   then 
     count_status=$[${count_status} + 1 ]
  fi
done
 if [ $count_status -eq 2 ]
  then
   echo "This is a Prime no: $num"
  else
   echo "This is a not Prime no: $num"
 fi
	
