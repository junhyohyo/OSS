#!/bin/bash
#!/bin/bash

# 전화번호부 파일 경로 설정
PHONEBOOK="phonebook.txt"

# 입력값 검증
if [[ $# -ne 2 ]]; then
    echo "입력값 유효하지 않음. 2개의 인수 사용하세요."
    exit 1
fi

NAME="$1"
PHONE="$2"

# 전화번호 유효성 검증
if [[ ! $PHONE =~ ^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$ ]]; then
    echo "유효하지 않은 전화번호"
    exit 1
fi

# 전화번호부에서 이름 검색
ENTRY=$(grep "^$NAME " "$PHONEBOOK")

if [[ -n $ENTRY ]]; then
    EXISTING_PHONE=$(echo "$ENTRY" | awk '{print $2}')
    if [[ $EXISTING_PHONE == "$PHONE" ]]; then
        echo "이미 있는 전화번호입니다."
        exit 0
    fi
fi

# 지역번호에 따른 지역 설정
AREA_CODE="${PHONE%%-*}"
case $AREA_CODE in
    "02")
        AREA="서울"
        ;;
    "031")
        AREA="경기"
        ;;
    "032")
        AREA="인천"
        ;;
    "051")
        AREA="부산"
        ;;
    "053")
        AREA="대구"
        ;;
    *)
        echo "정의되지 않은 지역번호: $AREA_CODE"
        exit 1
        ;;
esac

# 전화번호부에 이름과 전화번호 추가
echo "$NAME $PHONE $AREA" >> "$PHONEBOOK"
sort -k 1,1 -o "$PHONEBOOK" "$PHONEBOOK"

echo "추가됨 : $NAME $PHONE $AREA"
