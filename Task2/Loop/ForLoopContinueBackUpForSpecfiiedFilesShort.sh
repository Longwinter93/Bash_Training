#!/bin/bash

for txtfile in Info{1..5}.txt
do 
    #we skip files - we don't create backups for these ones if we found Lukasz
    grep "Lukasz" $txtfile  && continue 

    cp $txtfile $txtfile.backup
done

