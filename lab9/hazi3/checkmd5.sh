#!/bin/env/ bash

while getopts ":t:" flag; do
  case $flag in
  t)
    tFlag=${OPTARG}
    if [[ ! $tFlag =~ ^[0-9]{0,3}$ ]]; then
      echo "Not a number"
      exit 1
    fi
    ;;
  esac
done
#set t to tflag or 1
T=${tFlag:=1}

shift $((OPTIND - 1))

# get dir and check if its a directory
dir=${1:?"nincs parameter"}

if [[ -d dir ]]; then
  echo "not a directory"
  exit 2
fi

#futtasd le az md5sum ot a directory ra
md5sum $dir/*.txt >"$dir".md5
