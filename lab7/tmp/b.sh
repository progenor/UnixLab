#!/bin/bash

dir=${1:? nincs könyvtár}

for f in $( ls $dir/* )
do
    echo $f
done
