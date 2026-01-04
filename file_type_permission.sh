#!/bin/bash

clear
echo "Listing file types and permissions:"
echo

for fname in *
do
    # File type
    if [ -f "$fname" ]
    then
        echo "$fname is an ordinary file"
    elif [ -d "$fname" ]
    then
        echo "$fname is a directory"
    elif [ -L "$fname" ]
    then
        echo "$fname is a symbolic link"
    else
        echo "$fname is another type of file"
    fi

    # File permissions
    if [ -r "$fname" ]
    then
        echo "  → Read permission: YES"
    else
        echo "  → Read permission: NO"
    fi

    if [ -w "$fname" ]
    then
        echo "  → Write permission: YES"
    else
        echo "  → Write permission: NO"
    fi

    if [ -x "$fname" ]
    then
        echo "  → Execute permission: YES"
    else
        echo "  → Execute permission: NO"
    fi

    echo "------------------------------------"
done
