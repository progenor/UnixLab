#!/usr/bin/env bash

if [[ ! -s $1 ]]; then
    echo "Usage: $0 <file>"
    exit 1
fi

while [[ ! -s $1 ]]; do
    sleep 1
done
sleep 0.01
head -1 $1
