#!/bin/bash
#!/bin/bash

# 전화번호부 파일 경로 설정
PHONEBOOK="phonebook.txt"

# 입력값 검증
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 NAME PHONE"
    exit 1
fi

NAME="$1"
PHONE="$2"

# 전화번호 유효성 검증
if [[ ! $PHONE =~ ^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$ ]]; then
    echo "Invalid phone number format. Use XXX-XXXX-XXXX."
    exit 1
fi

# 전화번호부에서 이름 검색
ENTRY=$(grep "^$NAME " "$PHONEBOOK")

if [[ -n $ENTRY ]]; then
    EXISTING_PHONE=$(echo "$ENTRY" | awk '{print $2}')
    if [[ $EXISTING_PHONE == "$PHONE" ]]; then
        echo "The phone number for $NAME is already up to date."
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
        echo "Unknown area code: $AREA_CODE"
        exit 1
        ;;
esac

# 전화번호부에 이름과 전화번호 추가
echo "$NAME $PHONE $AREA" >> "$PHONEBOOK"
sort -k 1,1 -o "$PHONEBOOK" "$PHONEBOOK"

echo "Added/updated entry: $NAME $PHONE $AREA"
