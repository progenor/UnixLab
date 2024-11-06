#!/bin/bash

dir=${1:? nincs könyvtár}

for f in "$dir"/*
do
    [ -f "$f" ] || continue
    echo $f
done
