#!/usr/bin/env bash


#Task:
#Create an implementation of the atbash cipher, an ancient encryption system
#created in the Middle East.

 word="test"

 encode_word=$(echo "$word" | tr -s 'abcdefghijklmnopqrstuvwxyz' 'zyxwvutsrqponmlkjihgfedcba')
 echo "encode: $encode_word"
 decode_word=$(echo "$encode_word" | tr -s 'zyxwvutsrqponmlkjihgfedcba' 'abcdefghijklmnopqrstuvwxyz')
 echo "decode: $decode_word"