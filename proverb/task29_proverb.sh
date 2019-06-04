#!/usr/bin/env bash


#Task:
#For want of a horseshoe nail, a kingdom was lost, or so the saying goes.
#
#Given a list of inputs, generate the relevant proverb. For example,
# given the list ["nail", "shoe", "horse", "rider",
# "message", "battle", "kingdom"], you will output the full text of this proverbial rhyme:
#For want of a nail the shoe was lost.
#For want of a shoe the horse was lost.
#For want of a horse the rider was lost.
#For want of a rider the message was lost.
#For want of a message the battle was lost.
#For want of a battle the kingdom was lost.
#And all for the want of a nail.

array_of_words=( nail shoe horse rider message battle kingdom )

number_of_iterations=${#array_of_words[@]}

for (( item=0; item<$number_of_iterations; item++ ))
    do
        second_item=$( echo "$item+1" | bc )
        word=${array_of_words["$item"]}
        next_word=${array_of_words["$item+1"]}
        echo "For want of a $word the $next_word was lost."
    done
echo "And all for the want of a ${array_of_words["$item+1"]}."