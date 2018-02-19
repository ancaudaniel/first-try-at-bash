#!/bin/bash

function quit {
exit 0
}

function details {
pwd
echo "$USER"
echo "$HOME"
}

function identitate {
who
}

function shell {
cat /etc/shells
}

function home {

cat /etc/passwd | awk -F : '{print "LoginUser: " $1 "; DefinedUser: " $5 "; HomePath: " $6 }'-P | head -5
}

while true
do
echo "Salutari !
1.Apasati 1 pentru a iesi din script!

2.Apasati 2 pentru a afla detali !

3.Apasati 3 pentru a afla cum sunteti logat!

4.Apasati 4 pentru a afla ce shelluri sunt instalate pe sistem!

5.Apasati 5 pentru a afla numele de login numele definit si a directorului home pentru userii logati pe sistem
"

read variabila

if [[ $variabila -eq 1 ]]; then
	quit
fi

if [[ $variabila -eq 2 ]]; then
	details	
fi

if [[ $variabila -eq 3 ]]; then
           identitate
fi

if [[ $variabila -eq 4 ]]; then
 	shell
fi

if [[ $variabila -eq 5 ]]; then
 	home
fi
done




  
