#!/bin/bash
#példa a set opciók használatára

set -e  #szkript leáll, ha egy parancssorban hiba keletkezik

file="piros alma.txt"

#a fájlnév idézés nélkül hibába futunk
ls -l $file

echo vége
