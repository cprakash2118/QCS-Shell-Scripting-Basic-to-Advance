#!/bin/bash
. /root/QCS-Shell-Scripting-Basic-to-Advance/Session-07_functions/prime_no_fun.sh
num1=$1
num2=$2
#while [ ${num1} -le ${num2} ]
until [ ${num1} -ge ${num2} ]
do
prime_no_until "$num1"
num1=$[${num1} + 1]
#echo $one_by_one
done
