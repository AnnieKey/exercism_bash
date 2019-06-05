#!/usr/bin/env bash

#task:
#Implement an evaluator for a very simple subset of Forth.


FORTH_PROGRAMME=": star 42 emit ;
: top 0 do star loop cr ; : bottom top ;
: middle star 2 - 0 do space loop star cr ;
: box ( width height -- ) cr over top 2 - 0 do dup middle loop bottom ;
bye ;"
gforth --evaluate "$FORTH_PROGRAMME"
echo $?

