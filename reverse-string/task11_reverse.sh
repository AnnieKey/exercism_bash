#!/usr/bin/env bash

#Task:
#Reverse a string


read string

length=${#string}
for (( item=$length-1; item>=0; item--));
do
    rezult="$rezult${string:$item:1}";
done
echo $rezult