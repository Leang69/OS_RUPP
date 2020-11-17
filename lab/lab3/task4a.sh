#!/bin/bash
#./task4a.sh [filename] [startline] [endline]
fname=$1
start=$2
end=$3
sed [ $start-$end ]/p "$fname"  #sed -n p textfile use to print data that store in patter space
exit