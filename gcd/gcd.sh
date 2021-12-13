#!/bin/bash

function gcd {
    if [ $(( $1 - ($1 / $2)*$2)) -eq 0 ]
    then 
        echo "$2"
    else
        >&2 echo "$2" $(( $1 - ($1 / $2)*$2 ))
        echo $(gcd $2 $(( $1 - ($1 / $2)*$2 )))
    fi
}


if [[ $1 ]]
then 
    if [[ $2 ]]
    then 
        echo $(gcd $1 $2)
    else
        read -p "2nd number: " n2
        echo $(gcd $1 $n2) 
    fi
else
    read -p "1st number: " n1
    read -p "2nd number: " n2
    echo $(gcd $n1 $n2)
fi
