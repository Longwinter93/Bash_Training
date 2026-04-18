#!/bin/bash

#File Test Operators -d, -e, -f, -s and so on
FILE=FileExists.txt

if [[ -f "$FILE" ]]; then 
    echo "$FILE exists"
else 
    echo "$FILE does not exist"
fi 

[[ -f "$FILE" ]] && echo "File Exists without IF statement" || echo "File does not exist"

echo "Verifying if a directory exists"
DIRECTORY=DirectoryExists

if [[ -d "$DIRECTORY" ]]; then 
    echo "$DIRECTORY exists"
else 
    echo "$DIRECTORY does not exist"
fi

[[ -d "$DIRECTORY" ]] && echo "This $DIRECTORY directory exists" || echo "This directory $DIRECTORY does not exist"

echo "We use exclamation mark to negate a test"

FILE2=FileDoesNotExist

if [[ ! -f "$FILE2" ]]; then 
    echo "$FILE2 does not exist"
fi

if [[ -d "DirectoryExists" && -d "IfAndLogical" ]]; then 
    echo "Both directories exists"
fi

