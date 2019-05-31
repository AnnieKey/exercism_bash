#!/usr/bin/env bash

#Task:
#Convert a phrase to its acronym.

convert_to_acronym () {
    string=$@
    array=($string)
    for (( item=0; item<=${#array[@]}; item++ ))
    do
        word=${array[item]^}
        symbol=${word:0:1}
        acronym+=$symbol
    done
    echo $acronym

}

convert_to_acronym "Hello Sigma Software"