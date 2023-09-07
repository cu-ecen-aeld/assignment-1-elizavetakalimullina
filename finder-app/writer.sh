#!/bin/bash

writefile="$1"
writestr="$2"

if [ "$#" -ne 2 ]; then
 	echo "You must provide exactly 2 parameters."
 	exit 1
fi 

dir="$(dirname "$writefile")"

if [ ! -d "$dir" ]; then
	mkdir -p "$dir"
	if [ $? -ne 0 ]; then
		echo "Error: Could not create directory."
		exit 1
	fi
fi

#Write to the file
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
	echo "Error: Could not create or write to file."
	exit 1
fi

echo "File created successfully."
