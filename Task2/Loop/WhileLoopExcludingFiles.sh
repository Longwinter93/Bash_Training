#!/bin/bash

echo "It iterates over files excluding sh files: "

find . -type f ! -name "*.sh" -print0 -maxdepth 1 | while read  -r -d '' file 
do 
    echo $file 
done


