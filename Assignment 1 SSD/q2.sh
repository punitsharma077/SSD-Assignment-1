#!/bin/bash
read string
com=`echo $string | grep -o . | sort | tr -d "\n"`
for com2 in `compgen -c`
do
 com3=`echo $com2 | grep -o . | sort | tr -d "\n"`
 if [ $com3 == $com ]; then
 echo "Yes"
 echo $com2
 exit
 fi
 done
 echo "No"