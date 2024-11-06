#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo nincs 2 parancs
    exit 1
fi

file="$1"
sor="$2"

if [[ ! -f "$file" ]] || [[ ! -w "$file" ]]; then
    echo nem irhato, nem letezik
    exit 3
fi

echo "$sor" >>"$file"
