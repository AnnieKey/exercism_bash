#!/usr/bin/env bash

#Task:
#Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

N=10
first=0
second_sum=0
for ((item=1; item<=N; item++))
    do
        first=$(($first+$item))
        second_item=$(echo "$item^2" | bc)
        second_sum=$(($second_sum+$second_item))
    done


first_sum=$(echo "$first^2" | bc)
echo $first_sum
echo $second_sum
difference=$(($first_sum-$second_sum))
echo $difference