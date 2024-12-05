#!/usr/bin/bash

# Step 1: Check if there are at least two arguments (source(s) and destination)
if [ "$#" -lt 2 ]; then
    echo "please add destination to copy to"
    exit 1
fi
#declaring the destination , the last argument
dest=${@: -1};
#if it's one file and one directory
if [ $# -eq 2 ]; then
	cp "$1" "$2"
	echo "File $1 to $2."
fi

if [ $# -gt 2 ]; then
	for file in "${@:1:$#-1}"; do
		cp "$file" "$dest"
		echo "copied $file to $dest."
	done
fi

