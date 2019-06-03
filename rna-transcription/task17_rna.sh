#!/usr/bin/env bash

#Task:
#Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement:
#
#    G -> C
#    C -> G
#    T -> A
#    A -> U
#echo "${dna//"G"/$'C'}"

dna="CTGA"

echo "$dna" | tr "GCTA" "CGAU"