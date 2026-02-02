#!/bin/bash
DATEVAR=$(date +%F)

read -p "Please enter a file prefix: (PRESS ENTER FOR $DATEVAR): " name
name=${name:-$DATEVAR}
echo $name