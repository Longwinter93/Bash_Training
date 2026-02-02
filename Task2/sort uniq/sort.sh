#!/bin/bash

echo "Sort these words alphabetically: "
sort mixofwords.txt 

echo "Sort these words alphabetically in reverse order: "
sort -r mixofwords.txt

echo "Sort data in reverse order based on the first column: "
sort -r -k1 data.txt