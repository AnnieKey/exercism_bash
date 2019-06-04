#!/usr/bin/env bash


#Task:
#Given a single stranded DNA string, compute how many times each nucleotide occurs in the string.

string="CTGAAAAGTTC"

length=${#string}
for (( item=$length-1; item>=0; item--));
do
    symbol=${string:item:1}
    symbol=${symbol^^}
    echo "${string}" | awk -F"${symbol}" '{print NF-1}'

done