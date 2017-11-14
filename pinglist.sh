#!/bin/bash
#Program name: pinglist.sh
#Contact is John Mintz.  john.mintz@gmail.com twitter@johnwmintz
#download this file and the list.txt file and place in the same folder when executing script.
#Place list of all IPs below the # lines.

cat list.txt| tail -n +4 |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "device $output is up" 
    else
    echo "device $output is down"
    fi
done
