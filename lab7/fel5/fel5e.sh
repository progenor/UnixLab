#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <file> <length>"
    exit 1
fi

file="$1"
lenght="$2"

for word in $(cat "$file"); do
    echo "$word"
done
