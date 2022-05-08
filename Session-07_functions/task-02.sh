#!/bin/bash
. /root/QCS-Shell-Scripting-Basic-to-Advance/Session-07_functions/function_example_02.sh
number1=$1
number2=$2
number3=$3
fun1 "$number1"
fun2 "$number1" "$number2"
fun3 "$number1" "$number2" "$number3"

