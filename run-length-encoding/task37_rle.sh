#!/usr/bin/env bash


#Task:
#Run-length encoding (RLE) is a simple form of data compression, where runs
# (consecutive data elements) are replaced by just one data value and count.
#"WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"  ->  "12WB12W3B24WB"



string="WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"

echo "$string" | awk 'BEGIN {
    FS=""
    }
    /^[^0-9]+$/ {
        cp=$1; j=0
        for(item=1; item <= NF; item++) {
            if ( $item == cp ) {
                j++;
            } else {
                printf("%d%c", j, cp)
                j = 1
                }
            cp = $item
        }
        printf("%d%c", j, cp)
    }'