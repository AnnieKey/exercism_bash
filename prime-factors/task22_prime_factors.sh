#!/usr/bin/env bash

#Compute the prime factors of a given natural number.
#A prime number is only evenly divisible by itself and 1.
#Note that 1 is not a prime number.

echo "Please enter a number"
read number

for (( item=2; item<=number; item++ ))
    do
        while [ $((number%$item)) == 0 ]
        do
            echo $item
            number=$((number/$item))
        done
    done