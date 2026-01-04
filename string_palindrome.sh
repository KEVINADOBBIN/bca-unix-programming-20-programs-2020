#!/bin/bash

clear
echo "Enter a string:"
read str

len=${#str}
i=0
flag=0

while [ $i -lt $((len / 2)) ]
do
    c1=${str:$i:1}
    c2=${str:$((len - i - 1)):1}

    if [ "$c1" != "$c2" ]
    then
        flag=1
        break
    fi

    i=$((i + 1))
done

if [ $flag -eq 0 ]
then
    echo "$str is a Palindrome"
else
    echo "$str is NOT a Palindrome"
fi
