#!/bin/bash
for x in {1..10}
do
 for y in $(eval echo {1..${x}})
 do
 echo  -n "*"
 done
 echo 
done 
