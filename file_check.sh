#!/bin/bash


#this script checks if the file existence, type and persmissions on the file

echo " enter file or directory path"

read path

if [ -e "$path" ]; then
	echo "Path exists"
	
	if [ -f "$path" ]; then
		echo "It is a regular file"
		test=1
	else
		echo "it is a directory"
		test=2
	fi
if [ "$test" == 1 ]; then
	
	[ -r "$path" ] && echo "File is readable to you" || echo "Not readable"
	
	[ -w "$path" ] && echo "File is writeable to you" || echo "Not writeable"

	[ -x "$path" ] && echo "File is executable to you" || echo "Not executable"
else	
	[ -r "$path" ] && echo "directory is readable to you" || echo "Not readable"
        
	[ -w "$path" ] && echo "directory is writeable to you" || echo "Not writeable"

        [ -x "$path" ] && echo "directory is executable to you" || echo "Not executable"
fi

else 
	echo "Path does not exist"
	exit 1
fi
