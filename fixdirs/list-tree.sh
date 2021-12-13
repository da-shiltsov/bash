#!/bin/bash

if [[ -f $1 ]]
then 
    echo "$1 is file"
fi
if [[ -d $1 ]]
then 
    echo "$1 is dir"
fi
