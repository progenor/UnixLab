#!/usr/bin/env bash
#felajánlja törlésre az összes .txt állományt a munkakönyvtárból
#interaktívan töröl

#lépjen ki, ha bármelyik parancs hibásan fut le
set -e

echo -n ".txt típusú állományok száma:"

ls -1 ./*.txt  2>/dev/null  | wc -l 

rm -i ./*.txt  

