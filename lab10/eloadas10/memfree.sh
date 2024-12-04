#!/bin/bash
#olvasás a /proc fájlrendszerből

while true; do
  #a pillanatnyi szabad memória értékének kiolvasása
  egrep -i memavailable /proc/meminfo | tr -d "\n"

  echo -ne "\r"
  sleep 1
done
