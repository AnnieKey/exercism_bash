#!/usr/bin/env bash


#Task:
#Recite the lyrics to that beloved classic,
#that field-trip favorite: 99 Bottles of Beer on the Wall.
#----
#99 bottles of beer on the wall, 99 bottles of beer.
#Take one down and pass it around, 98 bottles of beer on the wall.
#
#98 bottles of beer on the wall, 98 bottles of beer.
#Take one down and pass it around, 97 bottles of beer on the wall.




number_of_iterations=10

for (( item=number_of_iterations; item>0; item-- ))
    do
        second_item=$( echo "$item-1" | bc )
        if [[ $item == 1 ]]
        then
            echo "$item bottle of beer on the wall, $item bottle of beer."
            echo "Take it down and pass it around, no more bottles of beer on the wall."
        elif [[ $item == 2 ]]
        then
            echo "$item bottles of beer on the wall, $item bottles of beer."
            echo "Take one down and pass it around, 1 bottle of beer on the wall."
        else
            echo "$item bottles of beer on the wall, $item bottles of beer."
            echo "Take one down and pass it around, $second_item bottles of beer on the wall. "
        fi
    done
echo "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more,
$number_of_iterations bottles of beer on the wall."