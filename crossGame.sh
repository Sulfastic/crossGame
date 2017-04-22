#!/bin/bash

delcare -A matrix

for ((i=1;i<=9;i++)) do
        matrix[$i]="s"
done

for ((i=1;i<=9;i++)) do
        echo -n "| ${matrix[$i]} |"
        if ! ((${i} % 3)); then
           echo
        fi
   done

sym="X"

for x in {0..10} 
do
   read x

   #if [ ${matrix[${x}]} != "X"  ] && [ ${matrix[${x}]} != "O" ] && [ $x -lt 10 ] && [ $x -gt 0 ]  TODO***************************

   matrix[${x}]=$sym

   for ((i=1;i<=9;i++)) do
        echo -n "| ${matrix[$i]} |"
        if ! ((${i} % 3)); then
           echo
        fi
   done
   echo

    if [ $sym = "X" ]; then
        sym="O"
    else
        sym="X"
    fi

    if [ ${matrix[1]} = ${matrix[2]} ] && [ ${matrix[2]} = ${matrix[3]} ] && [ ${matrix[1]} != "s" ] && [ ${matrix[2]} != "s" ] && [ ${matrix[3]} != "s" ]; then
        echo "Won ${matrix[1]}"
        exit
    fi

    if [ ${matrix[4]} = ${matrix[5]} ] && [ ${matrix[5]} = ${matrix[6]} ] && [ ${matrix[4]} != "s" ] && [ ${matrix[5]} != "s" ] && [ ${matrix[6]} != "s" ]; then
        echo "Won ${matrix[4]} player"
    fi

    if [ ${matrix[7]} = ${matrix[8]} ] && [ ${matrix[8]} = ${matrix[9]} ] && [ ${matrix[7]} != "s" ] && [ ${matrix[8]} != "s" ] && [ ${matrix[9]} != "s" ]; then
        echo "Won ${matrix[7]} player"
    fi

    if [ ${matrix[1]} = ${matrix[5]} ] && [ ${matrix[5]} = ${matrix[9]} ] && [ ${matrix[1]} != "s" ] && [ ${matrix[5]} != "s" ] && [ ${matrix[9]} != "s" ]; then
        echo "Won ${matrix[1]} player"
    fi

    if [ ${matrix[3]} = ${matrix[5]} ] && [ ${matrix[5]} = ${matrix[7]} ] && [ ${matrix[3]} != "s" ] && [ ${matrix[5]} != "s" ] && [ ${matrix[7]} != "s" ]; then
        echo "Won ${matrix[3]} player"
    fi

    if [ ${matrix[1]} = ${matrix[4]} ] && [ ${matrix[4]} = ${matrix[7]} ] && [ ${matrix[1]} != "s" ] && [ ${matrix[4]} != "s" ] && [ ${matrix[7]} != "s" ]; then
        echo "Won ${matrix[1]} player"
    fi

    if [ ${matrix[2]} = ${matrix[5]} ] && [ ${matrix[5]} = ${matrix[8]} ] && [ ${matrix[2]} != "s" ] && [ ${matrix[5]} != "s" ] && [ ${matrix[8]} != "s" ]; then
        echo "Won ${matrix[2]} player"
    fi

    if [ ${matrix[3]} = ${matrix[6]} ] && [ ${matrix[6]} = ${matrix[9]} ] && [ ${matrix[3]} != "s" ] && [ ${matrix[6]} != "s" ] && [ ${matrix[9]} != "s" ]; then
        echo "Won ${matrix[3]} player"
    fi

done
