#!/bin/bash

# считает сколько слов в каждой строке заданного файла
# руками, без wc

IFS=$'\n'

for line in $(cat task-list.txt)
do
    w=0
    IFS=' '
    for word in $line
    do
        w=$[ $w+1 ]
    done
    if [ $resline ]
    then
        resline="$resline\n$w"
    else
        resline="$w"
    fi
done

echo -e $resline > ${2}
