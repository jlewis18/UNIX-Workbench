#!/usr/bin/env bash

function correct {
	echo "Correct!! You have given the right answer."

}

control=0

while [[ $control -eq 0 ]]
do
	echo "Please enter the number of files in the current directory;"
	    	read response
	echo "You entered : $response"
		numfiles=(*)
		numfiles=${#numfiles[@]}
	echo "the number of files is: $numfiles"
	if [[ response -eq numfiles ]]
	then
	
	correct
	control=1
	elif [[ response -gt numfiles ]]
	then
		echo "too high a number."
	else
		echo "too low a number."
	fi
done 
