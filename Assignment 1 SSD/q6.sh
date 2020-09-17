#!/bin/sh
 

res=$1
shift
 for i in "$@"
 do
 	res=`echo "$res^$i"| bc`

 done
 echo $res