#!/usr/bin/env bash

#Task:
#Diffie-Hellman key exchange.
#Step 1: Alice and Bob get public numbers P = 23, G = 9
#Step 2: Alice selected a private key a = 4 and
#        Bob selected a private key b = 3
#Step 3: Alice and Bob compute public values
#Alice:    x =(9^4 mod 23) = (6561 mod 23) = 6
#        Bob:    y = (9^3 mod 23) = (729 mod 23)  = 16
#Step 4: Alice and Bob exchange public numbers
#Step 5: Alice receives public key y =16 and
#        Bob receives public key x = 6
#Step 6: Alice and Bob compute symmetric keys
#        Alice:  ka = y^a mod p = 65536 mod 23 = 9
#        Bob:    kb = x^b mod p = 216 mod 23 = 9
#Step 7: 9 is the shared secret.

#set -x
min=1
max=30
power () {
    a=$1
    b=$2
    p=$3
    if [[ b==1 ]]
    then
        echo $a
    else
        echo "($a**$b)%$p" | bc
    fi
}

check_prime () {
    number=$1
    i=2
    f=0
    while test $i -le $(expr $number / 2)
        do
            if test $(expr $number % $i) -eq 0
            then
                f=1
            fi
            i=$(expr $i + 1)
        done
    if test $f -eq 1
    then
        echo "Not Prime"
    else
        echo "Prime"
    fi
}



main () {
    while true;
        do
            p=$( echo $(($min + RANDOM % $max)) )
            g=$( echo $(($min + RANDOM % $max)) )
            if [[ $(check_prime "$p") == "Prime" ]] && [[ $(check_prime "$g") == "Prime" ]]
            then
                break
            fi
        done
    while true;
        do
            a=$( echo $(($min + RANDOM % $max)) )
            b=$( echo $(($min + RANDOM % $max)) )
            if [[ $a>1 && $a<$p && $b>1 && $b<$p ]]
            then
                break
            fi
        done
    x=$( power $g $a $p)
    y=$( power $g $b $p)
    ka=$( power $y $a $p)
    kb=$( power $x $b $p)
    echo "Rezult 1: $ka"
    echo "Rezult 2: $kb"
}


main