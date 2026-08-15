#!/bin/bash

#-e = exit if anything fails = set -e
#-u = if any variable is unused = set -u
#-o pipefail = if any command results in error = set -o pipefail

#set -euo pipefail



set -e 

file="file.txt"
dir="/tmp/devops-test"
mkdir -p $dir || echo "directory exist"
cd $dir || echo "could not enter directory"
touch $file 

echo "file can not be created"



<<'comment'

set -e

touch /root/file.txt

echo "This will not print"

comment
