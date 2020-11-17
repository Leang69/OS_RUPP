#!/bin/bash
#./task8.sh [world] [filename]
time=$(grep -wo "$1" "$2"|wc -l)  #grep -wo is for select only match word and wc -l count amount line
echo "World" $1 "is occurred in " $2 " " $time " time"
exit