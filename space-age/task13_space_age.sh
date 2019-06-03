#!/usr/bin/env bash

#Task:
#Given an age in seconds, calculate how old someone would be on:
#
#    Earth: orbital period 365.25 Earth days, or 31557600 seconds
#    Mercury: orbital period 0.2408467 Earth years
#    Venus: orbital period 0.61519726 Earth years
#    Mars: orbital period 1.8808158 Earth years
#    Jupiter: orbital period 11.862615 Earth years
#    Saturn: orbital period 29.447498 Earth years
#    Uranus: orbital period 84.016846 Earth years
#    Neptune: orbital period 164.79132 Earth years
#
#So if you were told someone were 1,000,000,000 seconds old,
# you should be able to say that they're 31.69 Earth-years old.


#set -x
earth_year=31557600
mercury_year=$(echo "res=$earth_year * 0.2408467; scale=0; res/1" | bc)
venus_year=$( echo "res=$earth_year * 0.61519726; scale=0; res/1" | bc )
mars_year=$( echo "res=$earth_year * 1.8808158; scale=0; res/1" | bc )
jupiter_year=$( echo "res=$earth_year * 11.862615; scale=0; res/1" | bc )
saturn_year=$( echo "res=$earth_year * 29.447498; scale=0; res/1" | bc )
uranos_year=$( echo "res=$earth_year * 84.016846; scale=0; res/1" | bc )
neptune_year=$( echo "res=$earth_year * 164.79132; scale=0; res/1" | bc )



calculate_age () {
    age=$1
    planet_year=$2
    int=$(echo "$age / $planet_year" | bc)
    drob=$(echo "$age % $planet_year" | bc)
    tmp=$(expr $age \* 100 / $planet_year |sed 's/..$/.&/')
    echo "$tmp years old"
}


echo "Enter your age in seconds: "
read second_age
echo "In what system do you want to convert (enter the name of planet, except Pluto)? "
read planet_name

case $planet_name in
    "Earth")
        calculate_age $second_age $earth_year
        ;;
        "Mercury")
        calculate_age $second_age $mercury_year
        ;;
        "Venus")
        calculate_age $second_age $venus_year
        ;;
        "Mars")
        calculate_age $second_age $mars_year
        ;;
        "Jupiter")
        calculate_age $second_age $jupiter_year
        ;;
        "Saturn")
        calculate_age $second_age $saturn_year
        ;;
        "Uranos")
        calculate_age $second_age $uranos_year
        ;;
        "Neptune")
        calculate_age $second_age $neptune_year
        ;;
esac