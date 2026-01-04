#!/bin/bash

clear
opt="y"

# Create or clear the file
> student.txt

while [ "$opt" = "y" ] || [ "$opt" = "Y" ]
do
    echo "Enter student number:"
    read num

    echo "Enter student name:"
    read name

    echo "Enter student age:"
    read age

    echo "Enter student gender:"
    read gender

    echo "Enter student height:"
    read ht

    echo "Enter student weight:"
    read wt

    # Store data in file (colon separated)
    echo "$num:$name:$age:$gender:$ht:$wt" >> student.txt

    echo "Wish to continue? (y/n):"
    read opt
done

clear
echo "------------- Student Details -------------"
echo
printf "%-10s %-15s %-5s %-8s %-8s %-8s\n" "RollNo" "Name" "Age" "Gender" "Height" "Weight"
echo "-------------------------------------------------------------"

awk -F: '{ printf "%-10s %-15s %-5s %-8s %-8s %-8s\n", $1, $2, $3, $4, $5, $6 }' student.txt
