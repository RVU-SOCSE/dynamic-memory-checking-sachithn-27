#!/bin/bash

while true; do
    clear

    mem_info=$(free -m)
    total_mem=$(echo "$mem_info" | awk '/Mem:/ {print $2}')
    used_mem=$(echo "$mem_info" | awk '/Mem:/ {print $3}')
    available_mem=$(echo "$mem_info" | awk '/Mem:/ {print $7}')

    usage_percent=$((used_mem * 100 / total_mem))

    echo "===== Memory Usage (Updated: $(date)) ====="
    echo "Total Memory     : ${total_mem} MB"
    echo "Used Memory      : ${used_mem} MB"
    echo "Available Memory : ${available_mem} MB"
    echo "Usage Percentage : ${usage_percent}%"

    sleep 5
done
