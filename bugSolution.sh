#!/bin/bash

# Improved script with error handling
dir="/tmp/mydir"

# Check if the directory exists
if [ ! -d "$dir" ]; then
  echo "Error: Directory '$dir' does not exist."
  exit 1
fi

# Check if the directory is empty
if [ $(ls -A "$dir" | wc -l) -eq 0 ]; then
  echo "Warning: Directory '$dir' is empty."
  exit 0
fi

# Process files in directory
for file in "$dir"/*; do
  if [ -f "$file" ]; then
    echo "Processing file: $file"
    # Simulate some operation
    cat "$file"
  fi
done

# Remove directory and files
rm -rf "$dir"