#!/bin/bash

# Check if at least one filename is provided
if [ $# -lt 1 ]
then
    echo "Usage: $0 <file1> [file2 ...]"
    exit 1
fi

# Read the word to delete
echo "Enter the word to delete:"
read word

# Process each file
for file in "$@"
do
    if [ -f "$file" ]
    then
        # Delete lines containing the word (case-insensitive)
        grep -iv "$word" "$file" > temp_file
        mv temp_file "$file"
        echo "Lines containing '$word' deleted from $file"
    else
        echo "File $file does not exist"
    fi
done
