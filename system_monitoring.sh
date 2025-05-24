#!/bin/bash
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M")
df -h > /var/log/dev-monitoring/disk_usage_$TIMESTAMP.log
sudo du -ah /home | sort -rh | head -n 20 > /var/log/dev-monitoring/large_dirs_$TIMESTAMP.log
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 10 > /var/log/dev-monitoring/top_cpu_$TIMESTAMP.log
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 10 > /var/log/dev-monitoring/top_mem_$TIMESTAMP.log

