#!/bin/bash
# ${#variable} find length of varianle
# ${string:n} split substring from n index
# ${string:n:length} split substring from n with length
echo "Task9"
echo -n "Input Sting : "
read string
while [ true ]
do
    echo "1 : To extract a sub-string from a given string"
    echo "2 : To find the length of a given string"
    echo -n "Input menu : "
    read menu

    if [ $menu == 1 ]
    then
        echo "1 : Extract a sub string from n to m"
        echo "2 : Extract a sub string from n to last index"
        echo -n "Input menu : "
        read subMenu
        if [ $subMenu == 1 ]
        then 
            echo -n "Input start index : "
            read s_position
            echo -n "Input end index : "
            read e_position
            length=`expr $e_position - $s_position`
            if [ $length -gt ${#string} ]
            then
                echo "position out of bound"
            else
            echo ${string:s_position:length}
            fi
        elif [ $subMenu == 2 ]
        then 
            echo -n "Input position : "
            read position
            if [ $position -gt ${#string} ]
            then
                echo "position out of bound"
            else
            echo ${string:position}
            fi
        fi
    elif [ $menu == 2 ]
    then 
        echo "String's length : " ${#string}
    fi
done    
exit