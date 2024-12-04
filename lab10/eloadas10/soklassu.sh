#!/bin/bash
#több lassu.sh folyamat indítása
#használat ugyanabban a shellben amiben a parancsot kiadjuk:
#
#   . soklassu.sh
#
lassu.sh 1000 >/dev/null &
nice -n 19 lassu.sh 1000 >/dev/null &
lassu.sh 1000 >/dev/null &
falank.sh 100 0.1  &
