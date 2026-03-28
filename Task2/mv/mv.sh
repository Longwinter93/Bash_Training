#!/bin/bash

#write permission on both source and destination

touch movingfile.txt
touch movingfile2.txt
echo "It is a moving file" > movingfile.txt
echo "It is a moving file" > movingfile2.txt
mkdir DestinationDir
#Moving a file
mv movingfile.txt DestinationDir
#Moving a file and giving a new file name destination
mv movingfile2.txt DestinationDir/newnamemovingfile.txt
#Renaming a file
touch renamedfile.txt
echo "This name will be renamed" > renamedfile.txt
mv renamedfile.txt newnamefile.txt
#Renaming a directory
mv Source Target
#Moving directories
mkdir NewDir
mv NewDir DestinationDir
#Moving multiple files
mkdir FileTextFiles
mkdir PdfFiles
touch FirstTxtFile.txt SecondTxtFile.txt ThirdTxtFile.txt
touch FirstPdfFile.pdf SecondPdfFile.pdf ThirdPdfFile.pdf
mv FirstTxtFile.txt SecondTxtFile.txt ThirdTxtFile.txt FileTextFiles
mv *.pdf PdfFiles
touch LongTxt.txt LongTxt2.txt LongTxt3.txt LongTxt4.txt
mkdir LongTxtDir
find -name 'Long*.txt' -exec mv -t LongTxtDir {} +
#Moving all file txt files found in PdfFiles and move to LongTxtDir
find PdfFiles -name 'file*.txt' -exec mv -t LongTxtDir {} +
#Prompting
touch movingfile.txt
echo 'It is a new file' > movingfile.txt
cat movingfile.txt
mv -i movingfile.txt DestinationDir
mv -f movingfile.txt DestinationDir
mv -n movingfile.txt DestinationDir
mv -u movingfile.txt DestinationDir
#Backup
mkdir tmpfolder
touch movingfile.txt
echo 'It will be moved with a backup file' > movingfile.txt
mv -b movingfile.txt DestinationDir
mv -b --suffix=.bak movingfile.txt DestinationDir
touch testname1.txt
mv -b --suffix=.bak testname1.txt tmpfolder/testname1newname.txt

#Verbose output
touch movingfile1.txt
touch movingfile2.txt
mv -v movingfile1.txt movingfile2.txt tmpfolder
#Specifying target directory
mkdir TargetDir
touch file.txt file2.txt file3.txt
mv -t TargetDir file.txt file2.txt file3.txt