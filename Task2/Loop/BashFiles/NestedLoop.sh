#!/bin/bash

#Look at FurtherResourcesForLearniing.txt so as to develop skills at it

#We use Nested Loop to copy files to servers/directories

for f in file_{1..3}; do  #outer loop - it starts to iterate second
    for j in server_{1..3}; do #inner loop - it starts to iterate first 
    echo "Copying file $f to server/directories $j"
    done 
done

#We copy one file to three servers, then we copy next file and so on.

echo "We are going to deploy new changes to the environment: "
for changes in change01 change02; do 
    for env in dev test prod; do 
        echo "Deploying "$changes" to "$env""
    done 
done


echo "Continue We are going to skip 2 and b: "

for i in {0..2}; do
    for j in {a..c}; do 
        if [[ $i == '2' && $j == 'b' ]]; then 
            continue
        fi 
        echo "$i and $j"
    done 
done

echo "Break Loop terminates if we it starts to iterate 0 and c"

for i in {0..2}; do
    for j in {a..c}; do 
        if [[ $i == '0' && $j == 'c' ]]; then 
            break
        fi 
        echo "$i and $j"
    done 
done

echo "Continue 2 - it goes to the top of the loop: "
for i in {0..2}; do
    for j in {a..c}; do 
        if [[ $i == '2' && $j == 'b' ]]; then 
            continue 2
        fi 
        echo "$i and $j"
    done 
done
echo "Break 2 - it goes to the top of the loop: "
for i in {0..2}; do
    for j in {a..c}; do 
        if [[ $i == '0' && $j == 'c' ]]; then 
            break 2 #It completely stops process
        fi 
        echo "$i and $j"
    done 
done
