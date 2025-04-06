#!/bin/bash

# this script is for the loops - for and while

#For basics- Print sequence from 1 to 10
echo " this will print numbers from 1 to 10"
echo "Using for loop"

for i in $(seq 1 10); do
	echo "$i"
done


echo ""
#While loop basics- print from 1 to 10
echo "Using while loop"
count=1
while [ $count -le 10 ]; do
	echo "$count"
	((count++))
done


echo ""
# Print characters from a string
word="hello"
echo " Printing characters one by from" "$word"

for (( i=0; i<${#word}; i++ )); do
    echo "${word:$i:1}"
done

echo ""


#Loop over files in current directory
echo "Listing files in current path:$PWD"
for file in *; do
    echo "$file"
done


echo ""
#Countdown from 5 to 1

count=5
echo "Countdown:"
while [ $count -ge 1 ]; do
    echo "$count"
    ((count--))
done


echo ""
#Read 3 numbers from user and sum them

sum=0
i=1
while [ $i -le 3 ]; do
    read -p "Enter number $i: " num
    ((sum += num))
    ((i++))
done

echo "Total Sum is: $sum"


echo ""
#Keep asking for input until "exit" is typed

input=""
while [ "$input" != "exit" ]; do
    read -p "Type something (or 'exit' to quit): " input
    echo "You typed: $input"
done

#added using local linux
