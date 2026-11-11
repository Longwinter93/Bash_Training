#!/bin/bash

declare -A Family=( [Andrzej]=NoFamily [Lukasz]=Family [Marcin]=NoFamily [Rafal]=Family )

for MyFamily in ${!Family[@]}
do 
    if [ ${Family[$MyFamily]} == "Family" ]; then 
        echo ${MyFamily}
    fi
done; 