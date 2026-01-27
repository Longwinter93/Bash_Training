#!/bin/bash

echo $RANDOM
RandomNumber=$RANDOM


for i in {1..3}; do
	logger -i -t randomly -s -p user.info "$RANDOM"
done

