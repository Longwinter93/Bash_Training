#!/bin/bash

#df - disk free
#It provides an overview of storage usage
#it reports filesystem-level disk space usage, showing total, used and available space for mounted filesystems
#It shows the big picture of filesystem usage, while du helps drill down into specific directories
#Showing total, used and available disk space for all mounted drives in an easy-to-read-format
#It checks available space
#It displays the size in a human-readable format
df -h
#It shows the filesystem type of each partition
df -Th
#It shows only filesystems of a specific type - list only ext4 partition
df -h -t ext4
#Exluding a specific filesystem type - tmpfs
df -h -x tmpfs
#It sums all filesystems at the bottom
df -h --total
#Displaying inode usage
df -ih /
#Selecting which columns to display
df -h -t ext4 --output=source,size,used
#Extracting the used percentage:
df -P / | awk 'NR==2 {print $5}'
#Extracting the size:
df -h -t ext4 --output=source,size,used | awk 'NR==2 {print$2}'
#Showing unique filesystems:
df -T | awk '{print $2}' | sort | uniq
#Looking for /dev/sdd only
df -a | grep '/dev/sdd'