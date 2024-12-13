#!/bin/bash

declare -A colors=(
    [RESET]="\e[0m"
    [BOLD]="\e[1m"
    [ITALIC]="\e[3m"
    [UNDERLINE]="\e[4m"
    [Black]="\e[30m"
    [Red]="\e[31m"
    [Green]="\e[32m"
    [Yellow]="\e[33m"
    [Blue]="\e[34m"
    [Magneta]="\e[35m"
    [Cyan]="\e[36m"
    [White]="\e[37m"
)

color_font=("RESET" "BOLD" "ITALIC" "UNDERLINE" "Black" 
"Red" "Green" "Yellow" "Blue" "Magneta" "Cyan" "White")

count=10
while [ $count -gt 0 ]; do
selected=$(printf "%s\n" "${color_font[@]}" | rofi -dmenu -p "Select a Color:")

echo -e "${colors[$selected]} Hello Ehab"
((count--))
done