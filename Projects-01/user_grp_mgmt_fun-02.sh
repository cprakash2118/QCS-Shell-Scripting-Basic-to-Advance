#!/bin/bash
## Print/Display help - About the interface.

## 1st display function
function display_help () {
file_name_grp="groups_list_details.txt"
 echo "Internal usage: interface-name [group_name] [group_id]"
 echo "Uasge: interface-name <file_name>"
 }

## Start Group add function 
function grp_add (){
file_name_grp=$1
IFS=$'\n'
for line_by_line in `cat ${file_name_grp}`
 do
  IFS=","
  count=0
  for line_vlaue_one_by_one in ${line_by_line}
  do
  count=$[${count} + 1]	  
  done
   total_no_of_arguments=$count 


	 argu_1st=$(echo "${line_by_line}" | awk -F"," '{print $1}')
	 argu_2nd=$(echo "${line_by_line}" | awk -F"," '{print $2}')
  if [ ${total_no_of_arguments} -eq 2 ]
  then 
   #groupadd -g ${argu_2nd} ${argu_1st} 
    if [ -n ${argu_1st} ] && [ -n ${argu_2nd} ]
      then
      echo "groupadd -g ${argu_2nd} ${argu_1st}"
    fi
 fi  
done
}
## End Group add function 

## User add function.
function user_add (){
file_name_user=$1
IFS=$'\n'
for line_by_line in `cat ${file_name_user}`
 do
         argu_1st=$(echo "${line_by_line}" | awk -F"," '{print $1}')
         argu_2nd=$(echo "${line_by_line}" | awk -F"," '{print $2}')
         argu_3rd=$(echo "${line_by_line}" | awk -F"," '{print $3}')
         argu_4th=$(echo "${line_by_line}" | awk -F"," '{print $4}')
         argu_5th=$(echo "${line_by_line}" | awk -F"," '{print $5}')
  IFS=","
  count=0
  for line_vlaue_one_by_one in ${line_by_line}
  do
  count=$[${count} + 1]
  done
   total_no_of_arguments=$count
   if [ ${total_no_of_arguments} -eq 4 ]
   then
   if [ -n ${argu_1st} ] && [ -n ${argu_2nd} ]
    then
   echo "useradd -u ${argu_2nd} -g ${argu_3rd} -c ${argu_4th}  ${argu_1st}"
   fi
  fi
done
}
## End User add function.

############### FUn call 
input_status=$1
if [ "${input_status}" ==  "help"  ]
 then
  display_help

elif [ -f ${input_status} ]
then
 grp_add "${input_status}"
user_add "${input_status}"
fi
