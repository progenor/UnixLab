#!/bin/bash
# INT jelzést kifogó példa

#jelzéskezelő az INT jelzésre
#trap "echo ez egy megszakító jelzés volt" INT TERM TSTP QUIT ABRT
trap "echo ez egy ^C volt" INT TERM QUIT  

#végtelen ciklus
#miközben fut, lenyomjuk a Ctrl-C-t
#a szkriptet csak TERM vagy más megszakító jelzéssel lehet leállítani
while true
do
	sleep 1
done

