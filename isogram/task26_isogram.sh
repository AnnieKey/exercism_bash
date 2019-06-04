#!/usr/bin/env bash

#Task:
#Determine if a word or phrase is an isogram.
#An isogram (also known as a "nonpattern word") is a word or phrase without
# a repeating letter, however spaces and hyphens are allowed to appear multiple times.
#
#Examples of isograms:
#    lumberjacks
#    background
#    downstream
#    six-year-old
#The word isograms, however, is not an isogram, because the s repeats.


string="background"

sorted_first_string=$( echo  $string | grep -o . | sort )
sorted_unique_string=$( echo  $string | grep -o . | sort --unique)
if [[ $sorted_first_string ==  $sorted_unique_string ]]
then
    echo "It is an isogram"
else
    echo "It is not an isogram"
fi