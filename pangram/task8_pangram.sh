#!/usr/bin/env bash

#Task:
#Determine if a sentence is a pangram

# set -x
Input=$(echo ${1,,} | grep -o . | sort | uniq)
Input=${Input//[![:alpha:]]/}

if [[ $( echo "$Input" | wc -c ) == 27 ]]; then
    echo "The sentence is pangram."
else
    echo "The sentence is not pangram."
fi