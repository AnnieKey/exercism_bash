#!/usr/bin/env bash

#Task:
#Given a number from 0 to 999,999,999,999, spell out that number in English.

digits=(
    "" one two three four five six seven eight nine
    ten eleven twelve thirteen fourteen fifteen sixteen seventeen eightteen nineteen
)
tens=("" "" twenty thirty forty fifty sixty seventy eighty ninety)
units=("" thousand million billion trillion)

number2words() {
    local -i number=$((10#$1))
    local -i u=0
    local words=()
    local group

    while ((number > 0)); do
        group=$(hundreds2words $((number % 1000)) )
        [[ -n "$group" ]] && group="$group ${units[u]}"

        words=("$group" "${words[@]}")

        ((u++))
        ((number = number / 1000))
    done
    echo "${words[*]}"
}

hundreds2words() {
    local -i num=$((10#$1))
    if ((num < 20)); then
        echo "${digits[num]}"
    elif ((num < 100)); then
        echo "${tens[num / 10]} ${digits[num % 10]}"
    else
        echo "${digits[num / 100]} hundred $("$FUNCNAME" $((num % 100)) )"
    fi
}


read number
number2words "$number"