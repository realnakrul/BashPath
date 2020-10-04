#!/bin/bash
STRING='cn=Lara,dc=example,dc=com'
USER=$(echo $STRING | grep -Po cn=.+?, | cut -f 1 -d , | cut -f 2 -d = | tr [:upper:] [:lower:])
echo $USER
