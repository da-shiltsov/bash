#!/bin/bash

function factorial {
    if [ $1 -eq "1" ]
    then
        echo 1
    else
        res=$(factorial $(( ${1}-1 )))
        echo $(( $1*$res ))
    fi

}
echo $(factorial $1)


 

