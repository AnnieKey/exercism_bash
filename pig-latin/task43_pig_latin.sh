#!/usr/bin/env bash

#Implement a program that translates from English to Pig Latin.


string="rhythm"
vowels=(a e i o u A E I O U)
for element in $vowels; do
    if [[ $element == ${string:0:1} ]]
    then
        startswithvowel=true
        break
    fi
done

if [ $startswithvowel ]; then
        echo ${string}ay
else
        echo ${string:1}${string:0:1}way
fi