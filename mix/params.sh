#!/bin/bash

# параметры ввода
echo "программа ${0}"
echo "всего параметров $#" 

current=1

for i in $@
do 
    echo "$current : $i"
    current=$[ $current+1 ]
done
