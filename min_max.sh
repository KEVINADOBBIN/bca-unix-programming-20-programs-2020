#!/bin/bash

clear
echo "Enter number of elements in the list:"
read n

i=1
echo "Enter number:"
read num

large=$num
small=$num

while [ $i -lt $n ]
do
    echo "Enter number:"
    read num

    if [ $num -gt $large ]
    then
        large=$num
    fi

    if [ $num -lt $small ]
    then
        small=$num
    fi

    i=$((i + 1))
done

echo "Largest number is: $large"
echo "Smallest number is: $small"
