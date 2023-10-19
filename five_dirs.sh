#!/bin/bash
mkdir ./five
mkdir ./five/dir{1..5}
cd ./five
for i in $(seq 1 1 5); do
    cd ./dir$i;
    for j in $(seq 1 1 4); do
	for k in $(seq 1 1 $j); do
	    echo $j 1>> file$j; 
	done;
    done;
    cd ../;
done;
