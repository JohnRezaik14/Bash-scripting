#!/bin/bash


backup_dir="$HOME/backup"

if [[ ! -d $backup_dir ]]; then
    mkdir "$backup_dir"
fi

for file in $(find "$HOME" -type f); do

    filename=$(basename "$file")
    
    cp "$file" "$backup_dir/$filename"
    
    	echo "Backed up: $file to $backup_dir/$filename"
done


