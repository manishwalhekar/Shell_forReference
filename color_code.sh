#!/bin/bash

# this script will give foreground colors on text


# ANSI escape codes for foreground colors
colors=(
    "Black" "30"
    "Red" "31"
    "Green" "32"
    "Yellow" "33"
    "Blue" "34"
    "Magenta" "35"
    "Cyan" "36"
    "White" "37"
    "Bright Black" "90"
    "Bright Red" "91"
    "Bright Green" "92"
    "Bright Yellow" "93"
    "Bright Blue" "94"
    "Bright Magenta" "95"
    "Bright Cyan" "96"
    "Bright White" "97"
)

NC='\033[0m' # No Color

echo "Foreground colors:"
for ((i=0; i<${#colors[@]}; i+=2)); do
    color_name="${colors[i]}"
    color_code="${colors[i+1]}"
    echo -e "\033[${color_code}m${color_name} - Hello World${NC}"
done

#added through git add from local linux
