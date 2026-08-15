#!/bin/bash

set -e


echo "starting backup.........."
SOURCE_DIR="/home/zeba/scripts"
BACKUP_DIR="/home/zeba/backup"
TIMESTAMP="$(date +%y-%m-%d_%h-%m_%s)"
BACKUP_FILE_NAME="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE_NAME" "$SOURCE_DIR"

echo "Backup done"
