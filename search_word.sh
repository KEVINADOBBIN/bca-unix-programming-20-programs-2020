

#!/bin/bash

# Check if at least one filename is provided
if [ $# -lt 1 ]
then
    echo "Usage: $0 <file1> [file2 ...]"
    exit 1
fi

echo "Enter the word to be searched:"
read word

flag=0

# Search word in files one by one
for file in "$@"
do
    if [ -f "$file" ]
    then
        if grep -iwq "$word" "$file"
        then
            echo "Word '$word' found in file: $file"
            flag=1
            break
        fi
    else
        echo "File $file does not exist"
    fi
done

# If word not found in any file
if [ $flag -eq 0 ]
then
    echo "Word '$word' is not found in any file"
fi
