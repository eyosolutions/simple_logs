#!/bin/bash
# date -u +%Y-%m-%dT%H:%M:%S%Z
log_file="logs.txt"
err_file="errlogs.txt"
current_datetime=$(date +"%Y-%m-%d %H:%M:%S")
cur_log="Log entry at ${current_datetime}"

# echo "$(date -u +%Y-%m-%dT%H:%M:%S%Z)" >> $log_file
# result=$(echo $cur_log >> $log_file 2>&1)
echo $cur_log >> $log_file
result=$?
if [ $result -eq 0 ]; then
  # logging successful logs is optional but practice purposes
  echo "Log entry was added successfully at ${current_datetime}." >> $err_file
else
  echo "Error occurred while logging at ${current_datetime}." >> $err_file
fi
