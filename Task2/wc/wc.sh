#!/bin/bash

wc dogs.txt
wc -l dogs.txt
wc -m dogs.txt
wc -w dogs.txt

Qty=$(ls | wc -l)
echo "Quantity of files in this directory $Qty"