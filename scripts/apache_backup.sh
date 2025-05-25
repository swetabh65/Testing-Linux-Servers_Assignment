#!/bin/bash

BACKUP_DATE=$(date +'%Y-%m-%d')
BACKUP_FILE="/backups/apache_backup_${BACKUP_DATE}.tar.gz"
LOG_FILE="/backups/apache_backup_${BACKUP_DATE}.log"

tar -czf "$BACKUP_FILE" /etc/httpd/ /var/www/html/ 2>>"$LOG_FILE"

echo "Backup created: $BACKUP_FILE" >> "$LOG_FILE"
echo "Verifying contents..." >> "$LOG_FILE"
tar -tzf "$BACKUP_FILE" >> "$LOG_FILE" 2>>"$LOG_FILE"

