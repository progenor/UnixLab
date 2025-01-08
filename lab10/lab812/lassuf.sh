#!/usr/bin/bash

if [[ ! -f $1 ]]; then
    echo "Usage: $0 <file>"
    exit 1
fi

log='lassuf.log'
echo "" >$log

function kilep() {
    echo kilep >>$log
    exit 0
}

trap kilep INT TERM

prev_state=megjelent
while true; do
    sleep 0.5
    if [[ -f $1 ]]; then
        if ((prev_sate != "megjelent")); then
            $prev_state=megjelent
            echo $prev_state >>$log
        fi
    fi

    if [[ ! -f $1 ]]; then
        if ((prev_state != "eltunt")); then
            $prev_state=eltunt
            echo $prev_state >>$log
        fi
    fi
done
