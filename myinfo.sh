#!/bin/bash

# Ask for the user's logname with retry mechanism
while true; do
  echo "Please enter your logname:"
  read logname

  if [ "$logname" == "$(whoami)" ]; then
    break
  else
    echo "Error: Logname does not match the current user. Please try again."
  fi
done

# List files and directories in the user's home directory
echo "Listing files and directories in your home directory:"
ls -l "$HOME"

# Copy files and directories to /tmp
backup_dir="/tmp/${logname}_backup"
mkdir -p "$backup_dir"
cp -r "$HOME"/* "$backup_dir" 2>/dev/null

if [ $? -eq 0 ]; then
  echo "Backup successful. Files copied to $backup_dir."
else
  echo "Some files couldn't be copied due to permission issues."
fi

# Display the current user's process status
echo "Current processes for $logname:"
ps -u "$logname"

