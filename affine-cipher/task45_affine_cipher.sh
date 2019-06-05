#!/usr/bin/env bash

#Task:
#Create an implementation of the affine cipher,
# an ancient encryption system created in the Middle East.
# The encryption function is:
# E(x) = (ax + b) mod m
# The decryption function is:
# D(y) = a^-1(y - b) mod m
# Note: a^-1 is MMI
# Bash modulo operation on negative numbers returns
# remainder, not mathematical modulus.
# To calculate mathematical modulo, we need to add
# modulator number to it.

#set -x
input="test"
a=5
b=7

process () {
    input="${input//[[:blank:][:punct:]]/}"
    case "$1" in
        encode)
            echo "$input" | tr 'a-z' "$cypherbet" | fold -w5 | paste -sd' '
            ;;
        decode)
            echo "$input" | tr "$cypherbet" 'a-z'
            ;;
    esac
}

coprime_check () {
    check="$(( $a % 2 ))"
    if [ "$check" -ne 0 ]; then
        for (( factor=3; factor<="$a"; factor+=2 )); do
            if [[ $((a % factor)) -eq 0 && $((26 % factor)) -eq 0 ]]; then
                echo "a and m must be coprime. 1" && return 1
            fi
        done
    else
        echo "a and m must be coprime. 2" && return 1
    fi
}

for letter in {a..z};
    do
        alphabet+=("$letter")
    done

for i in "${!alphabet[@]}";
    do
        index=$((a * i + b))
        index=$((index % 26))
        cypherbet+="${alphabet[$index]}"
    done

coprime_check
process "$1"