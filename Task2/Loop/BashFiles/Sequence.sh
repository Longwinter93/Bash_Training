#!/bin/bash

echo {1..5}
echo {5..1}
echo {0..10..2}
echo {a..z}
echo {00..5} #leading zeros
echo file{01..5}.txt
echo directory{02..6}

for i in {01..06}
do
    echo "Iteration with leading zeros $i"
done; 

for i in {02..04}
do
    mkdir -p Sequence/Directory$i
    touch Sequence/filesSeq$i.txt
done;
echo "Dynamic range driven by variables: "
seq 4
seq 1 5
seq 5 2 20
echo "Using variables: "
#Bash does not expand variables inside brace expressions
#Run dynamic range using seq 
START=3
END=12
STEP=3
for i in $(seq 1 3)
do 
    echo $i
done;
#START END  ARGUMENTS
echo "Run range from 3 to 12 dynamically"
for i in $(seq $START $END)
do 
    echo $i
done;
#START STEP END  ARGUMENTS
echo "Run range from 3 to 12 dynamically with 3 Steps"
for i in $(seq $START $STEP $END)
do 
    echo $i
done
#Creating files using seq
echo "Creating jpg files in Sequence/Directory02"
for i in $(seq $START $STEP $END )
do 
    touch Sequence/Directory02/ExampleFiles$i.jpg
done;
#Using C-Loop 
echo "Using C-Loop"
START=5
END=15
for ((i=START; i<=END; i++))
do 
    echo "Number: $i"
done;
echo "Creating pdf files using C-loop"
START=8
END=10 
for ((i=START; i<=END; i++))
do 
    touch Sequence/Directory03/ExampleJpgFiles$i.pdf
done;
echo "Creating backup of files from a file in a directory"
for i in $(seq 1 3)
do 
    cp Sequence/Directory02/ExampleFiles3.jpg Sequence/Directory04/ExampleFiles3_bp_$i.jpg
done;

echo "We use sequence and delimiter as string L: "

for i in $(seq -s 'L' 3); do
    echo -n "$i"
done 