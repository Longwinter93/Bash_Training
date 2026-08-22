#!/bin/bash

#We are going to create a backup for a myfile.txt file


cp myfilex.txt myfile_bp.txt
if [ $? -eq 0 ]; then 
    echo 'A backup file was created successfully'
    exit 0 
else 
    echo 'A backup file was NOT created successfully'
    exit 1 
fi 

#Let's run echo $? to check the result of the exit code