#!/bin/bash

while true; do
    echo "$(date)" >> /var/log/time.log
    sleep 60
done
