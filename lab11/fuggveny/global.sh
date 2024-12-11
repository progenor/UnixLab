#!/usr/bin/env bash
#globális/lokális változókat bemutató teszt szkript

#egy beállított változó
teszt=piros

#globális változót módosító függvény
function set_global {
    teszt="$1"
}

#ugyanolyan nevű lokális változót módosító függvény
#a lokális változó elfedi a globálisat, ha ugyanaz a név
#a függvény visszatérése után a globális megtartja eredeti értékét
function set_local {
    local teszt
    teszt="$1"
}

echo "eredeti: $teszt"

set_global sárga
echo "set_global után: $teszt"

set_local zöld
echo "set_local után: $teszt"
