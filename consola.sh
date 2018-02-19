#!/bin/bash

echo  "Apasa 1 pentru script de copiere"
echo  "Apasa 2 pentru afisare numar de NICs"
echo  "Apasa 3 pentru afisare size fisier"

read optiune;

 	case $optiune in
		1) ./copy.sh;;
		2)

 ./nic_count.sh;;
		3)
echo "introduceti numele unui fisier"
read fisier
 ./size.sh $fisier ;;
	esac
