#!/bin/bash

if [[ $# -eq 2 ]]; then
    count=$(( wget -q -O - "$2" | grep -o "$1" ) | wc -l )
    echo "$1: $count"
    exit $count
else
    echo "Usage goog.sh WORD WEBSITE "
fi