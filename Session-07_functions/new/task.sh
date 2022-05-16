#!/bin/bash
. /root/QCS-Shell-Scripting-Basic-to-Advance/Session-07_functions/new/check_rhel8.sh
#sleep 30
check_rhel8
status_code=$?
if [ $status_code -eq 0 ]
 then
  echo "This is version 8"
else
  
fi
