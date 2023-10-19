#!/bin/bash
# e.g. ./rm_n.sh five 3
if [[ $# < 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2;
    exit;
fi;
find $1 -size +$2c -type f -print -exec rm {} \;
