#!/usr/bin/env bash

#task:
#The ISBN-10 verification process is used to validate book identification numbers.
# These normally contain dashes and look like: 3-598-21508-8


declare -r ISBN=${1//[^[:digit:]X]/}

declare acc
declare i

if ! [[ $ISBN =~ ^([[:digit:]]){9}[[:digit:]X]$ ]]; then
    echo 'Not valid'
    exit 0
fi

for i in $(seq 0 $((${#ISBN} - 2))); do
    ((acc += (${ISBN:$i:1} * (10 - i))))
done

if [[ ${ISBN:9:1} == 'X' ]]; then
    ((acc += 10))
else
    ((acc += ${ISBN:9:1}))
fi

if [[ $((acc % 11)) -eq 0 ]]; then
    echo 'Valid'
else
    echo 'Not valid'
    exit 0
fi