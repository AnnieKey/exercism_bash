#!/usr/bin/env bash

#Task:
#Write some code to determine whether a number is an Armstrong number.


calculate_is_armstrong () {
    number=$1
    sum=0
    amount_of_numbers=${#number}
    while [[ $number > 0 ]]
    do
        smb=$(expr $number % 10)
        multiplication=$( echo "$smb ^ $amount_of_numbers" | bc )
        sum=$(expr $sum + $multiplication)
        number=$(expr $number / 10)
    done
    if [[ $sum == $1 ]]
    then
        echo "$1 is an Amstrong Number"
    else
        echo "$1 is not an Amstrong Number"
    fi
}



read number
calculate_is_armstrong $number