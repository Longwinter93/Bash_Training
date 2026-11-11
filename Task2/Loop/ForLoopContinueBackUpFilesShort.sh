#!/bin/bash

rm -rf BackupFiles/CfgFiles3.txt.bak 
rm -rf BackupFiles/CfgFile4.txt.bak
echo 'We are going to create backup files for txt files. If backup files exist, it will be skipped.'
for FILE in BackupFiles/*.txt
do 
    [ -f $FILE.bak ] && echo "Skipping $FILE because this back up of $FILE exists" && continue  || 
    echo "Backup files of $FILE don't exist. Thus, they are created.." &&
    cp $FILE $FILE.bak
    
done;