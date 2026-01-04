#!/bin/bash

clear
echo "Enter a string:"
read str

count=0
len=${#str}
i=0

while [ $i -lt $len ]
do
    ch=${str:$i:1}

    case $ch in
        [aeiouAEIOU])
            count=$((count + 1))
            ;;
    esac

    i=$((i + 1))
done

echo "String is: $str"
echo "Number of vowels in the string: $count"
