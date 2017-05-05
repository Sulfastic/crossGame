#!/bin/bash

clear

for ((i=1;i<=9;i++)) do
	matrix[$i]="."
done

sym="X"

check () 
{
	if [ ${matrix[$1]} = ${matrix[$2]} ] && [ ${matrix[$2]} = ${matrix[$3]} ] && [ ${matrix[$1]} != "." ] && [ ${matrix[$2]} != "." ] && [ ${matrix[$3]} != "." ]; then
		echo "Won player ${matrix[$1]}"
		exit
	fi
}  

draw ()
{
	for ((i=1;i<=9;i++)) do
		echo -n "| ${matrix[$i]} |"
		if ! ((${i} % 3)); then
		   echo
		fi
	done
	echo
}

checkForWrongMove ()
{
	clear
	if [ ${matrix[${x}]} = "X"  ] || [ ${matrix[${x}]} = "O" ] || [ $x -gt 10 ] || [ $x -lt 0 ]; then
		echo "Wrong move!"
		echo
		compare=1
	else
		compare=0
	fi
}

while true
do
	draw
	
	read x

	checkForWrongMove
	
	if [ ${compare} -eq 1 ]; then
		continue
	fi
	
	matrix[${x}]=$sym

    if [ $sym = "X" ]; then
        sym="O"
    else
        sym="X"
    fi
    
	check 1 2 3
	check 4 5 6
	check 7 8 9
	check 1 2 3
	check 1 5 9
	check 3 5 7
	check 1 4 7
	check 3 6 9

done
