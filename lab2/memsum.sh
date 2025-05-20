#!/bin/bash

VSZ_TOTAL=0
RSS_TOTAL=0

while read -r pid comm vsz rss; do
    if [[ "$comm" == "$1" || "$pid" == "$1" ]]; then
        ((VSZ_TOTAL+=vsz))
        ((RSS_TOTAL+=rss))
    fi
done < <(ps -eo pid,comm,vsz,rss | tail -n +2)

echo "VSZ: $VSZ_TOTAL KB"
echo "RSS: $RSS_TOTAL KB"
echo "ИТОГО: $((VSZ_TOTAL + RSS_TOTAL)) KB"
