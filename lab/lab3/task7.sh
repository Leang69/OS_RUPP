#!/bin/bash
#./task7.sh [file1] [file2]
diff "$1" "$2" > /dev/null 2>&1
if [ $? -eq "0" ]
then
    echo $1 " and " $2 " are a same file."
    rm "$2"
elif [ $? -eq "1"  ]
then
    echo $1 " and " $2 " aren't a same file."
    cat "$1" >> "$2"
fi
exit