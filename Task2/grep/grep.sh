#!/bin/bash

grep -r "Bash" *

grep "fields" file3.txt

cat file4.txt | grep Adam

cat /proc/cpuinfo | grep -i 'Model' > mymodel.txt

cat file4.txt | grep Adam > saveonlyAdam.txt