#!/usr/bin/env bash

#Task:
#Calculate the Hamming difference between two DNA strands.

sequence_1="gagcctactaacgggat"
sequence_2="cagcrractapcgigat"
counter=0


calculate_hamming_defference () {
    if ! [ ${#sequence_1} -eq ${#sequence_2} ]; then
        echo "Error: Sequences are not equal."
    else
        for (( item=0; item<${#sequence_1}; item++ ))
        do
            if [ "${sequence_1:$item:1}" != "${sequence_2:$item:1}" ]; then
                (( ++counter ))
            fi
        done
        echo $counter
    fi
}

calculate_hamming_defference