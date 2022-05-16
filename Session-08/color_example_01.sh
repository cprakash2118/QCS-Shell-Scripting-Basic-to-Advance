#!/bin/bash
RED='\033[0;31m'
URED='\033[4;31m'
BRED='\033[1;31m'
GREEN='\033[0;32m'
BGREEN='\033[1;32m'
UGREEN='\033[4;32m'
NC='\033[0m'
for service_name in rsyslog sshd libvirtd named haproxy httpd
do
 systemctl status ${service_name} &> /dev/null
 check_service_status=$?
 if [ ${check_service_status} -eq 0 ]
  then
    #echo -e "Service status - ${service_name}    \t\t\t ${GREEN}[ OK ]${NC}"
    printf "Service status - ${service_name}   \t\t\t ${BGREEN}[ OK ]${NC} \n"
  else 
    #echo -e "Service status - ${service_name}  \t\t\t ${BRED}[ Failed ]${NC} \n"
    printf "Service status - ${service_name}  \t\t\t ${BRED}[ Failed ]${NC} \n"
 fi
done

