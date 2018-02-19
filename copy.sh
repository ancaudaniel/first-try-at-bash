#!/bin/bash


move() {

if [ ! -d "$$2" ]; then

	mkdir -p $2
	cp -r $1 $2

else 
	cp -r $1 $2
fi
}

move $1 $2
