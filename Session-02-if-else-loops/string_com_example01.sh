#!/bin/bash
read -p "Enter the user name: " name 
read -p "Enter the password : " pass
if [ "${name}" == "root" ] && [ "${pass}" == "redhat123" ]
 then  
  echo "Welcome ${name} "
else
  echo "User name or password not correct"
fi
