#!/bin/bash

LOG_FILE="/var/log/maintenance.log"

echo "===== Maintenance started: $(date) =====" >> "$LOG_FILE"

log_rotate() {
    echo "Running log rotation..." >> "$LOG_FILE"
    /home/zeba/scripts/log_rotate.sh /home/zeba/scripts >> "$LOG_FILE" 2>&1
}

backup() {
    echo "Running backup..." >> "$LOG_FILE"
    /home/zeba/scripts/backup.sh /home/zeba/scripts /home/zeba/backup >> "$LOG_FILE" 2>&1
}

log_rotate
backup


