#!/bin/bash
#./task5.sh [number]
number=`expr $1 % 2`        #use expr for calculate with two argument 
if [ $number -eq 0 ]        # -eq is ==
then
    echo $1 " is even"
else
    echo $1 " is odd"
fi
exit