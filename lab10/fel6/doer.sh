#!/usr/bin/env bash

MEGA=2

#
if [[ $1 == -m ]]; then
    if [[ ! $2 =~ '^[1-9][0-9]*$' ]]; then
        MEGA="$2"
    else
        echo "Error: -m requires a value"
        exit 1
    fi

    shift 2
fi

dir=${1:? no directory given}

if [[ ! -d $dir ]]; then
    echo "Error: $dir is not a directory"
    exit 1
fi

#Create these directories if they dont exist
mkdir -p png szemet gif

for f in "$dir"*.txt; do
    mime=$(file --mime-type -b "$f")
    if [[ ! $mime =~ ^text ]]; then
        echo "$f nem szoveges"
        echo mf "$f" szemet
    fi

done
