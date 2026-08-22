#!/bin/bash

#Change File Group Ownership

#It changes only a group

ls -l filename.txt
#Change ownership to a new group
chgrp adm filename.txt
chgrp adm filename.txt filename2.txt filename3.txt 
#Verbose mode
chgrp -v adm filename.txt filename2.txt filename3.txt 
#Information about files whose group actually changes
chgrp -c adm filename.txt filename2.txt filename3.txt 
#Change Symlink Group Ownership
chgrp adm foldername
#Recursively Change Group Ownership
chgrp -R adm foldername
chgrp -hR adm foldername
ls -l filename.txt
