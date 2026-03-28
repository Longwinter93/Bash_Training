#!/bin/bash 

#source - read permissions, destination - write permissions
cp file.txt file_backup.txt
cp file.txt{,_backup2.txt}
cp file.txt file_backup_$(date +%d-%m-%Y).txt
#Copy to directory
mkdir backup
cp file.txt backup/
cp file.txt backup/new_file_backup.txt

cp -n file.txt file_not_overwritten.txt
cp -i file.txt file_backup.txt #confirmation prompt
cp -u file.txt file_backup.txt #copy only if the source file is newer than the destination file
cp -p file.txt file_backup.txt #preserving a file mode
cp -v file.txt file_backup.txt #printing out what was done
#Copy Directory and subdirectory. -R flag is always required! - Recursive copy
cp -R Folder Folder_backup
cp -R Folder Folder_backup
#Copy only contents of a directory
cp -RT Folder Folder_backup
mkdir DirectoryFolder_Backup
cp -R DirectoryFolders/* DirectoryFolder_Backup
mkdir NewDirectory
cp file.txt file_backup.txt NewDirectory
cp *.txt OnlyText
