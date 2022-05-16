#!/bin/bash
RED='\033[0;31m'
URED='\033[4;31m'
BRED='\033[1;31m'
GREEN='\033[0;32m'
BGREEN='\033[1;32m'
UGREEN='\033[4;32m'
NC='\033[0m'
function green_output() {
   service_name_fun=$1
    printf "Service status - ${service_name_fun}   \t\t\t ${BGREEN}[ OK ]${NC} \n"
}
function red_output() {
   service_name_fun=$1
    printf "Service status - ${service_name_fun}  \t\t\t ${BRED}[ Failed ]${NC} \n"
}
