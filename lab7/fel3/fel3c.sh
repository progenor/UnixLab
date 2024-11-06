#!/usr/bin/env bash
if [[ -z "$1" ]]; then
    echo nincs file nev
    exit 1
fi

if ! [[ -d adatok ]]; then
    mkdir adataok
fi

file="$1"

if ! [[ -f "$file" ]]; then
    echo nem letezik
fi

if mv "$file" adatok; then
    echo "sikerult"
else
    echo "nem sikerult"
fi