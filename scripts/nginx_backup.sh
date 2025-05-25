#!/bin/bash

DATE=$(date +%F)
BACKUP_DIR="/backups"
LOG_FILE="$BACKUP_DIR/nginx_backup_${DATE}.log"
BACKUP_FILE="$BACKUP_DIR/nginx_backup_${DATE}.tar.gz"

{
  echo "[$(date)] Starting Nginx backup..."

  tar -czf "$BACKUP_FILE" /etc/nginx/ /usr/share/nginx/html/

  echo "[$(date)] Backup created: $BACKUP_FILE"
  echo "[$(date)] Verifying backup contents:"
  tar -tzf "$BACKUP_FILE"

  echo "[$(date)] Backup verification successful"
} &> "$LOG_FILE"

