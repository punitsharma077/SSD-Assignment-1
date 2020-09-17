#!/bin/bash
read op
read j
read res
i=2
while ((i<=j))
do
read num
if [ "$op" = "+" ]
then
res=`awk "BEGIN {print $res+$num}"`
elif [ "$op" = "-" ]
then
res=`awk "BEGIN {print $res-$num}"`
elif [ "$op" = "*" ]
then
res=`awk "BEGIN {print $res*$num}"`
elif [ "$op" = "/" ]
then
res=`awk "BEGIN {print $res/$num}"`
fi
let i++
done
printf %.4f $(echo "$res" | bc -l)
