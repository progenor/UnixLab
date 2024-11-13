#!/bin/bash
#a parancssor argumentumainak végigjárása
#while szerkezettel
#indítás:  bash shift.sh a b c d

while (($# > 0)); do #amíg van még argumentum
    # shellcheck disable=SC2016
    echo A '$#' értéke: $# , a '$1' értéke: "$1"
    shift 
done
