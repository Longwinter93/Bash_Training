#!/bin/bash

#du - Disk usage
#It shows the estimated amount of disk usage used by files and directories. 
#It reports the size of the filesystem block
#du command automates monitoring and notifications programs that help prevent directories from becoming full
cd ../.. #go to the 2 previous directory
#It prints a line 
du Task2
du -h Task1
cd Task2/du
du du.sh
#Human readable format
du -h du.sh
#The total size of the file
du -sh du.sh
#The total size of the specified directory
cd ../.. && du -sh Task2/
#Showing the size of every file including directories
du -a Task2/
#Showing the size of a directory and all the files and directories within it
du -ah Task2/
#The combined size of two directories -- it display the grand total or the total usage size of a particular directory
du -sh Task1/
du -sh Task2/
du -csh Task1/ Task2/ #grand total
#Limit the Directory Depth - we specify the subdirectory level. We report about the first level directory:
cd Task2/du
du -h --max-depth=1 TestDirectory
#It shows the apparent size of file rather than the actual disk space they occupy
echo 'It shows the apparent size of the file: '
du -sh --apparent-size du.sh
echo 'It shows the disk usage used by a file: '
du -sh du.sh
#It shows only the size of pdf files:
echo 'It shows the size of pdf files in this directory: '
du -csh TestDirectory/*.pdf
#Looking for 5 largest & lowest size of files inside Task2
echo 'The largest 5 file size in the Task2 directory: '
cd ../.. && du -sh Task2/* | sort -rh | head -5
echo 'The lowest 5 file size in the Task2 directory: '
du -sh Task2/* | sort -rh | tail -5
pwd
echo 'Displaying the total size of each sh file and total of these files '
du -ach Task2/*/*.sh
echo 'Total size of txt files: '
du -ch Task2/*/*.txt
echo 'Total size of files exclude sh files: '
du -h --exclude='*.sh' Task2/*/*
echo 'Only subdirectory size in a Task2 directory'
du -h --max-depth=1 Task2/



