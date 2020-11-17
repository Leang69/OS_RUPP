#!/bin/bash
#./task4b.sh [world] [filename1 filename2 ........]
world=$1
for n in "${@:2}"       #start form 2nd arguments 
do
sed -i "/$1/d" "$n"    #sed -i edit file and d is delete pattern space
done
exit
