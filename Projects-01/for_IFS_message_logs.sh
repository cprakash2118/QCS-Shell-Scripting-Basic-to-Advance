#!/bin/bash
#IFS.OLD=$IFS
IFS=$'\n'
for entry in `cat /var/log/messages`
do
#echo "Values in |$entry|"
IFS=' '
for value in $entry
do
#echo " |$value|"
  if [ ${value} == "failed" ] || [ ${value} == "error" ]
   then
    echo "$entry"
  fi 
done
done
