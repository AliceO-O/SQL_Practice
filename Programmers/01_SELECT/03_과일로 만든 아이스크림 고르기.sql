/* 
[FIRST_HALF] 상반기 주문 정보 테이블

SHIPMENT_ID: 출하 번호
FLAVOR: 맛(PK)
TOTAL_ORDER: 총주문량
 */

/*
[ICECREAM_INFO] 아이스크림 성분 테이블

FLAVOR: 맛(PK)
INGREDIENT_TYPE: 성분 타입
 */

select f.FLAVOR
from FIRST_HALF as f
JOIN ICECREAM_INFO as i
on f.FLAVOR = i.FLAVOR
where f.TOTAL_ORDER > 3000 and i.INGREDIENT_TYPE="fruit_based"
ORDER BY f.TOTAL_ORDER DESC;