#!/bin/bash

#if [ $(( $1 // $2 )) -eq 0 ]
#then 
#    echo "$1 делится на $2"
#else
#    echo "$1 не делится на $2"
#fi

echo $(( "$1"//"$2" ))
