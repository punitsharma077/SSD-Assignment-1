#!/bin/bash

#a
mkdir Assignment1
cd Assignment1
#b
touch {lab1,lab2,lab3,lab4,lab5}.txt

#c
find -depth -name "*.txt" -exec sh -c 'f="{}"; mv -- "$f" "${f%.txt}.c"' \;

#d
ls -laShr .

#e
tree -f . -L 2 

#f
find -type f -name "*.txt"

