#!/bin/bash
#./task8.sh [world] [filename]
time=$(grep -io "$1" "$2"|wc -l)
echo "World" $1 "is occurred in " $2 " " $time " time"
exit