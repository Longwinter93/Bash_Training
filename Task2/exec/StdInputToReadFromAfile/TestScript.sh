#!/bin/bash

exec < input_csv
read row1
echo -n "The contents of first line are: "
echo $row1 
echo -n "The contents of second line are: "
read row2
echo $row2