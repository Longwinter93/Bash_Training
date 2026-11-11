#!/bin/bash

for folder in FourthDirectory FifthDirectory
do  
    mkdir "$folder" && echo "these folders: $folder are created"
done 