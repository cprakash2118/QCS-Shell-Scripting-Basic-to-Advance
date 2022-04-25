#!/bin/bash
echo "*************** System Information ***************"
echo -e "Hostname:\t $(hostname)"
echo -e "Hostname:\t `hostname`"
#host=$(hostname)                               # This is USer Define variable 
host=$(uname -n )                               # This is USer Define variable 
echo -e "Hostname:\t $host"                    # Calling user define variable 
echo -e "Hostname:\t ${host}"                  # Calling user define variable
echo -e "Hostname:\t $HOSTNAME"                # Calling System Define variable
                                               # All system define variable are in upper case.
