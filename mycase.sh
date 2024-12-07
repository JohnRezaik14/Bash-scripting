#!/usr/bin/bash
read -p "enter your input:" value

case $value in
	"")
        	echo "You entered nothing."
		;;
	*[a-z]*[A-Z]*|*[A-Z]*[a-z]*)
       		 echo "The input is a mix of lowercase and uppercase letters."
       		 ;;
	 *[a-zA-Z]*[0-9]*|*[0-9]*[a-zA-Z]*)
        	echo "The input is a mix of letters and numbers."
        	;;
	[a-z]*)
	         if [[ $value =~ ^[a-z]+$ ]]; then
            echo "The input is all lowercase letters."
       		 fi	
		;;
	[A-Z]*)
		if [[ $value =~ ^[A-Z]+$ ]]; then
            echo "The input is all uppercase letters."
        	fi
		;;
	[0-9]*)
		if [[ $value =~ ^[0-9]+$ ]]; then
		echo "the input is all numeric"
		fi	
		;;	
	*)
		echo "the input has special character"
		;;
esac		
