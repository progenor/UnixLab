#!/usr/bin/bash

if [[ ! $1 =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number"
    exit 1
fi

leave=$1

progre='lassu\.sh'

count=$(pgrep -c -x "$progre")

term=$((count - leave))

if ((term > 0)); then
    while ((term--)); do
        pkill -x "$progre"
    done
fi
