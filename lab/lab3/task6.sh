#!/bin/bash
#./task6.sh [filename]
ans=$(ls | grep -i "$1")
if [ ans != "" ]
then
    echo $ans
    echo $1 " is in this directory"
else
    echo $1 " isn't in this directory"
fi
exit