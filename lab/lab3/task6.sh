#!/bin/bash
#./task6.sh  [word] [filename]
grep -w "$1" "$2"  #grep -w get one line that contain $1
if [ $? == "0" ]
then
    echo $1 " is in this list"
else
    echo $1 " isn't in this list"
fi
exit