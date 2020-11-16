#!/bin/bash
#./task4b.sh [world] [filename1 filename2 ........]
world=$1
for n in "${@:2}"
do
sed -i "/$1/d" "$n" 
done
exit
