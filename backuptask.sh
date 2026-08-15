#!/bin/bash

set -eo pipefail

source_dir="$1"
backup_dir="$2"
timestamp="$(date +%y-%m-%d_%h-%m-%s)"
backup_file_name="$backup_dir/backup_$timestamp.tar.gz"


tar -czf "$backup_file_name" "$source_dir"

# Verify backup
if [[ -f $backup_file_name ]];then
	echo " backup craeted successfully"
	echo " backup file name : $backup_file_name "
	echo " its size : $(du -h $backup_file_name)"

else
	echo " Error: backup failed"
       exit 1
fi   

# Delete backups older than 14 days
find "$backup_dir" -name "backup_*.tar.gz" -type f -mtime +14 -delete

echo "Old backups deleted."
