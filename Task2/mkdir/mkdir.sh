#!/bin/bash


mkdir newdir
ls -l
mkdir parentdir
mkdir parentdir/sondir
mkdir -v newdir2
#Parent Directories - nested directory
mkdir -p FirstDir/SecondDir/ThirdDir
#Setting Permissiong when Creating a Directory - 700 permissions - only user who created the directory will be able to access it
mkdir -m 700 newdirpermission
#Creating multiple directories
mkdir dir1 dir2 dir3
#Complex Directory Tree
mkdir -p Family/{Parents/{Jerry,Fortune},Son/{Rafal,Lucas},Grandparents/{Anna,Olek}}
mkdir -p Family/{Parents/{Jerry,Fortune},Son/{Rafal/Dorota/{Leon,Lilii},Lucas},Grandparents/Anna}
mkdir -p Family/{Parents/{Jerry,Fortune},Son/{Rafal/Dorota/{Leon,Lilii},Lucas/Justyna},Grandparents/{Anna,Olek}}
mkdir -p -v dir{2022,2023}
mkdir -p -v directories{1..6}
#With spaces
mkdir "Dir with Spaces"
mkdir Dir\ with\ Spaces2
#Directory with Date or TimeStamp
mkdir "back-up dir-$(date +%F)"
#Removing
mkdir toberemoved
rmdir toberemoved