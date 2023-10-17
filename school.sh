#!/bin/bash
cat Property_Tax_Roll.csv | grep "MADISON SCHOOL" | cut -d ',' -f 7 | { sum=0; i=0; while read n; do sum=$(($sum + $n)); i=$(($i+1)); done; echo "The sum is $sum"; echo "The average is $(($sum/$i))"; } 
