#!/bin/bash

clear
echo "=============================="
echo "       PAYROLL SYSTEM         "
echo "=============================="
echo

echo "Enter Employee Name:"
read ename

echo "Enter Employee Department:"
read dept

echo "Enter Employee Basic Salary:"
read basic

# Allowance calculations
hra=$(( basic * 15 / 100 ))
da=$(( basic * 50 / 100 ))
cca=1000

# Deductions
it=$(( basic * 10 / 100 ))
ptax=200

# Salary calculations
gross=$(( basic + hra + da + cca ))
ded=$(( it + ptax ))
net=$(( gross - ded ))

clear
echo "=========== PAY SLIP =========="
echo
echo "Employee Name   : $ename"
echo "Department      : $dept"
echo
echo "Basic Salary    : Rs. $basic"
echo
echo "Additions:"
echo "  HRA (15%)     : Rs. $hra"
echo "  DA  (50%)     : Rs. $da"
echo "  CCA           : Rs. $cca"
echo
echo "Deductions:"
echo "  Income Tax    : Rs. $it"
echo "  Professional Tax : Rs. $ptax"
echo
echo "Gross Salary    : Rs. $gross"
echo "Total Deduction : Rs. $ded"
echo
echo "Net Salary      : Rs. $net"
echo "==============================="
