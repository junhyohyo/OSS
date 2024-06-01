#!/bin/bash

count=12 

if [ $count -gt 0 ] && [ $count -lt 10 ]
then
	echo 0~10
	exit 0
	
else 
	exit 1
fi
