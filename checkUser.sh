#!/bin/bash



# 인수가 하나인지 확인합니다.
if [ "$#" -ne 1 ]; then
  echo "인수가 하나가 아닙니다."
  exit 1
fi

user=$1

# 무한 루프 시작
while true
do

  # 로그인한 유저 확인
  if who | grep -w "$user"
    then
    echo "$user 로그인함!" 
    exit 0
  fi

  # 60초 대기
  sleep 60
done


