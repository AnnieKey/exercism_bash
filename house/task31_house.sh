#!/usr/bin/env bash

#Task:
#Recite the nursery rhyme 'This is the House that Jack Built'.


header="This is the house that Jack built."
footer="that lay in the house that Jack built."
body=""


lines=( "that belonged to the farmer sowing his corn"
"that kept the rooster that crowed in the morn"
"that woke the priest all shaven and shorn"
"that married the man all tattered and torn"
"that kissed the maiden all forlorn"
"that milked the cow with the crumpled horn"
"that tossed the dog"
"that worried the cat"
"that killed the rat"
"that ate the malt" )


for ((item=0; item<10; item++))
    do
        echo $header
        echo -e $body
        echo $footer
        echo -e "\n"
        body+=${lines[$item]}
        body+="\n"
    done