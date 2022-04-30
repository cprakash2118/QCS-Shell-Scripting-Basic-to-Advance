#!/bin/bash
count=0
count2=0
for x in {1..5}
do
 count=$[$count +1]
 for y in {1..5}
 do 
 count2=$[$count2 +1]
 done
 done
 sum=$count+$count2
 echo $sum
