#!/bin/bash

#\n

while true 
do
	read -rep $'1. Show disk usage.\n2. Show system uptime.\n3. Show the users logged into the system.\nWhat would you like to do ? (Enter q to quit.) ' CHOICE
	case "$CHOICE" in 
	  1) df
	     ;;
	  2) uptime
	      ;; 
	  3) who
	      ;; 
	  "q") echo "Goodbye!"
			break
	      ;;
	  *)
        echo "Invalid option"
          ;;
    esac
done	
