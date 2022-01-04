#!/bin/bash
# using the read command for one char
read -n 1 -p "Do you want to continue [Y/N]? " answer

case $answer in 
	Y | y) echo
		echo "Ok continuing";;
	N | n) echo
		echo "Ok good bye"
		exit;;
esac
echo "This is the end of the script"
exit

