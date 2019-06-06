#!/usr/bin/env bash

#task:
#Correctly determine the fewest number of coins to be given to a customer
# such that the sum of the coins' value would equal the correct amount of change.

amount=40
coins=( 1 5 10 25 100 )

coins_length=${#coins[@]}
last_element=$(echo "$coins_length - 1" | bc)
item=$last_element
element=$amount
declare -A rezult

for (( item=$last_element; item>=0; item-- ))
do
    if [[ $element > ${coins[$item]} ]]
    then
        tmp=$(echo "$element%${coins[$item]}" | bc)
        rezult+=$(echo "$element - $tmp" | bc)
        rezult+=" "
        element=$tmp
        continue
    fi
    if [[ $element < ${coins[$item]} ]]
    then
        tmp=$(echo "$element/${coins[$item]}" | bc)
        continue
    fi
done


echo $rezult
