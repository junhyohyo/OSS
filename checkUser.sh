#!/bin/bash


if [ "$#" -ne 1 ]; then
  echo "인수가 하나가 아닙니다."
  exit 1
fi

user=$1

while true
do

  if who | grep -w "$user"
    then
    echo "$user 로그인함!" 
    exit 0
  fi

  sleep 60
done


