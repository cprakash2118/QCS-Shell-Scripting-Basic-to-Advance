#!/bin/bash
## Print/Display help - About the interface.
function display_help () {
file_name_grp="groups_list_details.txt"
 echo "Internal usage: interface-name [group_name] [group_id]"
 echo "Uasge: interface-name <file_name>"
 }

## Group add function 
function grp_add (){
file_name_grp=$1
IFS=$'\n'
for line_by_line in `cat ${file_name_grp}`
 do
  IFS=","
  for line_vlaue_one_by_one in ${line_by_line}
  do
  total_no_of_arguments=$#
  argu_1st=$1
  argu_2nd=$2

   echo "This is for to check each line, each element - $line_vlaue_one_by_one"
   echo "This is for to check total no of argument - $total_no_of_arguments"

 if [ ${total_no_of_arguments} -eq 2 ]
  then  
   #groupadd -g ${argu_2nd} ${argu_1st} 
   echo "groupadd -g ${argu_2nd} ${argu_1st}"
   
  else 
   echo "Please pass argument as per instruction mentioned in help section."
 fi
 done 
done
}

############### FUn call 
input_status=$1
if [ "${input_status}" ==  "help"  ]
 then
  display_help

elif [ -f ${input_status} ]
then
 grp_add "${input_status}"
fi
