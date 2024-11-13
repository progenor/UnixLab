#!/usr/bin/env bash

if [[ ! -f $1 ]]; then
    echo "File doesn't exist!"
    exit 2
fi

for line in $(<"$1"); do
    ((sum += line))
done

# for num in "$@"; do
#     ((sum += num))
# done
echo "Sum: $sum"
