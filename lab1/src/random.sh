#!/bin/bash
	od -An -td -N1 /dev/random > numbers.txt
    for ((i=0; i < 149; i++))
    do
        od -An -td -N1 /dev/random >> numbers.txt
    done
exit 0
