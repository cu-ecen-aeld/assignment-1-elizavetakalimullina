#!/bin/sh

filedir="$1"
searchdir="$2"

if [ -z "$filedir" ]; then
	echo "First parameter is missing."
	exit 1
fi

if [ -z "$searchdir" ]; then
   echo "Second parameter is missing."
   exit 1
fi

if [ ! -d "$filedir" ]; then
	echo "First argument is not a directory."
	exit 1
fi

numfiles=$(find "$filedir" -type f | wc -l)
numlines=$(grep -r "$searchdir" "$filedir" | wc -l)

echo "The number of files are $numfiles and the number of matching lines are $numlines"
