#!/bin/bash

#this script checks user category according to the age

echo " Enter your age"

read age

#Input validation
if ! [[ $age =~ ^[0-9]+$ ]]; then
	echo " Enter correct age. As age is just a positive integer"
	exit 1
fi

# actual logic for age classification

if (( age < 18 )); then
	echo "You are minor"
elif (( age < 60 )); then
	echo "You are an adult"
elif (( age  < 125 )); then
	echo "Oh! Congrats on making this far"
elif (( age >= 126 && age < 130 )); then
	echo " You are kidding, right?"
elif (( age >= 130 )); then
	echo " You are not real human. Please close this program."
else
	echo "You are a senior citizen"
fi
