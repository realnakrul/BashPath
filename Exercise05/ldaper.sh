#!/bin/bash

rm users
for i in $(cat ldapusers)
do	
	USER=$(echo $i | grep -Po cn=.+?, | cut -f 1 -d , | cut -f 2 -d = | tr [:upper:] [:lower:])
	echo "$i => $USER"
	echo $USER >> users
done
for i in $(cat users)
do
	echo useadd $i
done
