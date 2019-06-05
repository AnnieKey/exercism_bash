#!/usr/bin/env bash

#Task:
#Write a function to convert from normal numbers to Roman Numerals.

#set -eu -o pipefail

read number

roman_numerals=$(echo $number | tr a-z A-Z)


[[ "${roman_numerals//[IVXLCDM]/}" == "" ]] || \
    { echo Roman numerals ${roman_numerals} contains invalid characters ; \
    exit 1 ;}

number=$(
    echo ${roman_numerals} |
    sed 's/CM/DCD/g' |
    sed 's/M/DD/g' |
    sed 's/CD/CCCC/g' |
    sed 's/D/CCCCC/g' |
    sed 's/XC/LXL/g' |
    sed 's/C/LL/g' |
    sed 's/XL/XXXX/g' |
    sed 's/L/XXXXX/g' |
    sed 's/IX/VIV/g' |
    sed 's/X/VV/g' |
    sed 's/IV/IIII/g' |
    sed 's/V/IIIII/g' |
    tr -d '\n' |
    wc -m
)

echo ${roman_numerals} is ${number}

