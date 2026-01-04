#!/bin/bash

opt="y"

while [ "$opt" = "y" ] || [ "$opt" = "Y" ]
do
    clear
    echo "------------- MENU -------------"
    echo "1. RM   (Remove Directory)"
    echo "2. UNIQ (Display Unique Lines)"
    echo "3. CMP  (Compare Two Files)"
    echo "4. TAIL (Display Last Lines of File)"
    echo "--------------------------------"
    echo "Enter your choice:"
    read ch

    case $ch in
    1)
        echo "RM Command: Removes a directory with contents"
        echo "Enter directory name:"
        read dirname

        mkdir "$dirname"
        cd "$dirname" || exit
        touch file1 file2 file3
        cd ..

        rm -r "$dirname"
        echo "Directory '$dirname' removed successfully"
        ;;
    2)
        echo "UNIQ Command: Displays unique lines in a file"
        echo "Enter file name:"
        read fname

        sort "$fname" | uniq
        ;;
    3)
        echo "CMP Command: Compares two files"
        echo "Enter first file name:"
        read f1
        echo "Enter second file name:"
        read f2

        cmp "$f1" "$f2"
        ;;
    4)
        echo "TAIL Command: Displays last lines of a file"
        echo "Enter file name:"
        read fname
        echo "Enter number of lines to display:"
        read lines

        tail -n "$lines" "$fname"
        ;;
    *)
        echo "Invalid choice"
        ;;
    esac

    echo
    echo "Do you want to continue? (y/n):"
    read opt
done
