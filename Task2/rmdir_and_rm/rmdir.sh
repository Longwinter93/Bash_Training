#!/bin/bash
#mkdir - it removes only empty directory
#Removing empty directory - Only empty one
mkdir tobedeleted
rmdir tobedeleted
mkdir tobedeleted1 tobedeleted2 tobedeleted3
rmdir tobedeleted1 tobedeleted2 tobedeleted3
#Removing nested directory
mkdir -p parent/child/grandchild
rmdir -p parent/child/grandchild
#Displaying messages
mkdir -p parent/child/grandchild
rmdir -pv parent/child/grandchild
#Removing directories with the same expression
mkdir dsasda_Luk cxvdssdg_Luk teqwqrw_Luk
rmdir -v *Luk
