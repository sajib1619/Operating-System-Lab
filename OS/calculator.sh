#!/bin/bash

read -p "Enter Two Numbers: " a b

echo ""
echo "********* Choices **********"
echo "1. Summation"
echo "2. Subtraction (first number - second number)"
echo "3. Division (first number / second number)"
echo "4. Multiplication"
echo ""

read -p "Enter your choice: " choice

if ((choice == 1))
then	echo "Summation of your numbers: $((a+b))"
elif ((choice == 2))
then	echo "Subtraction of your numbers: $((a-b))"
elif ((choice == 3))
then	echo "Division of your numbers: $((a/b))"
elif ((choice == 4))
then	echo "Multiplication of your numbers: $((a*b))"
else	echo "Wrong choice"
fi
