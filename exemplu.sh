#!/bin/bash

function exemplu1 {
	
	
	rez=`expr $1 + $2`
	echo $rez
}

read var1
read var2

exemplu1 $var1 $var2
echo "primul argument este $1"
echo " al doilea argument este $2"
echo "al treilea argument este $3"
