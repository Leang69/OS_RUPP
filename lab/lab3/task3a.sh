#!/bin/bash
#./task3b.sh [filename1 filename2 ...... ]
for n in "$@"  # "$@" : "$1" "$2" "$3" ......
do 
file "$n" #file is use to determine file type
done
exit