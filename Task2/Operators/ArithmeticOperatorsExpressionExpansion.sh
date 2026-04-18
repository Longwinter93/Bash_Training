#!/bin/bash

sum=$((10 + 5))
echo "Sum: $sum"

let x=$((2+5)) 
echo $x
let "a=5" "b=4" "c=a+b"; echo $c

#Increment values
let "d=8" "e=d++"; echo $d $e
#Decrement
let "d=8" "e=d--"; echo $d $e
