#!/bin/bash
. /root/QCS-Shell-Scripting-Basic-to-Advance/Session-08/color_example_fun.sh
#for service_name in rsyslog sshd libvirtd named haproxy httpd
#for service_name in rsyslog `cat services_list`
echo -e "Provide service list here then press 'Enter' and 'Ctrl + d' \n"
for service_name in rsyslog `cat`
do
 systemctl status ${service_name} &> /dev/null
 check_service_status=$?
 if [ ${check_service_status} -eq 0 ]
  then
  green_output "${service_name}"| tee -a  /var/log/services_check.log
  else 
  red_output "${service_name}"	  | tee  -a  /var/log/services_check.log
 fi
done

