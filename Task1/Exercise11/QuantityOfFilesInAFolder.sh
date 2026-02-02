#!/bin/bash 

Target='Exercise'


for i in {1..3}
do
	echo "Quantity of sh files in a $Target$i directory: $(ls $Target$i/*.sh | wc -l)"

done

