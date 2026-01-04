#!/bin/bash

clear
echo "Enter number of employee records:"
read n

i=1
> emplist.txt

while [ $i -le $n ]
do
    echo "Enter employee number:"
    read empno

    echo "Enter employee name:"
    read ename

    echo "Enter department:"
    read dept

    echo "Enter designation:"
    read desg

    # Store data (slash-separated)
    echo "$empno/$ename/$dept/$desg" >> emplist.txt

    i=$((i + 1))
done

clear
echo "--------------- Employee Information ---------------"
echo
printf "%-10s %-15s %-15s %-15s\n" "EmpNo" "Name" "Department" "Designation"
echo "----------------------------------------------------"

awk -F"/" '{ printf "%-10s %-15s %-15s %-15s\n", $1, $2, $3, $4 }' emplist.txt

echo
echo "Enter the department to count employees:"
read sdept

count=$(awk -F"/" -v dept="$sdept" '$3==dept { c++ } END { print c }' emplist.txt)

echo "Number of employees in $sdept department: $count"

echo
echo "Employees who are NOT managers:"
awk -F"/" '$4!="Manager" && $4!="manager" { print $1, $2 }' emplist.txt
