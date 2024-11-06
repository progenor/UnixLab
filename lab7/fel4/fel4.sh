#!/usr/bin/env bash

sor1=$(head -1 a.txt)

# nem lene jo mert kitorli, nem ugy jon sorrendbe a meghivasnal
# tail -n +2 a.txt >b.txt
# ezzel megmarad
tail -n +2 a.txt >a.txt.tmp
# atnevezzuk
mv a.txt.tmp a.txt
