#!/bin/bash
num1=$1
for x in $(eval echo {1..${num1}})
do
  echo $x
done
