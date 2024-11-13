#!/usr/bin/env bash

if [[ -z $1 ]]; then
    echo "no number"
    exit 1
fi

# for num in $(seq 1 $1); do
#     if [[ $num -eq 11 ]]; then
#         exit 1
#     fi
#     echo $num
# done
i="$1"

if ((i > 10)); then
    i=10
fi

while ((i--)); do
    echo "$i"
done
