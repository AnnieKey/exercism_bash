#!/usr/bin/env bash

#Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.
#There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat.
# One grain on the first square of a chess board. Two grains on the next. Four on the third, and so on.
#There are 64 squares on a chessboard.
#Write code that shows:
#    how many grains were on each square, and
#    the total number of grains


#set -x
amount_on_square=0
for ((item=0; item<64; item++))
do
    amount_on_square=$(echo "2^$item" | bc)
    echo $amount_on_square
done

general_amount=$(echo "2^64-1" | bc)
echo "General amount:"
echo $general_amount
