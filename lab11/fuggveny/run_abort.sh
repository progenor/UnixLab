#!/usr/bin/bash

./abort.sh &
elsoPid=$!
./abort.sh &
masodikPid=$!

wait $elsoPid
echo "Az első szkript végetért $elsoPid"

wait $masodikPid
echo "A második szkript végetért $masodikPid"
echo "A két szkript végetért"
