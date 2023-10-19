#!/bin/bash
if [[ $# == 2 ]]; then
    file=$2;
elif [[ $# == 1 ]]; then  
    file=/dev/stdin;
else
    echo "usage: ./mean.sh <column> [file.csv]";
    exit;
fi
col=$1;

cat $file | tail -n +2 | cut -d ',' -f $col | { sum=0; cnt=0; while read n; do sum=$(($sum+$n)); cnt=$(($cnt+1)); done; echo $sum $cnt; }
