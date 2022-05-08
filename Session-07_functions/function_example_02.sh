#!/bin/bash 
function fun1() {
	num1=$1
	echo "This is functon 1st"
	echo "This is functon 1st, with only one argument - $num1"
}
function fun2() {
	num1=$1
	num2=$2
	echo "This is functon 2nd"
	echo "This is functon 2nd, with 1st argument - $num1"
	echo "This is functon 2nd, with 2nd argument - $num2"
}
function fun3() {
	num1=$1
	num2=$2
	num3=$3
	echo "This is functon 3rd"
	echo "This is functon 3rd, with 1st argument - $num1"
	echo "This is functon 3rd, with 2nd argument - $num2"
	echo "This is functon 3rd, with 3nd argument - $num3"
}
