#!/bin/bash

month=$1

case $1 in
  jan*|1) month="Jan" ;;
  feb*|2) month="Feb" ;;
  mar*|3) month="Mar" ;;
  apr*|4) month="Apr" ;;
  may|5) month="May" ;;
  jun*|6) month="Jun" ;;
  jul*|7) month="Jul" ;;
  aug*|8) month="Aug" ;;
  sep*|9) month="Sep" ;;
  oct*|10) month="Oct" ;;
  nov*|11) month="Nov" ;;
  dec*|12) month="Dec" ;;
  *) month="Invalid" ;;
esac



year=$3
if (( year % 4 != 0 )); then
  a=0 | echo 윤년이 아닙니다.
elif (( year % 400 == 0 )); then
  a=1 | echo 윤년입니다.
elif (( year % 100 == 0 )); then
  a=0 | echo 윤년이 아닙니다.
else
  a=1 | echo 윤년입니다.
fi



case $month in
  Jan) days=31 ;;
  Feb) if (( $a == 1 )); then echo 29; else echo 28; fi ;;
  Mar) days=31 ;;
  Apr) days=30 ;;
  May) days=31 ;;
  Jun) days=30 ;;
  Jul) days=31 ;;
  Aug) days=31 ;;
  Sep) days=30 ;;
  Oct) days=31 ;;
  Nov) days=30 ;;
  Dec) days=31 ;;
  *) ;;
esac


if [ $# -ne 3 ]; then
  echo "입력값 오류"
  exit 1
fi

day=$2


if [ $month == "Invalid" ]; then
  echo "월 오류 + {$1 $2 $3}는 유효하지 않습니다"
  exit 1
fi


if (( day < 1 || day > days )); then
  echo "일 오류 + {$1 $2 $3}는 유효하지 않습니다"
  exit 1
fi

echo "$month $day $year"
