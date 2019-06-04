#!/usr/bin/env bash

#Task:
#Given a word and a list of possible anagrams, select the correct sublist.
#Given "listen" and a list of candidates like "enlists" "google" "inlets" "banana" the program should return a list containing "inlets".

declare -A rezult_array
word="listen"
array_of_candidates=(enlists google inlets banana)

sorted_word=$(echo $word | grep -o . | sort |tr -d "\n")

for ((item=0; item<${#array_of_candidates[@]}; item++))
do
    element=${array_of_candidates[$item]}
    sorted_element=$(echo $element | grep -o . | sort |tr -d "\n")
    if [[ $sorted_element == $sorted_word ]]
    then
        rezult_array+=$element
    fi
done
echo $rezult_array