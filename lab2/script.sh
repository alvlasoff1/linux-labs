#!/bin/bash

leak=""

while true; do
    leak+=$(head -c 1024000 /dev/urandom | base64)  # добавляем ~1.3КБ текста
    sleep 0.1
done
