#!/bin/bash

# Check if an argument is provided
if [[ $# -eq 0 ]]; then
  echo "Usage: $0 <file_or_directory>"
  exit 1
fi

# Get the argument
target=$1

# Check if the target exists
if [[ ! -e "$target" ]]; then
  echo "Error: $target does not exist."
  exit 1
fi

# Determine if the target is a file or directory
if [[ -f "$target" ]]; then
  echo "$target is a file."
elif [[ -d "$target" ]]; then
  echo "$target is a directory."
else
  echo "$target is neither a regular file nor a directory."
  exit 1
fi

# Check permissions
echo "Checking permissions for $target:"

[[ -r "$target" ]] && echo "Readable: Yes" || echo "Readable: No"
[[ -w "$target" ]] && echo "Writable: Yes" || echo "Writable: No"
[[ -x "$target" ]] && echo "Executable: Yes" || echo "Executable: No"

