#!/usr/bin/env bash

#Task:
#Convert a number to a string, the contents of which depend on the number's factors.
#    If the number has 3 as a factor, output 'Pling'.
#    If the number has 5 as a factor, output 'Plang'.
#    If the number has 7 as a factor, output 'Plong'.
#    If the number does not have 3, 5, or 7 as a factor, just pass the number's digits straight through.

declare -a array_of_factors
counter=0

find_factors_of_number () {
number=$1

for (( item=2; item<=$1; item++ ))
do
    while [ $((number%$item)) == 0 ]
    do
        if [ $item -eq 3 ]
        then
            echo 'Pling'
        elif [ $item -eq 5 ]
        then
            echo 'Plang'
        elif [ $item -eq 7 ]
        then
            echo 'Plong'
        else
            echo $item
        fi
        number=$((number/$item))
    done
done
}


read input_number
find_factors_of_number $input_number

