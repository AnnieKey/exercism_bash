#!/usr/bin/env bash

#Task:
#Implement a binary search algorithm.

dichotomic_search () {
    min=$1
    max=$2
    command=$3

    while [ $min -lt $max ]; do
        current=`expr '(' "$min" + "$max" + 1 ')' / 2`
        if $command $current
            then min=$current
        else max=`expr $current - 1`
        fi
        done
    echo $min
}

arr=(Ann:C Bob:A Cindy:B Dean:E Emily:A Karen:A Zob:A)

function is_smaller {
  element=$(echo ${arr[$2]} | cut -f1 -d :)
  if [[ "$element" > "$1" ]]
    then false
    else true
  fi
}

read target
highest_index=`expr ${#arr[@]} - 1`
index=$(dichotomic_search 0 $highest_index "is_smaller $target")
echo "${arr[$index]}"