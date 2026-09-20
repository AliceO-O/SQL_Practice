/*
[FIRST_HALF]: 상반기 주문 정보 테이블

SHIPMENT_ID: 출하 번호
FLAVOR: 맛
TOTAL_ORDER: 상반기 아이스크림 총주문량
*/

select FLAVOR
from FIRST_HALF 
ORDER BY TOTAL_ORDER desc, SHIPMENT_ID asc;