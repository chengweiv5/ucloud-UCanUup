#!/bin/bash

PROGRAM=$(basename $0)
WORD="UCanUup"

function usage ()
{
    echo "Usage: $PROGRAM <file>"
    exit 1
}

if [ $# -ne 1 ]; then
    usage
else
    echo "$WORD shows up \`$(grep -o $WORD $1 | wc -l)\` times"
fi
