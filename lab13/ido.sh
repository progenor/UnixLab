#!/bin/bash
#mennyit futott a szkript milliszekundumban?
t1=$(date +%s%3N) # indulás időbélyege ms-ban
#tevékenység
seq 1 100000 | shuf | sort >/dev/null
t2=$(date +%s%3N) # számítás vége időbélyege ms-ban
echo futási idő: $((t2 - t1)) ms
