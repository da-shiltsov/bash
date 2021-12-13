#!/bin/bash

if [ "${1}" \> "${2}" ]
then
echo "The test value ${1} is greater than ${2}"
else
echo "The test value ${1} is not greater than ${2}"
fi
