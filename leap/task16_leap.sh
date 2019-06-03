#!/usr/bin/env bash

#Task:
#Given a year, report if it is a leap year.

#on every year that is evenly divisible by 4
#  except every year that is evenly divisible by 100
#    unless the year is also evenly divisible by 400


read year

if [[ $(($year%4)) == 0 ]]
    then
        if [[ $(($year%100)) == 0 ]]
        then
            if [[ $(($year%400)) == 0 ]]
            then
                echo "It is a leap year"
            else
                echo "It is not a leap year"
            fi
        else
            echo "It is a leap year"
        fi
    else
        echo "It is not a leap year"
    fi