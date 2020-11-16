#!/bin/bash
#./task5.sh [number]
number=`expr $1 % 2` 
if [ $number -eq 0 ]
then
    echo $1 " is even"
else
    echo $1 " is odd"
fi
exit