#!/bin/bash
. /root/QCS-Shell-Scripting-Basic-to-Advance/Session-07_functions/prime_no_return_type.sh
num1=$1
num2=$2
for one_by_one in $(eval echo {${num1}..${num2}})
do
prime_no_for "$one_by_one"
if [ $? -eq 0 ]
then
  echo $one_by_one
fi  
#echo $one_by_one
done
