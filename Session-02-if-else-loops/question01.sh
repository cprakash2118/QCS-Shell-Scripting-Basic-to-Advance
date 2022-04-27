#!/bin/bash
status_check=abc
failure_count=0

while [ "$status_check" == "abc" ]
do
read -p "Enter the user name: " name 
read -p "Enter the password : " pass

if [ "${name}" == "root" ] && [ "${pass}" == "redhat123" ]
 then  
  echo "Welcome ${name} "
  status_check=xyz
else
  echo -e "User name or password not correct\n"
  status_check=abc
  failure_count=$[${failure_count} + 1]
  if [ ${failure_count} -eq 3 ]
  then
   clear 
   echo "You have entered more than 3 time wrong user name or password, please try after sometime"
   sleep 10
   failure_count=0

  fi
fi
done
