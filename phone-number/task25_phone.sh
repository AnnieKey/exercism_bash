#!/usr/bin/env bash

#Task:
#Your task is to clean up differently formatted telephone
# numbers by removing punctuation and the country code (1) if present.


number1="+1 (613)-995-0253"
number2="613-995-0253"
number3="1 613 995 0253"
number4="613.995.0253"


number=$number4
new_number=$( echo "$number" | tr -d " +()-." )

initial="$(echo $new_number | head -c 1)"
if [[ $initial == "1" ]]
then
    new_number=${new_number#?};
fi

echo $new_number