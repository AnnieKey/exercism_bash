#!/usr/bin/env bash

#Task:
#Convert a number, represented as a sequence of digits in one base, to any other base.


read current_base
read new_base
read number

echo "ibase=$current_base; obase=$new_base; $number" | bc
