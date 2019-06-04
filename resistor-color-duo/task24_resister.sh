#!/usr/bin/env bash

#Task:
#In this exercise, you are going to create a helpful program so that you don't have to remember the values of the bands.
# The program will take two colors as input, and output the correct number.

declare -A marks
marks=( ["Black"]=0 ["Brown"]=1 ["Red"]=2 ["Orange"]=3 ["Yellow"]=4 ["Green"]=5 ["Blue"]=6
 ["Violet"]=7 ["Grey"]=8 ["White"]=9)

read color1 color2

mark1=${marks["$color1"]}
mark2=${marks["$color2"]}
general_mark="$mark1$mark2"
echo $general_mark