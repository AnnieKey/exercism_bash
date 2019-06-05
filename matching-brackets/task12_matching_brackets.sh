#!/usr/bin/env bash

#Task:
#Given a string containing brackets [], braces {}, parentheses (),
# or any combination thereof, verify that any and all pairs are matched and nested correctly.


#set -x
good="{[]{()}}"
good_long="{ here is [a long] { (example) } }"
bad="[{}{})(]"
bad_long="[ ( and {here} {is ) a  }baaad e)(ample ]"
bad_long_nesting="{ well } here is (a try { to do ) it wacky and tack|e }"


string=$good

opening_braces=(\[ \( \{)
ending_braces=(\] \) \})

string=$(awk '$1=$1' FS= OFS=" " <<< "$string" )
check_braces () {
local string="$@"
local fail_counter=0
for brace_type in $(seq 0 2)
do
    result=$( echo "$string" | cut -s -f 2- -d"${opening_braces[$brace_type]}" | rev | cut -s -f 2- -d"${ending_braces[$brace_type]}" | rev)
    #echo "$result"
    if [[ "$result" == "" ]]
    then
        if (( $fail_counter < 2 ))
        then
            (( fail_counter++ ))
        else
            return 1
        fi
    else
        if echo "$result" | grep -E '[][\{\(\}\)]' -c
        then
            return 1
        else
            return 0
        fi
    return $(check_braces "$result")
    fi
done
if (( $fail_counter < 2 ))
then
    return 0
fi
return 1
}


if [ $(check_braces $string) == 0 ]
then
    echo "All brackets are matched"
else
    echo "Brackets are not matched."
fi