#!/bin/bash

clear
echo "Enter the value of M:"
read m

echo "Enter the value of N:"
read n

echo "Prime numbers between $m and $n are:"

while [ $m -le $n ]
do
    if [ $m -gt 1 ]
    then
        i=2
        flag=1

        while [ $i -le $((m / 2)) ]
        do
            if [ $((m % i)) -eq 0 ]
            then
                flag=0
                break
            fi
            i=$((i + 1))
        done

        if [ $flag -eq 1 ]
        then
            echo $m
        fi
    fi
    m=$((m + 1))
done