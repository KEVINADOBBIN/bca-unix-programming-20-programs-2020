#!/bin/bash

# Check for exactly 3 arguments
if [ $# -ne 3 ]
then
    echo "Not enough parameters."
    echo "Usage: $0 <filename> <starting-line-no> <ending-line-no>"
    exit 1
fi

file=$1
start=$2
end=$3

# Check if file exists
if [ ! -f "$file" ]
then
    echo "File does not exist"
    exit 1
fi

# Get total number of lines in file
lastline=$(wc -l < "$file")

# Validate line range
if [ $start -le 0 ] || [ $end -le 0 ] || [ $start -gt $end ] || [ $end -gt $lastline ]
then
    echo "Invalid range specification"
    exit 1
fi

# Number of lines to display
nlines=$((end - start + 1))

# Display required lines
tail -n +"$start" "$file" | head -n "$nlines"
