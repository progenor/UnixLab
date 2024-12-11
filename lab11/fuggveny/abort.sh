#!/usr/bin/env bash

function term() {
    echo "A $$ szkript megszakítva term el"
    exit 1
}

function abrt() {
    echo "A $$ szkript megszakítva abrt vel"
    exit 1
}

trap term TERM
trap abrt ABRT

while true; do
    echo "Futok"
    sleep 1
done
