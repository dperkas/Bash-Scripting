#
#
#Count lines of a file.
#
#


#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 file1 file2 ..."
    exit 1
fi

# Loop through each file and count lines
for file in "$@"; do
    if [ -f "$file" ]; then
        lines=$(wc -l < "$file")
        echo "File $file has $lines lines"
    else
        echo "Error: $file is not a regular file"
    fi
done

