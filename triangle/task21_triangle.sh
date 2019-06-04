#!/usr/bin/env bash

#Task:
#Determine if a triangle is equilateral, isosceles, or scalene.
# equilateral triangle has all three sides the same length.
#n isosceles triangle has at least two sides the same length. (It is sometimes specified as having exactly two sides the same length,
#but for the purposes of this exercise we'll say at least two.)
#A scalene triangle has all sides of different lengths
#For a shape to be a triangle at all, all sides have to be of length > 0,
#and the sum of the lengths of any two sides must be greater than or equal to the length of the third side.


read x y z

xy=$(echo "$x + $y" | bc)
xz=$(echo "$x + $z" | bc)
yz=$(echo "$z + $y" | bc)
sum1=$(echo "$xy + $xz" | bc)
sum2=$(echo "$xy + $yz" | bc)
sum3=$(echo "$yz + $xz" | bc)

if (( $x == 0 || $y == 0 || $z == 0 )) && (( $sum1 >= $yz || $sum2 >= $xz || $sum3 >= $xy ))
then
    echo "It is not a tringle"
else
    if [[ $x == $y && $x == $z ]]
    then
        echo "The triangle is equilateral"
    elif [[ $x == $y ]] || [[ $x == $z ]] || [[ $y == $z ]]
        then
            echo "The triangle is isosceles"
        else
            echo "The triangle is scalene"
    fi

fi