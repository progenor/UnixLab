#!/bin/bash
#végtelen ciklus
#percenként elindít egy folyamatot a webszerveren

while true; do
    wget -q "https://www.ms.sapientia.ro/~lszabo/cron.php" -O -
    sleep 2
done
