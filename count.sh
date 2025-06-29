#!/bin/bash

# Ensure a path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory-path>"
    exit 1
fi

# Validate the path is a directory
if [ ! -d "$1" ]; then
    echo "Error: '$1' is not a valid directory"
    exit 1
fi

# Count files in the directory
file_total=$(find "$1" -maxdepth 1 -type f | wc -l)

# Display the result
echo "$file_total"
