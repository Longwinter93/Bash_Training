#!/bin/bash

#It changes the permissions on a file. Symbolic Method & Numeric Method
#It changes the permission bits (read, write and execute) on a file.
#chmod - change mode
#Change permission
#No permission
chmod 000 filename.txt
echo 'Check file permissions: '
stat -c "%a" filename.txt
echo 'No permission: '
ls -l filename.txt
echo 'Change permission: '
chmod 755 filename.txt
stat -c "%a" filename.txt
ls -l filename.txt
echo "Add recursively permissions to a directory: "
chmod -R 700 foldername
echo 'Using a reference file: '
touch filename2.txt
chmod 000 filename2.txt
touch filename3.txt
chmod 755 filename3.txt
ls -l filename2.txt filename3.txt
echo 'Filename2.txt has the same files persmissions as filename3.txt'
chmod --reference=filename3.txt filename2.txt
ls -l filename2.txt filename3.txt
echo 'Change file permissions of all files in subdirectory and directory: '
echo 'We operate on all files recursively'
touch foldername/test{1..3}.txt
mkdir foldername/subfoldername || echo 'A directory subfoldername exists'
touch foldername/subfoldername/test{4..7}.txt
ls -l foldername/test{1..3}.txt foldername/subfoldername/test{4..7}.txt
chmod -R 000 foldername/
echo 'We change file permission recursively: '
ls -l foldername/test{1..3}.txt foldername/subfoldername/test{4..7}.txt
echo 'Change permissions only to jpg files. Changing file permissions in Bulk'
touch foldername/jpgtest{1..3}.jpg
ls -l foldername/jpgtest{1..3}.jpg
#Permissions for files and directories using numeric mode
#exec
find foldername/ -type d -exec chmod 755 {} \;
find foldername/*.jpg -type f -exec chmod 644 {} \;
#xargs
find foldername/ -type d -print0 | xargs -0 chmod 755
find foldername/ -type f -print0 | xargs -0 chmod 644
ls -l foldername/jpgtest{1..3}.jpg
echo 'Standard set permissions'
touch Standard.txt
chmod 644 Standard.txt
ls -l Standard.txt
chmod 755 Standard.txt
ls -l Standard.txt
chmod 700 Standard.txt
ls -l Standard.txt
chmod 600 Standard.txt
ls -l Standard.txt
stat -c "%a" Standard.txt
echo 'Add execute permission for all users'
chmod +x script.sh
source script.sh
echo 'Removing execute permissions: '
chmod -x script.sh
source script.sh
#Set 755 permissions to all files and subdirectories under foldername
chmod -R 755 foldername/