#!/usr/bin/env bash

#Task:
#Two-fer or 2-fer is short for two for one. One for you and one for me.
#"One for X, one for me."
#When X is a name or "you".
#If the given name is "Alice", the result should be "One for Alice, one for me."
#If no name is given, the result should be "One for you, one for me.

standart_name="You"

test_parameters () {
    name=$1
    if [ $1 -z ]
    then
        name=$standart_name
    fi
    echo "One for $name and one for me"
}

test_parameters "Alica"
test_parameters
