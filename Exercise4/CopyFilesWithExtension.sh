#!/bin/bash

# This will loop through all the "html" files in the current directroy. Then, it copies these files to a var/www-just-html directory
for FILE in *.html
do
    echo "Start Copying $FILE"
    cp $FILE var/www-just-html
done
