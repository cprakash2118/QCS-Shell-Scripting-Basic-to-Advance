#!/bin/bash
function rhel_check() {
#check_rhel=$(cat /etc/redhat-release | awk -F" " '{print $4}'| awk -F"." '{print $1}')
check_rhel=6
if [ ${check_rhel} -eq 8 ]
 then 
   return 0
else
   return 112
fi
  }


