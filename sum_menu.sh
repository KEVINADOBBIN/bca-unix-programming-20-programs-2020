#!/bin/bash

clear

# Check for exactly 2 arguments
if [ $# -ne 2 ]
then
    echo "Invalid arguments"
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

echo "Sum of numbers using command line arguments"
echo
echo "Number 1 = $1"
echo "Number 2 = $2"
echo

while true
do
    echo "Menu"
    echo "----"
    echo "1. Sum using expr"
    echo "2. Sum using bc"
    echo "3. Exit"
    echo
    echo "Enter your choice:"
    read ch

    case $ch in
        1)
            sum=$(expr $1 + $2)
            echo "Sum using expr = $sum"
            ;;
        2)
            sum=$(echo "scale=2; $1 + $2" | bc)
            echo "Sum using bc = $sum"
            ;;
        3)
            exit 0
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac

    echo
done
