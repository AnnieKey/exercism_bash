#!/usr/bin/env bash

#Task:
#Given a number determine whether or not it is valid per the Luhn formula.


string1="4539 1488 0343 6467"
string2="8273 1232 7352 0569"

string=$string2
string=$(echo "$string" | tr -d " ,.%&$\#@*")

sum=0
table=(0 2 4 6 8 1 3 5 7 9)
length=${#string}
if [ $(($length % 2)) != 0 ]
then
    string="0$string"
    ((++length))
fi

while [ $length != 0 ]
    do
        sum="$(($sum + ${string:$((length - 1)):1}))"
        sum="$(($sum + ${table[${string:$((length - 2)):1}]}))"
        length=$((length - 2))
    done
sum="$(($sum % 10))"

if [ "$sum" == "0" ]
then
    echo "Number is valid"
else
    echo "Number is not valid"
fi