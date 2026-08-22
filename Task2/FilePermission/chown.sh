#!/bin/bash

#change permission
#Change File Ownership - chown
#It changes both user and group

ls -l filename.txt
#List of users
#cat /etc/passwd
#Change the owner of a file
chown luno filename.txt
ls -l filename.txt
chown luno filename.txt foldername
#Change the owner to a luno user and change the new group to newgroup
chown luno:newgroup filename.txt
#Change the group of a file name to thi group:
chown :group filename.txt
#Change the ownership of the symlink itself
chown -h group symlink1
#Change ownership recursively
chown -R newgroup: foldername/
#It copies the owner and group from another file:
chown --reference=filename.txt filename2.txt