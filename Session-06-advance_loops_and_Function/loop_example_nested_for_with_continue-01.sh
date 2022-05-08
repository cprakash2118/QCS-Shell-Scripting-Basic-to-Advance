#!/bin/bash
for x in {1..10}
do
 if [ $x -eq 5 ]
 then
   continue 
   #break 
 fi
 echo $x
done
