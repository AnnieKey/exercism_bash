#!/usr/bin/env bash

#Task:
#Given a person's allergy score, determine whether or not
# they're allergic to a given item, and their full list of allergies.

#set -x
score=34

 find_allergies () {
    mark=$1
    case $mark in
        "1")
            echo "eggs"
            ;;
        "2")
            echo "peanuts"
            ;;
        "4")
            echo "shellfish"
            ;;
        "8")
            echo "strawberries"
            ;;
        "16")
            echo "tomatoes"
            ;;
        "32")
            echo "chocolate"
            ;;
        "64")
            echo "pollen"
            ;;
        "128")
            "cats"
            ;;
    esac
 }



declare array_of_allergic
score=$(( score & 255 ))
score2=$(echo "obase=2;$score" | bc)
for (( item=0; item<="${#score2}"-1; item++))
    do
        number=$(echo ${score2:$item:1})
        if (( $number == "1" ))
        then
            allergie_score=$(echo "2^$item" | bc)
            find_allergies $allergie_score
        fi
    done
