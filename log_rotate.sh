#!/bin/bash


set -euo pipefail

log_dir="$1"

if [[ ! -d $log_dir ]];then 
	echo "Error: direectory does not exist"
	exit 1
fi


compress="$(find "$log_dir" -name "*.log" -type f -mtime +7 | wc -l)"

find $log_dir -name "*.log" -type f -mtime +7 -exec gzip {} \;


delete="$(find "$log_dir" -name "*.gz" -type f -mtime +30 | wc -l)"

find $log_dir -name "*.gz" -type f -mtime +30 -delete ;


echo "total no of files commpressed : $compress"
echo "total no of files deleted : $delete"

