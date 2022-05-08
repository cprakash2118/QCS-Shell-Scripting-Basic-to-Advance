#!/bin/bash
. /root/QCS-Shell-Scripting-Basic-to-Advance/Session-07_functions/prime_no_fun.sh
num1=$1
num2=$2
for one_by_one in $(eval echo {${num1}..${num2}})
do
prime_no_for "$one_by_one"
#echo $one_by_one
done
