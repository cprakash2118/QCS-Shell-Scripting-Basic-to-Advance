#!/bin/bash
count=0
for a in {1..5}
 do
  echo "When value of \$a=$a , then values of b are"
  count=$[$count +1]
  for b in {101..103}
  do
   count=$[$count +1]
   if [ $a -eq 2 ]
    then
     break 
   fi
   echo "Value of b is : \$b=$b"
  done
 done
 echo "Total execution $count"
