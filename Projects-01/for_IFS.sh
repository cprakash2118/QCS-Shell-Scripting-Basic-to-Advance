#!/bin/bash
#IFS.OLD=$IFS
IFS=$'\n'
for entry in `cat file1.txt`
do
echo "Values in |$entry|"
IFS=' '
for value in $entry
do
echo " |$value|"
done
done
