#!/bin/bash


#This script checks if given number is even or odd

echo " Enter any positive integer"

read number

# Check if num is all digits and greater than 0
if [[ $number =~ ^[0-9]+$ ]] && (( number > 0 )); then
   if (( number % 2 == 0 )); then
        echo -e "\033[32m$number\033[0m" "is even number"
else
        echo -e "\033[32m$number\033[0m" "is odd number"
fi

else
    echo -e "\033[31m$number\033[0m" "is NOT a positive integer."
fi

