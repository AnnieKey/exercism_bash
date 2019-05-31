#!/usr/bin/env bash

#Task:
#Given a phrase, count the occurrences of each word in that phrase.
#For example for the input "olly olly in come free"
#olly: 2
#in: 1
#come: 1
#free: 1



#set -x

declare array_of_occurrences

read string

array_of_words=$(echo -e "${string// /\\n}" | sort -u)
string=$(echo " $string " )
for item in $array_of_words
do
    word=$item
    count=$(echo "${string}" | awk -F"${word} " '{print NF-1}')

    echo ":${word} :${count}"
done



