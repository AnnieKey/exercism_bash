#!/usr/bin/env bash
#Task:
#Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is odd, multiply n by 3 and add 1 to get 3n + 1.
#Repeat the process indefinitely. The conjecture states that no matter which number you start with, you will always reach 1 eventually.
#Given a number n, return the number of steps required to reach 1.

number=12

counter=0

while [ "$number" != "1" ]
do
  if [[ "$(($number % 2))" == "0" ]]
  then
    number=$(($number / 2))
  else
    number=$((($number * 3) + 1))
  fi
  echo $number
  counter=$(($counter + 1))
done

echo "$counter steps."