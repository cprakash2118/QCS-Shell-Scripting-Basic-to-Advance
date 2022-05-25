#!/bin/bash
val1=$1
val2=$2
total_argu=$#
function testing () {
echo "Total argument - $#"
echo "1st argument - $1"
echo "2nd argument - $2"
}
testing  2 3 4 5 
