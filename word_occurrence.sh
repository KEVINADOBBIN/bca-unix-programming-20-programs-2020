
#!/bin/bash

# Check minimum arguments
if [ $# -lt 2 ]
then
    echo "Usage: $0 <file1> <file2> [file3 ...]"
    exit 1
fi

first_file=$1
shift

# Check if first file exists
if [ ! -f "$first_file" ]
then
    echo "File $first_file does not exist"
    exit 1
fi

# Read each word from the first file
for word in $(cat "$first_file")
do
    echo "Word: $word"

    # Check occurrence in remaining files
    for file in "$@"
    do
        if [ -f "$file" ]
        then
            count=$(grep -ow "$word" "$file" | wc -l)
            echo "  $file : $count"
        else
            echo "  $file : File not found"
        fi
    done

    echo "----------------------"
done
