#!/bin/bash
#To run this script you need to execute this:  ./AddingCommandLineParameters.sh *.sh 
#It iterates over .sh files
for file in $*
do 
    ls -lh $file 
done;