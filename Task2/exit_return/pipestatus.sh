#!/bin/bash
echo "The exit code of each command in the recently executed pipeline: "
cat myfile.txt | grep 'file' | sort 
echo "cat: ${PIPESTATUS[0]}, grep: ${PIPESTATUS[1]}, sort: ${PIPESTATUS[2]}"