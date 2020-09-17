#!/bin/bash
read string
p=0
checksum=0
string=$(echo $string | tr -d ' ')
l=$(echo $string | wc -c)-1

if [ ${#string} -le 1 ]; then echo "Invalid" ; exit

fi

i=l-1
while ((i>=0))
do
	num=${string:i:1}
	if [ $p = 0 ]
	then
		checksum=`expr $checksum + $num`
		p=1
	else
		num=`expr $num \* 2`
		if [ $num -gt 9 ]
		then
			num=`expr $num - 9`
		fi
	checksum=`expr $checksum + $num`
	p=0	
	fi
	let i--
done
 checksum="$(($checksum % 10))" # mod 10 the sum to get single digit checksum
 
 if [ $checksum -eq 0 ]; then
                echo "Valid"
        else
                echo "Invalid"
 fi