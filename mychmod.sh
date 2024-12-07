#!usr/bin/bash


home_dir=$HOME

for item in $(find "$home_dir" -type f -or -type d); do
    chmod +x "$item"
    echo "Added execute permission to: $item"
done


