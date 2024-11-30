#!/bin/bash
URLs=("https://google.com" "https://facebook.com" "https://twitter.com" "https://httpstat.us/404" "https://httpstat.us/500")

logfile="HW2_T1_log.txt"

#Check if log file exists
if [ -f "$logfile" ]; then
    rm $logfile
fi

#Loop through URLs
for url in "${URLs[@]}"
do
    http_code=$(curl -s -o /dev/null -w "%{http_code}" -L "$url")
    if [ "$http_code" -eq 200 ]; then
        echo "$url: OK ($http_code)" >> $logfile
    else
        echo "$url: ERROR ($http_code)" >> $logfile
    fi
done

#Print end execution message
echo "Logs saved to $logfile"