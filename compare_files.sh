#!/bin/bash

clear
echo "Enter the name of file 1:"
read file1

echo "Enter the contents of $file1 (Press Ctrl+D to save):"
cat > "$file1"

echo
echo "Enter the name of file 2:"
read file2

echo "Enter the contents of $file2 (Press Ctrl+D to save):"
cat > "$file2"

# Sort both files (required for comm command)
sort "$file1" -o "$file1"
sort "$file2" -o "$file2"

clear
echo "------------- File Contents -------------"
echo
echo "Contents of $file1:"
cat "$file1"
echo
echo "Contents of $file2:"
cat "$file2"

echo
echo "------------- Comparison Result -------------"
echo
echo "Items unique to $file1:"
comm -23 "$file1" "$file2"

echo
echo "Items unique to $file2:"
comm -13 "$file1" "$file2"

echo
echo "Items common to both files:"
comm -12 "$file1" "$file2"
