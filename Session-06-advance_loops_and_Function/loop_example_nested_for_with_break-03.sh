#!/bin/bash
count=0
for x in {201..203}
do
  echo "When value of \$x=$x , then values of b are"
  count=$[$count +1]
for a in {1..5}
 do
  echo "When value of \$a=$a , then values of b are"
  count=$[$count +1]
  for b in {101..103}
  do
   if [ $a -eq 2 ]
    then
     #break 2 
     break 3
   fi
   count=$[$count +1]
   echo "Value of b is : \$b=$b"
  done
 done
done
 echo "Total execution $count"
