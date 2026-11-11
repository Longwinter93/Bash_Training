#!/bin/bash

echo "Seq generate numbers from 1 to 6: "
seq 6
echo "From 10 to 20 step by 2: "
seq 10 2 20
echo "Seq in a format manner"
seq -f "Lucas%02G" 3 9
echo "Separate numbers by \n"
seq -s " " 3 3 27
echo "Seq with leading zeros: "
seq -w 0 2 10