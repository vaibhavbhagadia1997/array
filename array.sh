#!/bin/bash -x
MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ];
do
	number[$count%10]=$(( $(( RANDOM%900 ))+100 ))
	let "count += 1"
done

echo "${number[@]}"
