#!/bin/bash
function check_rhel8 () {
#check_rhel_version=$(cat /etc/redhat-release  | awk -F" " '{print $4}' | awk -F"." '{print $1}')
check_rhel_version=6
if [ $check_rhel_version -eq 8 ]
then
  return 0
else
  return 11
fi
}
