#!/bin/bash

#This script helps in copying files from source to destination


# Check if exactly two arguments are provided
if [ "$#" -ne 2 ]; then
    	
	echo ""
	echo -e "\e[31mError\e[0m: Correct usage of script--> $0 [arg1] [arg2] like below"
	echo ""
	echo -e "$0 \e[31msource_path\e[0m \e[32mdestination_path\e[0m"
	echo ""
    	exit 1
fi

# Assign arguments to variables
source_file="$1"
destination="$2"

# Check if source file exists
if [ ! -e "$source_file" ]; then
    echo "Error: Source file '$source_file' does not exist."
    exit 1
fi

# Copy the source file to the destination
cp "$source_file" "$destination"

# Check if the copy operation was successful
if [ $? -eq 0 ]; then
	source_file_abs=$(realpath "$source_file")
	destination_abs=$(realpath "$destination")
	echo -e "File copied successfully from '\e[31m$source_file_abs\e[0m' to '\e[32m$destination_abs\e[0m'."
else
    echo "Error: Failed to copy file."
    exit 1
fi

