#!/bin/bash

# This script attempts to process files in a directory, but it has a subtle bug.
# It doesn't handle cases where the directory is empty or doesn't exist.

dir="/tmp/mydir"

# Create the directory if it doesn't exist, this is important to test the bug
if [ ! -d "$dir" ]; then
  mkdir "$dir"
fi

# Add some test files
echo "content1" > "$dir/file1.txt"
echo "content2" > "$dir/file2.txt"

# Process files in directory
for file in "$dir"/*; do
  if [ -f "$file" ]; then
    echo "Processing file: $file"
    # Simulate some operation, this can be replaced with the actual file processing logic
    cat "$file"
  fi
done

# Remove directory and files
rm -rf "$dir"