#!/bin/bash

clear
echo "Enter a number:"
read n

if [ $n -gt 0 ]
then
    i=1
    f=1

    while [ $i -le $n ]
    do
        f=$((f * i))
        i=$((i + 1))
    done

    echo "Factorial of $n is $f"
else
    echo "Enter a positive integer"
fi
