#!/bin/bash
check_status=true
failure_count=0
while [ "${check_status}" == "true" ]
do
 read -p "Enter the user name: " name 
 read -p "Enter the password : " pass
  if [ "${name}" == "root" ] && [ "${pass}" == "redhat123" ]
   then
    check_status=false
    echo "Welcome user, ${name}"
  else
    check_status=true
    failure_count=$[${failure_count} + 1]
   echo -e "Wrong password or user, Please try again !!\n"
   if [ $failure_count  -eq 3 ]
    then
        echo -e "Wrong password multiple times, Please try again after sometime !!\n"
	sleep 10
	failure_count=0
   fi
fi
done
