#!/bin/bash
# INT jelzést kifogó példa

#jelzéskezelő az INT jelzésre
trap "echo ez egy ^C volt" INT

#végtelen ciklus
#miközben fut, lenyomjuk a Ctrl-C-t
#a szkriptet csak TERM vagy más megszakító jelzéssel lehet leállítani
while true; do
	sleep 1
done
