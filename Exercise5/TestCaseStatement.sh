#!/bin/bash

read -p "Enter name:" ANSWER

case "$ANSWER" in
	Lukasz)
	echo "BeautifulName"
	;;
	Adam)
	echo "Oki"
	;;
	*)
		echo "nothing"
	    ;;
esac 
		