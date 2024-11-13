#!/bin/bash
# $1 : ip cím vagy gép név
#      pl. 192.168.117.101 vagy www.google.ro
#futtatás példa:
#   ./while6.sh ms.sapientia.ro

IP=${1:? nincs IP cím}

#addig marad a ciklusban amíg elindul a gép
# -q quiet nem ír ki semmit a küldött/kapott csomagokról
# -c hány csomagot küldjön
until ping -q -c 1 "$IP" 2>/dev/null 1>/dev/null; do
    sleep 1
done

echo a "$IP" című gép hálózaton van