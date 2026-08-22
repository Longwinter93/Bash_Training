#!/bin/bash

function Iteration 
{
    m=${#NewArray[@]}
    for (( i=0; i<m; i++ ))
    do 
        echo $i ${NewArray[$i]}
    done
}

ListOfShFiles=$(ls *.sh)
NewArray=($ListOfShFiles)
Iteration ${NewArray[@]}