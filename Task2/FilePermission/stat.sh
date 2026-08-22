#!/bin/bash

#It displays detailed information about files or file systems
stat filename.txt
#It returns information about filesystem
stat -f filename.txt
#Showing only a file type:
stat --format="%F" /dev/null
stat --format="%F" filename.txt
stat --format="%n,%F" filename.txt
#It returns name and permission of files
stat --printf='Name: %n\nPermissions: %a\n' filename.txt
#It displays information in terse form
stat -t filename.txt