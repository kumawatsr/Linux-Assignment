#!/usr/bin/bash

read -p "Enter your name: " name
read -p "Enter your age: " age

if ((age < 0)); then
    echo "Invalid age. Age cannot be negative."
elif ((age >= 18)); then
    echo "Hello $name! You are $age years old. You are eligible to drive."
else
    echo "Hello $name! You are $age years old. You are not eligible to drive yet."
fi
