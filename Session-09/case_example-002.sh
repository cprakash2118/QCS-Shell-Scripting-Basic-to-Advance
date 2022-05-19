#!/bin/bash
read -p "Enter the valid user: " name 

case $name in 
  root | admin )
   echo "Welcome User - $name" 
   echo "Please review the logs"
   echo "Also review audit logs" ;;

  john )
   echo "It's normal account, - programmer" ;;

  tom ) 
   echo "It's normal account, - Management" ;;
  * ) 
    echo "Not a valid account"
    echo "Try after sometime with some valid account" ;;
esac
###############
variable=abc or xyz or 123 or 456
#case $variable in 
#    abc | xyz  )
#    echo "Action" ;;
#    123 )
#    echo "Action";;
#    456 ) 
#    echo "Actio" ;;
#    * )
#    echo "Action" ;;
#esac


