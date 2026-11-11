#!/bin/bash

for txtfile in Info{1..5}.txt
do 
    grep "Lukasz" $txtfile
    if [ $? -eq 0 ] #we skip files - we don't create backups for these ones if we found Lukasz
    then 
        echo "We found Lukasz in these $txtfile. We don't prepare backup of this file"
        continue
    else 
        echo "We don't find Lukasz in these $txtfile"
    fi
    cp $txtfile $txtfile.backup
done

