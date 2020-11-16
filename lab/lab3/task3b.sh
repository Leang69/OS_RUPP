#!/bin/bash
#./task3b.sh [filename1 filename2 ...... ]
for n in "$@"           #   take element in set "$@" one by one assign to $n 
do                      #   start loop task
mv "${n}" "${n^^}"      #   ${n^^} convert a whold string to uppercase 
done                    #   end loop task
exit