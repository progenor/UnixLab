#!/usr/bin/env bash

if rm -i "$1"; then
    echo "sikeres"
else
    echo "nem sikeres"
fi