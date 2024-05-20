#!/bin/bash

# System information
echo "System Report"
echo "---------------------"
echo "Memory: $(free -h | awk '/^Mem:/ {print $2}')"
echo "Processor: $(uname -p)"
echo "Disk Space: $(df -h /mnt/c | awk 'NR==2 {print $4}') available"
#This is for my WSL, shows the free space in /mnt/c
#To change for Linux, uncomment the commented command, and comment the uncommented :P
#echo "Disk Space: $(df -h / | awk 'NR==2 {print $4}') available"
