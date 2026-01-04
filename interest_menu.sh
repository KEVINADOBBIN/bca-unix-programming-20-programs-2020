#!/bin/bash

clear
echo "-----------------------------"
echo "   Bank Interest Calculator  "
echo "-----------------------------"
echo "1. Simple Interest"
echo "2. Compound Interest"
echo "3. Exit"
echo
echo "Enter your choice:"
read ch

case $ch in
1)
    echo "Simple Interest"
    echo "Enter Principal amount:"
    read p
    echo "Enter Rate of interest:"
    read r
    echo "Enter Time (in years):"
    read t

    si=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
    echo "Simple Interest is: Rs. $si"
    ;;
2)
    echo "Compound Interest"
    echo "Enter Principal amount:"
    read p
    echo "Enter Rate of interest:"
    read r
    echo "Enter Time (in years):"
    read t

    amount=$(echo "scale=2; $p * (1 + $r/100)^$t" | bc)
    ci=$(echo "scale=2; $amount - $p" | bc)
    echo "Compound Interest is: Rs. $ci"
    ;;
3)
    echo "Exiting program..."
    exit
    ;;
*)
    echo "Invalid choice"
    ;;
esac
