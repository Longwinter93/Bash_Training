#!/bin/bash

variable=FileText1.txt
echo $variable
echo "Removing an extension: ${variable%.txt}"
echo "Adding a new extension: ${variable%.txt}.jpg"
echo "Adding a new extension: ${variable%Text.txt}Jpg.jpg"
echo "Removing a File from the front ${variable#FileText}"