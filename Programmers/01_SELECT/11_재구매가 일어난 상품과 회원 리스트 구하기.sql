/* 
[ONLINE_SALE] 쇼핑몰의 온라인 상품 판매 정보 테이블

ONLINE_SALE_ID 온라인 상품 판매 ID
USER_ID 회원 ID
PRODUCT_ID 상품 ID
SALES_AMOUNT 판매량
SALES_DATE 판매일

동일한 날짜, 회원 ID, 상품 ID 조합에 대해서는 하나의 판매 데이터만 존재
 */

select USER_ID, PRODUCT_ID
from ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING count(*) >= 2
ORDER BY USER_ID ASC, PRODUCT_ID DESC;

/* 
중복 제거 → DISTINCT
중복된 것만 찾기 → GROUP BY + HAVING COUNT(*) >= 2
 */
