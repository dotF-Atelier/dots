#!/bin/bash
NOW=$(date +"%Y-%m-%d_%H:%M:%S")

BACKUP_DIR="/home/backup"

if [ ! -e $BACKUP_DIR ]; then
    mkdir -p $BACKUP_DIR
fi

cd /home
/sbin/btrfs subvolume snapshot /home "${BACKUP_DIR}/backup_${NOW}"

