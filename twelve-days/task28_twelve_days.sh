#!/usr/bin/env bash


#Task:
#Output the lyrics to 'The Twelve Days of Christmas'.

ordinals=(first   second third fourth fifth    sixth
          seventh eighth ninth tenth  eleventh twelfth)

gifts=( "A partridge in a pear tree." "Two turtle doves and"
        "Three French hens,"          "Four calling birds,"
        "Five gold rings,"            "Six geese a-laying,"
        "Seven swans a-swimming,"     "Eight maids a-milking,"
        "Nine ladies dancing,"        "Ten lords a-leaping,"
        "Eleven pipers piping,"       "Twelve drummers drumming," )

echo_gifts() {
  local item day=$1
  echo "On the ${ordinals[day]} day of Christmas, my true love sent to me:"
  for (( item=day; item >=0; --item ))
    do
        echo "${gifts[item]}"
    done
  echo
}

for (( day=0; day < 12; ++day ))
    do
    echo_gifts $day
    done