#! /bin/bash

# Use rsync to copy a backup, using an FS-compatible ISO Datetime folder
rsync -avP /source/ /destination/$(date --utc +\%Y-\%m-\%dT\%H-\%M-\%SZ)/

# Backup rotation. List all backups and remove all except the last 20 (sorted by name / date)
ls /destination/ | head -n -20 | xargs -I "{}" rm -r /destination/{}