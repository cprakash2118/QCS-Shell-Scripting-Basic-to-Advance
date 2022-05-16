#!/bin/bash
. /root/QCS-Shell-Scripting-Basic-to-Advance/Session-07_functions/function_example_02.sh
number1=$1
number2=$2
number3=$3
fun1 "$number1"
sep_star
fun2 "$number1" "$number2"
sep_star
fun3 "$number1" "$number2" "$number3"

