#!/bin/bash

#Removing tarfiles directory

[ -d tarfiles ] && rm -rf tarfiles
mkdir tarfiles/
TarFiles=$(find . -name "*.tar" -type f) 
echo "We start to collect all tar files..: "
for file in "$TarFiles";
do 
    echo "Processing files: $file"
    echo "Removing subdirectories"
    basename -a $file
    echo "Removing extensions: " 
    basename -a $file | awk -F'.' '{print $1}'
    NameDir=$(basename -a $file | awk -F'.' '{print $1}') #Creating new directories for each tar files
    cp ${file} tarfiles/
    cd tarfiles/
    mkdir $NameDir
#    mv $NameDir tarfiles/
done;
echo "Extracting all tar files to specific directories..."
for tarfile in *.tar;
do 
  Directory=$(basename "$tarfile" .tar)
  echo "Files from this $tarfile would be in a  $Directory"
  tar -xf $tarfile -C $Directory
done;
