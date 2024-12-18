#!/usr/bin/env bash

cont=${1:?No argument given}

pSearch=$(pgrep -x 'lassu\.sh')

case $cont in
start)
    start=1
    sec=${2:?No seconds given}

    if [ -z "$pSearch" ]; then
        echo "Starting lassu.sh"
        ./lassu.sh $sec >/dev/null &
    else
        echo "lassu.sh is already running, pid=$pSearch"
    fi
    ;;
stop)
    if [ -z "$pSearch" ]; then
        echo "lassu.sh is not running"
    else
        echo "Stopping lassu.sh"
        if kill -TERM $pSearch; then
            echo "TERM ELKULDVE"
        else
            echo "TERM ELKULDVE de nem sikerult"
            sleep 1
            $pSearch=$(pgrep -x 'lassu\.sh')
            if [[ -z pSearch ]]; then
                echo "lassu.sh is not running"
            else
                echo "Killing lassu"
                kill -KILL $pSearch
            fi
        fi

    fi
    ;;
status)
    if [ -z "$pSearch" ]; then
        echo "lassu.sh is not running"
    else
        echo "lassu.sh is running"
    fi
    ;;
*)
    echo "invalid argument"
    ;;
esac
