#!/bin/bash

echo "Hello world"

#costam

#zmienna="siema"

#echo $zmienna

#zmiennaDruga=`ls`

#echo $zmiennaDruga

echo "Podaj liczbę"

read zmienna

if [ "$zmienna" -lt 20 ]; then
    echo "zmienna mniejsza"
else
    echo "zmienna większa"
fi

echo

for x in {1..10}
do
   echo "${x}"
done

echo

y=0
while [ "$y" -lt 5 ]
do
    echo "${y}"
    y=$[$y+1]
done
