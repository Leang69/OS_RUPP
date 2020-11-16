#!/bin/bash
#./task3c.sh [Username]
userloginTime=$(last --time iso|grep -w "$1"|grep -w "still logged in"|awk '/tty/ {print $4}')  #get time that user login
UnixTimestart=$(date -d "$userloginTime" +%"s")                                                 #covert userloginTime to Unix Time
UnixTimeNow=$(date +%"s")                                                                       #get Unix Time now
Period=$(expr $UnixTimeNow - $UnixTimestart)                                                    #calculate duration from user login to now 
day=$(expr $Period % 31556926 % 2629743 / 86400)                                                #covert duration to day
hour=$(expr $Period % 31556926 % 2629743 % 86400 / 3600)                                        #covert duration to hour
minu=$(expr $Period % 31556926 % 2629743 % 86400 % 3600 / 60)                                   #covert duration to minu
sec=$(expr $Period % 31556926 % 2629743 % 86400 % 3600 % 60)                                    #covert duration to sec
echo "User use this computer : " $day "Day" $hour "Hous" $minu "Minute" $sec "Second"
exit