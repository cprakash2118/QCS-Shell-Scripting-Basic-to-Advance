#!/bin/bash
array1=(1 2 3 4 5)
echo "Array is - ${array1[*]}"
total_element_of_an_array=${#array1[@]}
xyz=$[${#array1[@]} - 1]
echo "PRINT is message - $xyz"
length_of_array=$[${total_element_of_an_array} - 1]
echo "Length of the arry - ${length_of_array}"

echo "3rd value - ${array1[2]}"
echo "4rd value - ${array1[3]}"
echo "5rd value - ${array1[4]}"

for one_by_one_array_element in $(eval echo {0..${length_of_array}})
do
 count=$[${one_by_one_array_element} + 1 ]
  echo "$count value of given array - ${array1[${one_by_one_array_element}]}"
done
