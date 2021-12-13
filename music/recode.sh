#!/bin/bash
#
# recode.sh src dst
#
# перекодируем в мп3, убираем из названия пробелы и заменяем m4a на mp3 (sed)
#
# ffmpeg -v 5 -y -i input.m4a -acodec libmp3lame -ac 2 -ab 128k output.mp3

lst=$(ls -1 $1)

IFS=$'\n'
for old_name in $lst
do
    # все же уберу пробелы из имен
    # sed s/m4a$/mp3/ - плохо, меняет только 1е вхождение, а если в середине файла есть?

    new_name=${2}'/'$(basename -s m4a $(echo $old_name | sed s/\ //g ))mp3
    
    echo ${1}'/'$old_name $new_name
    ffmpeg -v 5 -y -i ${1}'/'$old_name -acodec libmp3lame -ac 2 -ab 128k $new_name
done
