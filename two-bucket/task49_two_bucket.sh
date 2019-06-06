#!/usr/bin/env bash


#task:
#Given two buckets of different size, demonstrate how to measure
# an exact number of liters by strategically transferring liters of fluid between the buckets.



pour () {
    jug1=$1
    jug2=$2
    max1=3
    max2=5
    fill=4
    echo "$jug1 -- $jug2"
   
    if [[ $jug2 == $fill || $jug1 == $fill ]]
    then
        exit

    elif [[ $jug2 == $max2 ]]
    then
        pour 0 $jug1

    elif [[ $jug1 != 0 && $jug2 == 0 ]]
    then
        pour 0 $jug1

    elif [[ $jug1 == $fill ]]
    then
        pour $jug1 0

    elif [[ $jug1 < $max1 ]]
    then
        pour $max1 $jug2

    elif [[ $jug1 < $( echo "$max2 - $jug2" | bc ) ]]
    then

        pour 0 $(echo "$jug1 + $jug2" | bc)
    else
        tmp1=$( echo "$max2 - $jug2" | bc)
        tmp2=$( echo "$max2 - $jug2" | bc )
        tmp11=$(echo "$jug1 - $tmp1" | bc)
        tmp22=$( echo "$tmp2 + $jug2" | bc)
        pour $tmp11 $tmp22
    fi

}


pour 0 0


